/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Halobot
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-0ubuntu0.24.04.2

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
-- Table structure for table `alamat_pasien`
--

DROP TABLE IF EXISTS `alamat_pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
('agustinamutia@example.net','Aceh','Tomohon','Jl. Dipenogoro No. 23'),
('agustinamutia@example.net','Papua','Bandar Lampung','Jl. Yos Sudarso No. 1'),
('agustinamutia@example.net','Papua Barat','Cilegon','Gang Kapten Muslihat No. 19'),
('agustinamutia@example.net','Riau','Tebingtinggi','Jl. Lembong No. 5'),
('agustinamutia@example.net','Sumatera Utara','Yogyakarta','Jl. Moch. Toha No. 38'),
('almira32@example.com','DI Yogyakarta','Denpasar','Jalan Surapati No. 71'),
('almira32@example.com','Kalimantan Selatan','Kendari','Gg. Raya Setiabudhi No. 46'),
('bdamanik@example.com','Banten','Tomohon','Gang Sadang Serang No. 1'),
('budimanlabuh@example.org','Banten','Bukittinggi','Gang Jend. Sudirman No. 329'),
('budimanlabuh@example.org','Kepulauan Riau','Parepare','Jl. Raya Setiabudhi No. 11'),
('criyanti@example.com','Lampung','Tebingtinggi','Gg. Cikutra Barat No. 269'),
('criyanti@example.com','Sulawesi Tengah','Bima','Jl. Kutai No. 2'),
('dadi72@example.net','Bali','Tasikmalaya','Gg. M.H Thamrin No. 623'),
('dadi72@example.net','DKI Jakarta','Bukittinggi','Gang Dipenogoro No. 1'),
('dadi72@example.net','Kalimantan Barat','Kota Administrasi Jakarta Utara','Jl. Ahmad Yani No. 6'),
('dadi72@example.net','Sumatera Selatan','Padangpanjang','Jalan Cihampelas No. 8'),
('edisonmandala@example.org','Maluku Utara','Binjai','Gang Gedebage Selatan No. 85'),
('edisonmandala@example.org','Papua Barat','Sawahlunto','Gang PHH. Mustofa No. 5'),
('edisonmandala@example.org','Sulawesi Tengah','Pontianak','Gg. Pacuan Kuda No. 6'),
('eva82@example.net','Jambi','Singkawang','Jl. Rumah Sakit No. 4'),
('eva82@example.net','Jawa Barat','Malang','Jl. Sentot Alibasa No. 53'),
('eva82@example.net','Sulawesi Barat','Semarang','Gg. Waringin No. 7'),
('eva82@example.net','Sulawesi Barat','Sukabumi','Jalan Veteran No. 02'),
('eva82@example.net','Sumatera Selatan','Tual','Jalan Surapati No. 638'),
('flaksmiwati@example.org','Sumatera Barat','Batu','Jalan Kutai No. 75'),
('flaksmiwati@example.org','Sumatera Selatan','Banjarmasin','Gang Cikutra Timur No. 964'),
('gatotmegantara@example.com','Kalimantan Barat','Palu','Jl. Jayawijaya No. 36'),
('gatotmegantara@example.com','Kepulauan Bangka Belitung','Kotamobagu','Jalan HOS. Cokroaminoto No. 221'),
('gatotmegantara@example.com','Nusa Tenggara Barat','Bitung','Jalan HOS. Cokroaminoto No. 796'),
('gilanghartati@example.net','Kalimantan Timur','Pasuruan','Jalan Yos Sudarso No. 195'),
('gsitompul@example.org','Bengkulu','Palu','Gang Cihampelas No. 9'),
('gsitompul@example.org','DKI Jakarta','Kota Administrasi Jakarta Utara','Jalan Cikapayang No. 0'),
('gsitompul@example.org','Jawa Tengah','Tual','Gang Veteran No. 696'),
('gsitompul@example.org','Jawa Timur','Tangerang','Gg. Ir. H. Djuanda No. 635'),
('gsitompul@example.org','Kepulauan Bangka Belitung','Cirebon','Jalan Kendalsari No. 491'),
('hamzahnurdiyanti@example.com','Kalimantan Timur','Tebingtinggi','Jl. Kendalsari No. 870'),
('irmahasanah@example.org','Nusa Tenggara Barat','Bima','Gg. Otto Iskandardinata No. 92'),
('kawaca68@example.org','Sulawesi Tengah','Pariaman','Jl. Merdeka No. 72'),
('kawaca68@example.org','Sulawesi Tengah','Tebingtinggi','Gg. Ahmad Dahlan No. 804'),
('kawacaardianto@example.org','Aceh','Batu','Jalan Sadang Serang No. 9'),
('kawacaardianto@example.org','Aceh','Bima','Gang Medokan Ayu No. 23'),
('kawacaardianto@example.org','Kepulauan Bangka Belitung','Yogyakarta','Gang Abdul Muis No. 1'),
('kembasinaga@example.com','Kalimantan Barat','Surakarta','Gg. Cikapayang No. 77'),
('kembasinaga@example.com','Nusa Tenggara Barat','Pekalongan','Gg. Rajiman No. 6'),
('keneshandayani@example.org','Maluku Utara','Banjarbaru','Jl. Merdeka No. 273'),
('koko20@example.org','Aceh','Mataram','Jalan Cempaka No. 902'),
('koko20@example.org','DKI Jakarta','Padangpanjang','Gang Cihampelas No. 22'),
('koko20@example.org','Kalimantan Utara','Cirebon','Gg. Moch. Ramdan No. 90'),
('marpaunggara@example.com','Jawa Tengah','Lhokseumawe','Jalan Ronggowarsito No. 41'),
('marpaunggara@example.com','Kalimantan Selatan','Kotamobagu','Jalan Jayawijaya No. 54'),
('marpaunggara@example.com','Lampung','Blitar','Gg. Raya Setiabudhi No. 815'),
('marpaunggara@example.com','Sulawesi Utara','Binjai','Jalan Jamika No. 124'),
('maryatiprayitna@example.com','Aceh','Bau-Bau','Jl. Kutai No. 613'),
('maulanayusuf@example.com','Kepulauan Riau','Kota Administrasi Jakarta Pusat','Jalan M.H Thamrin No. 220'),
('maulanayusuf@example.com','Sumatera Barat','Ambon','Jl. Kiaracondong No. 095'),
('maulanayusuf@example.com','Sumatera Barat','Solok','Gg. Ciumbuleuit No. 466'),
('nfarida@example.com','Jawa Barat','Medan','Jl. Yos Sudarso No. 1'),
('novitasarijono@example.com','Kalimantan Barat','Metro','Gg. Raya Setiabudhi No. 754'),
('nurdiyantijumadi@example.net','Jawa Barat','Tual','Jalan Dipenogoro No. 8'),
('nurdiyantijumadi@example.net','Kalimantan Selatan','Palopo','Jalan Tubagus Ismail No. 52'),
('ogunarto@example.org','Gorontalo','Solok','Gang K.H. Wahid Hasyim No. 6'),
('oliva63@example.org','Maluku','Jambi','Gg. Monginsidi No. 1'),
('oliva63@example.org','Papua Barat','Depok','Jl. Kebonjati No. 6'),
('oliva63@example.org','Sumatera Selatan','Batu','Gg. Rumah Sakit No. 564'),
('saifulsirait@example.com','Maluku','Langsa','Jl. Pasteur No. 265'),
('saifulsirait@example.com','Sulawesi Tengah','Manado','Gang Rungkut Industri No. 5'),
('saifulsirait@example.com','Sumatera Barat','Surakarta','Gg. S. Parman No. 196'),
('suryonorangga@example.org','Jawa Timur','Sabang','Gg. Otto Iskandardinata No. 817'),
('suryonorangga@example.org','Kalimantan Selatan','Padangpanjang','Gg. Otto Iskandardinata No. 13'),
('suryonorangga@example.org','Kepulauan Riau','Gorontalo','Jalan R.E Martadinata No. 0'),
('suryonorangga@example.org','Papua','Semarang','Gang R.E Martadinata No. 9'),
('suryonoyuliana@example.org','Kalimantan Tengah','Tomohon','Jl. KH Amin Jasuta No. 7'),
('suryonoyuliana@example.org','Lampung','Kota Administrasi Jakarta Utara','Gg. Pasteur No. 7'),
('suryonoyuliana@example.org','Maluku Utara','Balikpapan','Jl. Kendalsari No. 415'),
('tomisitompul@example.com','Sulawesi Utara','Tomohon','Gg. H.J Maemunah No. 526'),
('upuspasari@example.net','Bengkulu','Cirebon','Jalan Raya Ujungberung No. 1'),
('upuspasari@example.net','Jawa Timur','Cimahi','Gang Moch. Toha No. 4'),
('upuspasari@example.net','Kalimantan Timur','Bima','Jalan Joyoboyo No. 74'),
('upuspasari@example.net','Kepulauan Bangka Belitung','Palangkaraya','Gang Astana Anyar No. 647'),
('vinomulyani@example.net','Kalimantan Tengah','Pangkalpinang','Gang BKR No. 64'),
('vinomulyani@example.net','Maluku Utara','Sabang','Jalan Dr. Djunjunan No. 64'),
('vinomulyani@example.net','Nusa Tenggara Barat','Batu','Jl. Tebet Barat Dalam No. 786'),
('virman47@example.com','DKI Jakarta','Payakumbuh','Jalan Erlangga No. 064'),
('virman47@example.com','DKI Jakarta','Solok','Gg. Astana Anyar No. 8'),
('virman47@example.com','Sulawesi Barat','Sorong','Jalan Kutai No. 584'),
('virman47@example.com','Sumatera Utara','Cilegon','Gang Laswi No. 815'),
('wawan47@example.com','Kalimantan Utara','Blitar','Jl. Dr. Djunjunan No. 031'),
('wibisonoembuh@example.com','Gorontalo','Pekalongan','Jl. Pasteur No. 853'),
('wibisonoembuh@example.com','Kalimantan Barat','Kotamobagu','Jl. Kiaracondong No. 0'),
('wibisonoembuh@example.com','Kalimantan Timur','Denpasar','Jalan Gardujati No. 68'),
('wibisonoembuh@example.com','Nusa Tenggara Barat','Semarang','Jl. Jend. A. Yani No. 5'),
('widiastutihalima@example.net','Kalimantan Utara','Cimahi','Jl. Laswi No. 37'),
('winarnobahuwirya@example.net','Kalimantan Barat','Magelang','Jl. Pelajar Pejuang No. 448'),
('wirdarajata@example.com','Kalimantan Barat','Probolinggo','Gang Cempaka No. 085'),
('wirdarajata@example.com','Sulawesi Utara','Cimahi','Jl. Pasir Koja No. 8'),
('wirdarajata@example.com','Sumatera Utara','Sibolga','Jl. Ronggowarsito No. 385'),
('yardianto@example.net','Maluku Utara','Sawahlunto','Jalan Rungkut Industri No. 166'),
('yardianto@example.net','Sumatera Utara','Payakumbuh','Jl. Monginsidi No. 722'),
('zalindra43@example.org','DKI Jakarta','Payakumbuh','Jl. Kapten Muslihat No. 11'),
('zalindra43@example.org','Kalimantan Tengah','Prabumulih','Jl. Sadang Serang No. 4');
/*!40000 ALTER TABLE `alamat_pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departemen`
--

DROP TABLE IF EXISTS `departemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `departemen` (
  `nama_departemen` varchar(255) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  `gedung` varchar(255) NOT NULL,
  PRIMARY KEY (`nama_departemen`,`id_rumah_sakit`),
  KEY `id_rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departemen`
--

LOCK TABLES `departemen` WRITE;
/*!40000 ALTER TABLE `departemen` DISABLE KEYS */;
INSERT INTO `departemen` VALUES
('Anak',179,'Gedung Utama'),
('Anak',784,'Gedung Utama'),
('Anak',930,'Gedung Timur'),
('Bedah',179,'Gedung C'),
('Bedah',391,'Gedung Timur'),
('Bedah',464,'Gedung Barat'),
('Bedah',592,'Gedung Selatan'),
('Bedah',987,'Gedung Barat'),
('Kardiologi',120,'Gedung B'),
('Kardiologi',179,'Gedung Barat'),
('Kardiologi',188,'Gedung Paviliun'),
('Kardiologi',784,'Gedung Paviliun'),
('Kardiologi',858,'Gedung Barat'),
('Kardiologi',870,'Gedung Timur'),
('Kardiologi',930,'Gedung Paviliun'),
('Kulit',54,'Gedung Utama'),
('Kulit',179,'Gedung Paviliun'),
('Kulit',188,'Gedung Utama'),
('Kulit',391,'Gedung Paviliun'),
('Kulit',630,'Gedung Barat'),
('Kulit',987,'Gedung Timur'),
('Mata',592,'Gedung Utama'),
('Mata',653,'Gedung Utama'),
('Mata',804,'Gedung A'),
('Mata',858,'Gedung A'),
('Neurologi',784,'Gedung A'),
('Ortopedi',555,'Gedung C'),
('Ortopedi',592,'Gedung Selatan'),
('Ortopedi',858,'Gedung B'),
('Ortopedi',987,'Gedung C'),
('Paru',120,'Gedung C'),
('Paru',555,'Gedung Paviliun'),
('Paru',592,'Gedung C'),
('Paru',705,'Gedung Utama'),
('Psikiatri',653,'Gedung Timur'),
('Psikiatri',774,'Gedung Selatan'),
('Psikiatri',784,'Gedung A'),
('Psikiatri',870,'Gedung Barat'),
('THT',120,'Gedung A'),
('THT',555,'Gedung Paviliun'),
('THT',784,'Gedung Timur'),
('THT',804,'Gedung Barat'),
('THT',987,'Gedung Paviliun'),
('Umum',188,'Gedung C'),
('Umum',194,'Gedung Paviliun'),
('Umum',464,'Gedung C'),
('Umum',630,'Gedung Selatan'),
('Umum',653,'Gedung Utama'),
('Umum',705,'Gedung Selatan'),
('Umum',930,'Gedung B');
/*!40000 ALTER TABLE `departemen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `janji_temu`
--

DROP TABLE IF EXISTS `janji_temu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `janji_temu` (
  `id_janji_temu` int(11) NOT NULL AUTO_INCREMENT,
  `id_rumah_sakit` int(11) NOT NULL,
  `waktu_pelaksanaan` datetime NOT NULL,
  `alasan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_janji_temu`,`id_rumah_sakit`),
  KEY `janji_temu_ibfk_1` (`id_rumah_sakit`),
  CONSTRAINT `janji_temu_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `janji_temu`
--

LOCK TABLES `janji_temu` WRITE;
/*!40000 ALTER TABLE `janji_temu` DISABLE KEYS */;
INSERT INTO `janji_temu` VALUES
(101,54,'2025-05-27 07:14:21','Beatae soluta tenetur minima vitae assumenda unde aliquid soluta numquam quas sit aliquid ipsum dolores.'),
(102,987,'2025-05-06 18:44:09','Sit quasi ad maxime eaque perspiciatis autem nulla similique pariatur assumenda.'),
(103,54,'2025-06-15 20:14:25','Libero recusandae labore.'),
(104,120,'2025-06-04 21:26:22','Porro harum repudiandae excepturi qui facere id mollitia repellat beatae earum ab.'),
(105,179,'2025-06-10 04:44:57','Consequuntur maxime ab occaecati corporis est explicabo earum quas.'),
(106,391,'2025-05-08 12:17:56','Tempora sequi quas itaque adipisci voluptatibus nisi.'),
(107,784,'2025-06-22 15:53:07','Error dolorum dignissimos vitae cum vel labore quidem eveniet aut numquam in sint vitae molestias corrupti.'),
(108,188,'2025-05-10 11:07:25','Odit magni fuga aperiam nobis.'),
(109,705,'2025-05-17 23:37:30','Ratione nulla rerum autem perspiciatis deleniti deserunt minima voluptatum nobis harum sequi sunt ipsa.'),
(110,653,'2025-05-20 13:18:09','Sint dolorem placeat accusantium nostrum laudantium aut eum exercitationem.'),
(111,592,'2025-05-24 12:53:33','Accusamus rem fuga aspernatur aliquam error distinctio aliquid aliquid laborum porro tenetur veritatis quasi repellat ex eum.'),
(112,188,'2025-05-22 11:55:23','Nobis accusantium quis recusandae eligendi earum alias quam consectetur.'),
(113,391,'2025-06-02 14:46:51','Provident dignissimos corporis omnis exercitationem soluta.'),
(114,930,'2025-06-28 23:55:17','Nostrum hic perferendis quis repellendus quos magnam accusantium distinctio maxime quos laudantium eaque animi aperiam tempore.'),
(115,774,'2025-05-19 07:33:25','Error sapiente voluptate explicabo nostrum nobis facere rerum itaque nihil.'),
(116,555,'2025-06-08 21:38:07','Laborum ratione numquam atque itaque laboriosam a nisi alias aliquid occaecati magni architecto saepe quis voluptates.'),
(117,120,'2025-05-30 21:45:33','Corrupti ea nobis exercitationem aliquid vel doloremque.'),
(118,630,'2025-06-13 23:13:26','Sit corrupti excepturi reiciendis magni odit aut sed dolore dolorum libero nesciunt nobis aspernatur amet nulla delectus facilis.'),
(119,54,'2025-05-02 06:40:23','Asperiores excepturi cupiditate facere.'),
(120,754,'2025-05-30 09:30:03','Tempora voluptatem eaque perspiciatis.'),
(121,754,'2025-05-29 17:05:39','At reiciendis ea labore blanditiis exercitationem inventore saepe eveniet sit hic.'),
(122,870,'2025-05-13 14:23:17','Consequatur perspiciatis magnam molestiae similique nihil mollitia molestiae iure facere laudantium sint qui similique enim cum laborum vero porro.'),
(123,870,'2025-05-07 01:54:47','Eveniet maiores dolores rem porro commodi.'),
(124,858,'2025-06-05 09:49:52','Sit illum dolorem repellat incidunt nulla aperiam commodi veniam.'),
(125,754,'2025-06-16 08:28:31','Autem consequuntur alias.'),
(126,194,'2025-06-03 04:23:01','Deleniti suscipit possimus accusantium temporibus saepe.'),
(127,653,'2025-05-29 02:32:32','Atque ad tenetur cum modi sint nulla dolorum ratione quod illum ratione.'),
(128,188,'2025-05-17 20:53:20','Impedit necessitatibus numquam aspernatur placeat odio.'),
(129,592,'2025-05-25 21:02:15','Eveniet officiis dicta suscipit architecto aspernatur repudiandae.'),
(130,391,'2025-06-21 06:57:42','Dolore magnam cumque cumque quaerat aspernatur tempore nostrum vitae quidem quisquam alias repellendus.'),
(131,120,'2025-05-07 06:38:51','Harum error vitae iure qui aut molestias ea molestias.'),
(132,391,'2025-05-13 11:16:07','Error aliquam eum similique odit qui aliquam totam.'),
(133,120,'2025-05-17 17:39:10','Quo ratione modi pariatur laborum deleniti non velit ducimus nisi non labore.'),
(134,54,'2025-05-12 02:24:21','Cumque quam doloremque molestiae.'),
(135,754,'2025-06-12 23:56:16','Eius dolorem possimus aliquam earum quos saepe commodi ipsam illo dolorem commodi.'),
(136,858,'2025-06-07 16:45:51','Aut beatae voluptate maiores impedit quaerat aliquam numquam itaque incidunt enim fugiat veniam ipsa unde fuga impedit temporibus architecto architecto vero.'),
(137,391,'2025-06-12 11:04:48','Soluta tenetur quasi beatae error asperiores.'),
(138,858,'2025-06-15 16:53:58','Ipsa distinctio similique beatae aperiam.'),
(139,858,'2025-06-04 00:24:34','Doloribus soluta incidunt ex porro nisi unde nam ea.'),
(140,555,'2025-06-15 16:21:15','Maxime quasi sed doloribus voluptatibus blanditiis eligendi quod placeat.'),
(141,188,'2025-05-05 07:33:20','Sit aut tenetur atque voluptates aliquam.'),
(142,555,'2025-06-04 01:30:16','Mollitia quisquam praesentium vero blanditiis.'),
(143,630,'2025-05-24 12:06:20','Perferendis atque corporis sapiente ipsum hic repellat aperiam reiciendis ea accusamus accusantium explicabo suscipit cupiditate vitae praesentium itaque qui.'),
(144,630,'2025-05-21 07:15:31','Eos quidem atque quaerat quaerat minus ea alias commodi aspernatur aliquam praesentium illum architecto esse provident blanditiis doloremque nisi itaque.'),
(145,179,'2025-06-02 05:34:24','Iste iure maxime recusandae error culpa debitis optio nam nam.'),
(146,987,'2025-05-25 17:06:33','Labore reprehenderit iure similique aliquam qui tempore unde neque neque.'),
(147,858,'2025-05-20 17:13:18','Asperiores ipsam quis odit dolores aperiam explicabo nulla nesciunt explicabo similique adipisci qui veniam.'),
(148,930,'2025-05-04 18:13:07','Hic rem blanditiis aliquam a occaecati.'),
(149,705,'2025-06-14 19:43:02','Vel voluptatem nulla doloribus optio beatae assumenda adipisci quas eaque deleniti sit odit.'),
(150,54,'2025-06-26 00:44:51','Id magni hic veritatis at aspernatur vitae repellendus voluptas quaerat quaerat assumenda reiciendis nostrum reprehenderit.');
/*!40000 ALTER TABLE `janji_temu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_medis`
--

DROP TABLE IF EXISTS `layanan_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `layanan_medis` (
  `id_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_rumah_sakit` int(11) NOT NULL,
  `nama_layanan` enum('vaksinasi','fisioterapi','laboratorium','radiologi','konsultasi','rehabilitasi') NOT NULL,
  `biaya` int(11) NOT NULL,
  PRIMARY KEY (`id_layanan`),
  KEY `layanan_medis_ibfk_1` (`id_rumah_sakit`),
  CONSTRAINT `layanan_medis_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`),
  CONSTRAINT `total_biaya_check` CHECK (`biaya` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_medis`
--

LOCK TABLES `layanan_medis` WRITE;
/*!40000 ALTER TABLE `layanan_medis` DISABLE KEYS */;
INSERT INTO `layanan_medis` VALUES
(51,987,'laboratorium',994000),
(52,194,'fisioterapi',314000),
(53,194,'konsultasi',183000),
(54,858,'konsultasi',652000),
(55,188,'vaksinasi',104000),
(56,774,'radiologi',801000),
(57,754,'laboratorium',845000),
(58,705,'konsultasi',819000),
(59,705,'rehabilitasi',679000),
(60,630,'radiologi',77000),
(61,754,'rehabilitasi',974000),
(62,870,'laboratorium',893000),
(63,194,'fisioterapi',943000),
(64,391,'konsultasi',469000),
(65,54,'fisioterapi',846000),
(66,464,'fisioterapi',837000),
(67,754,'konsultasi',208000),
(68,754,'konsultasi',416000),
(69,754,'konsultasi',766000),
(70,784,'vaksinasi',847000),
(71,555,'rehabilitasi',913000),
(72,179,'fisioterapi',282000),
(73,54,'vaksinasi',158000),
(74,774,'fisioterapi',276000),
(75,188,'vaksinasi',289000),
(76,464,'vaksinasi',628000),
(77,930,'vaksinasi',56000),
(78,804,'konsultasi',742000),
(79,858,'laboratorium',673000),
(80,784,'konsultasi',107000),
(81,391,'laboratorium',74000),
(82,179,'fisioterapi',899000),
(83,464,'vaksinasi',814000),
(84,705,'fisioterapi',814000),
(85,179,'konsultasi',243000),
(86,870,'laboratorium',88000),
(87,705,'vaksinasi',898000),
(88,870,'konsultasi',285000),
(89,705,'radiologi',460000),
(90,754,'rehabilitasi',613000),
(91,858,'rehabilitasi',299000),
(92,705,'radiologi',909000),
(93,592,'fisioterapi',884000),
(94,858,'fisioterapi',756000),
(95,804,'laboratorium',986000),
(96,653,'fisioterapi',844000),
(97,784,'konsultasi',485000),
(98,592,'fisioterapi',656000),
(99,754,'radiologi',307000),
(100,784,'laboratorium',329000);
/*!40000 ALTER TABLE `layanan_medis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_layanan`
--

DROP TABLE IF EXISTS `log_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
(10235,'2025-01-15 01:47:03','repurpose customized portals'),
(10235,'2025-03-08 07:16:50','integrate real-time initiatives'),
(10235,'2025-04-09 01:33:23','redefine user-centric e-tailers'),
(10235,'2025-04-12 03:17:37','engage collaborative info-mediaries'),
(10235,'2025-05-17 00:06:08','deploy scalable niches'),
(10831,'2025-02-15 15:07:55','engage viral ROI'),
(10831,'2025-04-29 09:13:30','evolve distributed paradigms'),
(10831,'2025-05-21 18:08:10','deliver ubiquitous technologies'),
(11515,'2025-03-21 20:13:59','morph impactful e-business'),
(11952,'2025-05-13 13:05:21','scale e-business metrics'),
(13143,'2025-03-21 21:51:48','enhance cross-platform ROI'),
(17087,'2025-01-15 18:17:53','leverage distributed e-business'),
(17087,'2025-03-25 22:14:29','leverage out-of-the-box supply-chains'),
(17087,'2025-03-30 09:24:07','empower cutting-edge partnerships'),
(17235,'2025-04-03 08:20:39','streamline impactful channels'),
(19464,'2025-02-07 21:11:38','re-contextualize compelling interfaces'),
(19464,'2025-04-21 06:26:11','re-contextualize compelling experiences'),
(19464,'2025-04-26 03:12:32','synthesize next-generation experiences'),
(21780,'2025-01-21 17:04:50','engage leading-edge info-mediaries'),
(21780,'2025-05-05 04:27:05','iterate web-enabled eyeballs'),
(21780,'2025-05-28 07:07:48','integrate revolutionary mindshare'),
(22413,'2025-01-25 17:41:05','matrix robust mindshare'),
(22413,'2025-03-27 22:29:20','visualize strategic systems'),
(22413,'2025-04-01 11:20:24','incentivize B2C convergence'),
(22947,'2025-01-12 01:41:21','enable cross-platform web services'),
(22947,'2025-04-24 13:42:45','leverage holistic communities'),
(25959,'2025-02-14 04:47:35','morph innovative e-services'),
(25959,'2025-03-08 02:05:02','reinvent wireless infrastructures'),
(25959,'2025-03-08 21:43:28','orchestrate robust initiatives'),
(25959,'2025-03-14 20:58:19','redefine cutting-edge metrics'),
(25959,'2025-05-31 01:29:59','enhance 24/7 bandwidth'),
(28019,'2025-01-13 23:53:44','drive visionary communities'),
(28019,'2025-02-26 16:11:56','implement transparent content'),
(28019,'2025-03-25 20:43:57','cultivate value-added infrastructures'),
(28019,'2025-05-18 11:12:14','synthesize wireless architectures'),
(34946,'2025-04-02 21:22:39','aggregate intuitive eyeballs'),
(38195,'2025-02-02 16:02:05','implement end-to-end supply-chains'),
(38195,'2025-04-01 05:25:21','iterate e-business infrastructures'),
(52139,'2025-02-17 02:45:04','implement seamless markets'),
(52139,'2025-02-28 02:10:56','orchestrate strategic systems'),
(52139,'2025-04-22 10:28:26','monetize leading-edge schemas'),
(52139,'2025-05-10 18:57:07','grow real-time info-mediaries'),
(52139,'2025-05-22 23:01:08','benchmark ubiquitous vortals'),
(54307,'2025-02-05 18:06:50','engineer vertical interfaces'),
(54307,'2025-02-08 18:59:08','aggregate sticky users'),
(54307,'2025-02-14 03:35:54','deploy frictionless paradigms'),
(54452,'2025-01-20 07:01:58','mesh magnetic synergies'),
(54452,'2025-04-18 17:31:59','orchestrate turn-key portals'),
(62197,'2025-02-07 01:13:49','whiteboard robust vortals'),
(62197,'2025-04-09 15:41:29','engage open-source niches'),
(62197,'2025-04-19 23:53:07','mesh cutting-edge initiatives'),
(62197,'2025-04-27 03:33:04','synthesize customized portals'),
(62197,'2025-05-08 16:50:34','envisioneer synergistic initiatives'),
(62809,'2025-01-25 18:32:00','benchmark clicks-and-mortar eyeballs'),
(62809,'2025-02-13 23:13:57','optimize out-of-the-box action-items'),
(62809,'2025-03-05 05:38:23','incubate plug-and-play portals'),
(63889,'2025-02-04 10:03:01','orchestrate next-generation info-mediaries'),
(63889,'2025-02-07 23:36:46','utilize distributed functionalities'),
(63889,'2025-03-31 02:29:24','incentivize front-end models'),
(63889,'2025-04-08 23:03:21','syndicate rich e-business'),
(63889,'2025-04-15 11:34:10','syndicate holistic e-tailers'),
(63889,'2025-05-11 06:36:25','evolve one-to-one partnerships'),
(64382,'2025-02-16 00:53:17','brand virtual networks'),
(64382,'2025-03-08 20:12:03','deliver bleeding-edge systems'),
(66822,'2025-01-10 14:45:32','evolve compelling applications'),
(66822,'2025-03-31 19:44:50','harness sticky e-commerce'),
(66929,'2025-01-26 08:28:14','embrace web-enabled infrastructures'),
(66929,'2025-04-06 17:07:36','cultivate cross-platform niches'),
(66929,'2025-05-24 00:24:00','transform front-end vortals'),
(71043,'2025-01-12 01:04:26','transform magnetic paradigms'),
(72754,'2025-01-06 10:35:58','scale sticky vortals'),
(72754,'2025-02-11 00:37:52','disintermediate collaborative markets'),
(74028,'2025-01-09 07:07:35','re-contextualize world-class users'),
(74028,'2025-02-06 09:44:21','streamline vertical niches'),
(74028,'2025-04-17 06:28:53','matrix wireless infrastructures'),
(74427,'2025-01-18 05:38:00','monetize compelling applications'),
(74427,'2025-04-26 22:38:11','orchestrate robust methodologies'),
(79404,'2025-03-22 13:05:15','transition synergistic ROI'),
(80503,'2025-02-07 06:00:06','seize B2C supply-chains'),
(80503,'2025-02-28 01:55:42','visualize killer portals'),
(80977,'2025-04-17 20:57:26','revolutionize integrated solutions'),
(83109,'2025-01-30 21:28:19','matrix innovative markets'),
(83109,'2025-03-18 22:36:39','utilize mission-critical e-markets'),
(89928,'2025-05-23 10:52:11','incentivize scalable infrastructures'),
(90916,'2025-01-31 04:20:38','extend visionary vortals'),
(90916,'2025-04-22 15:48:58','facilitate dot-com deliverables'),
(90916,'2025-04-24 00:05:24','facilitate sticky communities'),
(90916,'2025-05-03 03:25:41','brand strategic infrastructures'),
(90966,'2025-01-03 22:29:18','envisioneer frictionless e-markets'),
(90966,'2025-02-19 04:46:31','integrate world-class users'),
(90966,'2025-05-03 00:28:06','revolutionize virtual technologies'),
(93083,'2025-04-15 17:49:44','cultivate bricks-and-clicks initiatives'),
(93083,'2025-05-28 11:55:12','incubate magnetic action-items'),
(94193,'2025-01-02 05:24:54','whiteboard wireless communities'),
(94193,'2025-01-24 21:52:06','re-contextualize leading-edge infrastructures'),
(94377,'2025-02-12 20:00:00','integrate back-end architectures'),
(94377,'2025-03-20 16:20:31','transform visionary communities'),
(94377,'2025-03-22 15:58:21','evolve vertical paradigms'),
(97963,'2025-02-09 20:57:42','deploy clicks-and-mortar models'),
(97963,'2025-03-15 05:55:10','envisioneer bricks-and-clicks info-mediaries');
/*!40000 ALTER TABLE `log_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `melakukan_janji`
--

DROP TABLE IF EXISTS `melakukan_janji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `melakukan_janji` (
  `email_pasien` varchar(255) NOT NULL,
  `id_janji_temu` int(11) NOT NULL,
  `email_tenaga_medis` varchar(255) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  PRIMARY KEY (`email_pasien`,`id_janji_temu`,`id_rumah_sakit`),
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
('marpaunggara@example.com',110,'adikawastuti@example.net',653),
('dadi72@example.net',114,'aditya68@example.com',930),
('eva82@example.net',148,'aditya68@example.com',930),
('gsitompul@example.org',114,'aditya68@example.com',930),
('wirdarajata@example.com',114,'aditya68@example.com',930),
('edisonmandala@example.org',104,'ardiantodipa@example.org',120),
('gilanghartati@example.net',148,'ardiantolulut@example.net',930),
('tomisitompul@example.com',148,'ardiantolulut@example.net',930),
('tomisitompul@example.com',128,'ausada@example.com',188),
('widiastutihalima@example.net',108,'ausada@example.com',188),
('bdamanik@example.com',136,'bakidin48@example.org',858),
('hasan93@example.net',147,'bakidin48@example.org',858),
('yardianto@example.net',140,'balamantri12@example.com',555),
('damanikhasan@example.com',129,'banaralazuardi@example.com',592),
('widiastutihalima@example.net',126,'budimanmulyono@example.org',194),
('yardianto@example.net',126,'budimanmulyono@example.org',194),
('budimanlabuh@example.org',102,'budiyantotalia@example.com',987),
('hidayatedi@example.net',102,'budiyantotalia@example.com',987),
('jamil71@example.com',102,'budiyantotalia@example.com',987),
('kawacaardianto@example.org',102,'budiyantotalia@example.com',987),
('suryonoyuliana@example.org',102,'budiyantotalia@example.com',987),
('virman47@example.com',145,'cahyo51@example.com',179),
('edisonmandala@example.org',140,'candradongoran@example.com',555),
('koko20@example.org',142,'candradongoran@example.com',555),
('wirdarajata@example.com',142,'candradongoran@example.com',555),
('agustinamutia@example.net',117,'clatupono@example.net',120),
('dadi72@example.net',131,'clatupono@example.net',120),
('phakim@example.net',117,'clatupono@example.net',120),
('agustinamutia@example.net',111,'cnatsir@example.com',592),
('gusamah@example.com',129,'cnatsir@example.com',592),
('oliva63@example.org',129,'cnatsir@example.com',592),
('bdamanik@example.com',129,'damunainggolan@example.net',592),
('yardianto@example.net',111,'damunainggolan@example.net',592),
('budimanlabuh@example.org',143,'dongoranalambana@example.org',630),
('edisonmandala@example.org',144,'dongoranalambana@example.org',630),
('gilanghartati@example.net',118,'dongoranalambana@example.org',630),
('kawaca68@example.org',143,'dongoranalambana@example.org',630),
('marpaunggara@example.com',118,'dongoranalambana@example.org',630),
('agustinamutia@example.net',102,'dpranowo@example.com',987),
('criyanti@example.com',146,'dpranowo@example.com',987),
('damanikhasan@example.com',146,'dpranowo@example.com',987),
('kembasinaga@example.com',102,'dpranowo@example.com',987),
('suryonoyuliana@example.org',146,'dpranowo@example.com',987),
('virman47@example.com',102,'dpranowo@example.com',987),
('dadi72@example.net',144,'fdabukke@example.org',630),
('darmanhutapea@example.org',143,'fdabukke@example.org',630),
('yardianto@example.net',143,'fdabukke@example.org',630),
('zalindra43@example.org',144,'fdabukke@example.org',630),
('budimanlabuh@example.org',149,'firgantorodipa@example.org',705),
('hidayatedi@example.net',109,'firgantorodipa@example.org',705),
('novitasarijono@example.com',109,'firgantorodipa@example.org',705),
('widiastutihalima@example.net',149,'firgantorodipa@example.org',705),
('suryonoyuliana@example.org',110,'fujiatisari@example.com',653),
('suryonorangga@example.org',129,'fwahyuni@example.org',592),
('wawan47@example.com',109,'fwaluyo@example.net',705),
('keneshandayani@example.org',131,'gprastuti@example.org',120),
('kawacaardianto@example.org',148,'gpratiwi@example.org',930),
('nfarida@example.com',114,'gpratiwi@example.org',930),
('suryonorangga@example.org',114,'gpratiwi@example.org',930),
('jamil71@example.com',110,'hassanaherik@example.net',653),
('gusamah@example.com',107,'hassanahfaizah@example.com',784),
('hasan93@example.net',128,'ihabibi@example.com',188),
('budimanlabuh@example.org',105,'ilsa84@example.net',179),
('oliva63@example.org',104,'jayasimbolon@example.org',120),
('bagiyapurwanti@example.net',124,'jindrafarida@example.net',858),
('budimanlabuh@example.org',147,'jindrafarida@example.net',858),
('maryatiprayitna@example.com',124,'jindrafarida@example.net',858),
('damanikhasan@example.com',149,'jyuniar@example.org',705),
('eva82@example.net',112,'lilimanullang@example.org',188),
('almira32@example.com',149,'lyuniar@example.com',705),
('damanikhasan@example.com',109,'lyuniar@example.com',705),
('keneshandayani@example.org',149,'lyuniar@example.com',705),
('almira32@example.com',107,'megantaraismail@example.org',784),
('novitasarijono@example.com',107,'megantaraismail@example.org',784),
('bagiyapurwanti@example.net',136,'mitrasiregar@example.org',858),
('saifulsirait@example.com',136,'mitrasiregar@example.org',858),
('suryonorangga@example.org',136,'mitrasiregar@example.org',858),
('vinomulyani@example.net',124,'mitrasiregar@example.org',858),
('virman47@example.com',107,'namagaimam@example.net',784),
('kawaca68@example.org',131,'nbudiman@example.net',120),
('novitasarijono@example.com',117,'nbudiman@example.net',120),
('almira32@example.com',130,'nurainiwadi@example.com',391),
('bdamanik@example.com',132,'nurainiwadi@example.com',391),
('criyanti@example.com',106,'nurainiwadi@example.com',391),
('gilanghartati@example.net',130,'nurainiwadi@example.com',391),
('suryonorangga@example.org',130,'nurainiwadi@example.com',391),
('widiastutihalima@example.net',113,'nurainiwadi@example.com',391),
('agustinamutia@example.net',119,'ogunawan@example.org',54),
('budimanlabuh@example.org',103,'ogunawan@example.org',54),
('kawacaardianto@example.org',103,'ogunawan@example.org',54),
('marpaunggara@example.com',103,'ogunawan@example.org',54),
('suryonorangga@example.org',103,'ogunawan@example.org',54),
('suryonorangga@example.org',134,'ogunawan@example.org',54),
('yardianto@example.net',150,'ogunawan@example.org',54),
('irmahasanah@example.org',149,'padmi90@example.net',705),
('yardianto@example.net',109,'padmi90@example.net',705),
('nfarida@example.com',108,'ppadmasari@example.net',188),
('nurdiyantijumadi@example.net',112,'ppadmasari@example.net',188),
('maryatiprayitna@example.com',140,'prabowo25@example.com',555),
('suryonorangga@example.org',126,'pradiptabelinda@example.com',194),
('najmudindina@example.net',148,'prasetyo68@example.com',930),
('edisonmandala@example.org',116,'prasetyo78@example.net',555),
('suryonoyuliana@example.org',142,'prasetyo78@example.net',555),
('upuspasari@example.net',142,'prasetyo78@example.net',555),
('zalindra43@example.org',142,'prasetyo78@example.net',555),
('oliva63@example.org',116,'purwadi68@example.net',555),
('irmahasanah@example.org',140,'puspitatira@example.net',555),
('almira32@example.com',136,'rahimahhimawan@example.net',858),
('dadi72@example.net',124,'rahimahhimawan@example.net',858),
('hamzahnurdiyanti@example.com',124,'rahimahhimawan@example.net',858),
('suryonorangga@example.org',124,'rahimahhimawan@example.net',858),
('hamzahnurdiyanti@example.com',110,'rahmawatiumaya@example.org',653),
('yardianto@example.net',127,'rahmawatiumaya@example.org',653),
('gatotmegantara@example.com',147,'sihombingwawan@example.org',858),
('kawacaardianto@example.org',138,'sihombingwawan@example.org',858),
('eva82@example.net',110,'sitidongoran@example.net',653),
('suryonorangga@example.org',110,'sitidongoran@example.net',653),
('phakim@example.net',111,'suartiniatmaja@example.com',592),
('agustinamutia@example.net',134,'tarihorantaufan@example.net',54),
('gatotmegantara@example.com',134,'tarihorantaufan@example.net',54),
('irmahasanah@example.org',101,'tarihorantaufan@example.net',54),
('kawacaardianto@example.org',119,'tarihorantaufan@example.net',54),
('kembasinaga@example.com',134,'tarihorantaufan@example.net',54),
('koko20@example.org',103,'tarihorantaufan@example.net',54),
('oliva63@example.org',134,'tarihorantaufan@example.net',54),
('suryonoyuliana@example.org',134,'tarihorantaufan@example.net',54),
('winarnobahuwirya@example.net',150,'tarihorantaufan@example.net',54),
('koko20@example.org',118,'tsimbolon@example.net',630),
('suryonoyuliana@example.org',118,'tsimbolon@example.net',630),
('wirdarajata@example.com',143,'tsimbolon@example.net',630),
('maryatiprayitna@example.com',104,'twidiastuti@example.org',120),
('budimanlabuh@example.org',131,'umangunsong@example.net',120),
('nfarida@example.com',123,'wasitaputri@example.com',870),
('oliva63@example.org',123,'wibowolegawa@example.org',870),
('vinomulyani@example.net',122,'wibowolegawa@example.org',870),
('gsitompul@example.org',130,'widodocecep@example.org',391),
('hidayatedi@example.net',137,'widodocecep@example.org',391),
('kawaca68@example.org',106,'widodocecep@example.org',391),
('phakim@example.net',137,'widodocecep@example.org',391),
('maulanayusuf@example.com',142,'xirawan@example.net',555),
('eva82@example.net',123,'yono80@example.com',870),
('hidayatedi@example.net',114,'yuliantibanawa@example.com',930),
('jamil71@example.com',114,'yuliantibanawa@example.com',930),
('yardianto@example.net',148,'yuliantibanawa@example.com',930),
('edisonmandala@example.org',110,'yuniarhumaira@example.org',653),
('jamil71@example.com',130,'yuniartiara@example.com',391),
('najmudindina@example.net',137,'yuniartiara@example.com',391),
('oliva63@example.org',132,'yuniartiara@example.com',391),
('tomisitompul@example.com',113,'yuniartiara@example.com',391),
('yardianto@example.net',137,'yuniartiara@example.com',391);
/*!40000 ALTER TABLE `melakukan_janji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obat`
--

DROP TABLE IF EXISTS `obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `label` enum('analgesik','antibiotik','obat herbal') NOT NULL,
  `stok_obat` int(11) NOT NULL DEFAULT 50 CHECK (`stok_obat` >= 0),
  `harga` int(11) NOT NULL DEFAULT 0 CHECK (`harga` >= 0),
  PRIMARY KEY (`id_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat`
--

LOCK TABLES `obat` WRITE;
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
INSERT INTO `obat` VALUES
(166,'analgesik',3,48000),
(322,'antibiotik',121,85000),
(1650,'obat herbal',121,70000),
(1905,'antibiotik',26,61500),
(2003,'obat herbal',228,86000),
(2580,'obat herbal',104,6500),
(2699,'obat herbal',41,13000),
(2796,'antibiotik',113,21500),
(3300,'antibiotik',10,14500),
(3615,'obat herbal',112,67500),
(4348,'analgesik',243,53000),
(5239,'obat herbal',250,1500),
(5992,'analgesik',188,60000),
(6202,'antibiotik',220,4500),
(6341,'obat herbal',121,17500),
(6396,'antibiotik',63,54000),
(7858,'antibiotik',32,54500),
(8776,'obat herbal',194,28000),
(9477,'antibiotik',215,91000),
(9858,'analgesik',109,67500);
/*!40000 ALTER TABLE `obat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER validate_stock_transition_constraint
BEFORE UPDATE ON obat
FOR EACH ROW
BEGIN
  DECLARE stock_reduction INT;
  DECLARE stock_increase INT;
  
  
  SET stock_reduction = OLD.stok_obat - NEW.stok_obat;
  SET stock_increase = NEW.stok_obat - OLD.stok_obat;
  
  
  IF OLD.stok_obat < 10 AND OLD.stok_obat > 0 AND stock_reduction > 5 THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Stok rendah tidak boleh berkurang lebih dari 5 unit sekaligus';
  END IF;
  
  
  IF OLD.stok_obat = 0 AND NEW.stok_obat > 50 THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Restocking dari stok kosong maksimal 50 unit sekaligus';
  END IF;
  
  
  IF OLD.stok_obat >= 10 AND NEW.stok_obat < (OLD.stok_obat * 0.5) THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Stok normal tidak boleh berkurang lebih dari 50% sekaligus';
  END IF;
  
  
  IF NEW.stok_obat < 0 THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Stok obat tidak boleh negatif';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
('agustinamutia@example.net',10831),
('almira32@example.com',28019),
('bagiyapurwanti@example.net',54307),
('bdamanik@example.com',38195),
('budimanlabuh@example.org',29638),
('criyanti@example.com',62197),
('dadi72@example.net',62809),
('damanikhasan@example.com',97963),
('darmanhutapea@example.org',88906),
('edisonmandala@example.org',52139),
('eva82@example.net',90966),
('flaksmiwati@example.org',22947),
('gatotmegantara@example.com',19464),
('gilanghartati@example.net',22413),
('gsitompul@example.org',50497),
('gusamah@example.com',74028),
('hamzahnurdiyanti@example.com',17087),
('hasan93@example.net',74427),
('hidayatedi@example.net',67045),
('irmahasanah@example.org',94377),
('jamil71@example.com',90916),
('kawaca68@example.org',63889),
('kawacaardianto@example.org',83109),
('kembasinaga@example.com',11952),
('keneshandayani@example.org',81493),
('koko20@example.org',17235),
('marpaunggara@example.com',97274),
('maryatiprayitna@example.com',10235),
('maulanayusuf@example.com',25959),
('najmudindina@example.net',13143),
('nfarida@example.com',89928),
('novitasarijono@example.com',43560),
('nurdiyantijumadi@example.net',34946),
('ogunarto@example.org',79404),
('oliva63@example.org',85799),
('phakim@example.net',66822),
('saifulsirait@example.com',80977),
('suryonorangga@example.org',77387),
('suryonoyuliana@example.org',72754),
('tomisitompul@example.com',54452),
('upuspasari@example.net',71043),
('vinomulyani@example.net',66929),
('virman47@example.com',64382),
('wawan47@example.com',80503),
('wibisonoembuh@example.com',94193),
('widiastutihalima@example.net',11515),
('winarnobahuwirya@example.net',93083),
('wirdarajata@example.com',78160),
('yardianto@example.net',21780),
('zalindra43@example.org',13610);
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_auto_insert_status_baymin
    AFTER INSERT ON pasien
    FOR EACH ROW
BEGIN
    
    IF NEW.firmware_baymin IS NOT NULL THEN
        
        INSERT INTO status_baymin (
            firmware_baymin, 
            suhu, 
            status_baterai, 
            warna_perangkat
        ) VALUES (
            NEW.firmware_baymin,
            36.5,
            'Full',         
            'Putih'         
        )
        ON DUPLICATE KEY UPDATE
            
            firmware_baymin = NEW.firmware_baymin;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_auto_update_status_baymin
    AFTER UPDATE ON pasien
    FOR EACH ROW
BEGIN
    
    IF OLD.firmware_baymin IS NOT NULL AND NEW.firmware_baymin IS NOT NULL 
       AND OLD.firmware_baymin != NEW.firmware_baymin THEN
        
        
        INSERT INTO status_baymin (
            firmware_baymin, 
            suhu, 
            status_baterai, 
            warna_perangkat
        ) VALUES (
            NEW.firmware_baymin,
            36.5,
            'Full',
            'Putih'
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pemesanan_layanan`
--

DROP TABLE IF EXISTS `pemesanan_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemesanan_layanan` (
  `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_layanan` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jadwal_pelaksanaan` date NOT NULL,
  `status_pemesanan` enum('belum dibayar','dijadwalkan','sedang berlangsung','selesai','dibatalkan') NOT NULL,
  PRIMARY KEY (`id_pemesanan`),
  KEY `pemesanan_layanan_ibfk_1` (`id_layanan`),
  KEY `pemesanan_layanan_ibfk_2` (`email`),
  CONSTRAINT `pemesanan_layanan_ibfk_1` FOREIGN KEY (`id_layanan`) REFERENCES `layanan_medis` (`id_layanan`),
  CONSTRAINT `pemesanan_layanan_ibfk_2` FOREIGN KEY (`email`) REFERENCES `pasien` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_layanan`
--

LOCK TABLES `pemesanan_layanan` WRITE;
/*!40000 ALTER TABLE `pemesanan_layanan` DISABLE KEYS */;
INSERT INTO `pemesanan_layanan` VALUES
(201,75,'yardianto@example.net','2025-07-07','sedang berlangsung'),
(202,66,'najmudindina@example.net','2025-07-01','belum dibayar'),
(203,51,'gilanghartati@example.net','2025-07-11','belum dibayar'),
(204,73,'suryonorangga@example.org','2025-07-17','dijadwalkan'),
(205,54,'zalindra43@example.org','2025-05-01','dibatalkan'),
(206,57,'gilanghartati@example.net','2025-07-09','dijadwalkan'),
(207,93,'saifulsirait@example.com','2025-06-04','belum dibayar'),
(208,64,'yardianto@example.net','2025-04-22','dibatalkan'),
(209,59,'novitasarijono@example.com','2025-05-28','dibatalkan'),
(210,66,'najmudindina@example.net','2025-07-21','sedang berlangsung'),
(211,81,'dadi72@example.net','2025-06-07','sedang berlangsung'),
(212,90,'flaksmiwati@example.org','2025-05-25','dibatalkan'),
(213,70,'najmudindina@example.net','2025-04-27','dibatalkan'),
(214,95,'edisonmandala@example.org','2025-04-09','selesai'),
(215,77,'criyanti@example.com','2025-07-03','sedang berlangsung'),
(216,80,'gusamah@example.com','2025-06-12','belum dibayar'),
(217,75,'novitasarijono@example.com','2025-06-17','belum dibayar'),
(218,58,'oliva63@example.org','2025-06-10','dijadwalkan'),
(219,77,'keneshandayani@example.org','2025-05-15','dibatalkan'),
(220,81,'dadi72@example.net','2025-07-20','belum dibayar'),
(221,92,'gusamah@example.com','2025-04-29','selesai'),
(222,99,'gilanghartati@example.net','2025-07-06','belum dibayar'),
(223,85,'nurdiyantijumadi@example.net','2025-07-05','belum dibayar'),
(224,58,'wawan47@example.com','2025-07-10','belum dibayar'),
(225,88,'suryonorangga@example.org','2025-04-19','dibatalkan'),
(226,93,'hamzahnurdiyanti@example.com','2025-07-21','dijadwalkan'),
(227,76,'najmudindina@example.net','2025-05-26','dibatalkan'),
(228,76,'najmudindina@example.net','2025-06-18','dijadwalkan'),
(229,94,'nurdiyantijumadi@example.net','2025-05-23','selesai'),
(230,84,'kawaca68@example.org','2025-06-04','dijadwalkan'),
(231,78,'zalindra43@example.org','2025-05-02','dibatalkan'),
(232,94,'wawan47@example.com','2025-04-05','selesai'),
(233,56,'suryonoyuliana@example.org','2025-05-24','selesai'),
(234,94,'criyanti@example.com','2025-06-10','dijadwalkan'),
(235,68,'novitasarijono@example.com','2025-04-07','selesai'),
(236,92,'hasan93@example.net','2025-07-24','sedang berlangsung'),
(237,86,'hasan93@example.net','2025-04-15','selesai'),
(238,67,'kembasinaga@example.com','2025-07-12','sedang berlangsung'),
(239,61,'wawan47@example.com','2025-07-10','dijadwalkan'),
(240,84,'phakim@example.net','2025-06-05','dijadwalkan'),
(241,62,'irmahasanah@example.org','2025-04-08','dibatalkan'),
(242,85,'upuspasari@example.net','2025-06-23','dijadwalkan'),
(243,90,'wawan47@example.com','2025-04-13','selesai'),
(244,55,'najmudindina@example.net','2025-05-18','selesai'),
(245,56,'hasan93@example.net','2025-06-24','dijadwalkan'),
(246,70,'wibisonoembuh@example.com','2025-07-12','belum dibayar'),
(247,60,'yardianto@example.net','2025-06-17','sedang berlangsung'),
(248,96,'hasan93@example.net','2025-05-29','dibatalkan'),
(249,76,'eva82@example.net','2025-06-19','belum dibayar'),
(250,70,'yardianto@example.net','2025-05-27','dibatalkan'),
(251,53,'vinomulyani@example.net','2025-07-29','belum dibayar'),
(252,99,'damanikhasan@example.com','2025-07-02','dijadwalkan'),
(253,62,'darmanhutapea@example.org','2025-06-07','belum dibayar'),
(254,58,'wawan47@example.com','2025-06-13','dijadwalkan'),
(255,100,'irmahasanah@example.org','2025-04-17','selesai'),
(256,51,'najmudindina@example.net','2025-06-27','dijadwalkan'),
(257,59,'zalindra43@example.org','2025-07-20','dijadwalkan'),
(258,58,'saifulsirait@example.com','2025-06-25','belum dibayar'),
(259,56,'damanikhasan@example.com','2025-07-24','dijadwalkan'),
(260,79,'novitasarijono@example.com','2025-06-13','sedang berlangsung'),
(261,91,'maulanayusuf@example.com','2025-07-16','sedang berlangsung'),
(262,82,'flaksmiwati@example.org','2025-07-16','belum dibayar'),
(263,55,'eva82@example.net','2025-07-09','sedang berlangsung'),
(264,80,'yardianto@example.net','2025-05-31','sedang berlangsung'),
(265,67,'vinomulyani@example.net','2025-07-12','dijadwalkan'),
(266,82,'budimanlabuh@example.org','2025-07-17','sedang berlangsung'),
(267,55,'keneshandayani@example.org','2025-04-25','selesai'),
(268,93,'darmanhutapea@example.org','2025-07-29','dijadwalkan'),
(269,62,'wawan47@example.com','2025-04-11','dibatalkan'),
(270,55,'almira32@example.com','2025-07-15','sedang berlangsung'),
(271,74,'hamzahnurdiyanti@example.com','2025-04-13','selesai'),
(272,63,'zalindra43@example.org','2025-05-17','selesai'),
(273,64,'hasan93@example.net','2025-06-07','sedang berlangsung'),
(274,51,'novitasarijono@example.com','2025-07-22','dijadwalkan'),
(275,59,'kembasinaga@example.com','2025-07-28','belum dibayar'),
(276,87,'flaksmiwati@example.org','2025-06-02','belum dibayar'),
(277,92,'gilanghartati@example.net','2025-04-24','selesai'),
(278,60,'wibisonoembuh@example.com','2025-03-31','dibatalkan'),
(279,60,'almira32@example.com','2025-04-08','selesai'),
(280,80,'phakim@example.net','2025-06-09','dijadwalkan'),
(281,64,'kembasinaga@example.com','2025-04-04','selesai'),
(282,58,'virman47@example.com','2025-06-02','belum dibayar'),
(283,69,'damanikhasan@example.com','2025-05-06','selesai'),
(284,70,'koko20@example.org','2025-07-11','belum dibayar'),
(285,92,'nfarida@example.com','2025-06-19','dijadwalkan'),
(286,94,'upuspasari@example.net','2025-07-10','belum dibayar'),
(287,85,'maryatiprayitna@example.com','2025-05-24','dibatalkan'),
(288,67,'keneshandayani@example.org','2025-07-08','belum dibayar'),
(289,90,'maulanayusuf@example.com','2025-07-23','sedang berlangsung'),
(290,85,'kawacaardianto@example.org','2025-07-25','dijadwalkan'),
(291,78,'oliva63@example.org','2025-06-03','sedang berlangsung'),
(292,56,'virman47@example.com','2025-06-30','belum dibayar'),
(293,54,'gsitompul@example.org','2025-05-18','dibatalkan'),
(294,70,'eva82@example.net','2025-07-14','belum dibayar'),
(295,97,'winarnobahuwirya@example.net','2025-05-22','selesai'),
(296,77,'zalindra43@example.org','2025-04-05','dibatalkan'),
(297,62,'hasan93@example.net','2025-06-16','dijadwalkan'),
(298,78,'agustinamutia@example.net','2025-04-26','selesai'),
(299,67,'vinomulyani@example.net','2025-07-06','dijadwalkan'),
(300,85,'bdamanik@example.com','2025-05-30','selesai');
/*!40000 ALTER TABLE `pemesanan_layanan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_status_pemesanan
BEFORE UPDATE ON pemesanan_layanan
FOR EACH ROW
BEGIN
  
  IF NEW.jadwal_pelaksanaan < CURRENT_DATE() THEN
    SET NEW.status_pemesanan = 'selesai';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pemesanan_obat`
--

DROP TABLE IF EXISTS `pemesanan_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemesanan_obat` (
  `email` varchar(255) NOT NULL,
  `waktu_pemesanan` datetime NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  `status_pemesanan` enum('belum dibayar','dijadwalkan','sedang berlangsung','selesai','dibatalkan') NOT NULL,
  `total_biaya` int(11) NOT NULL CHECK (`total_biaya` >= 0),
  PRIMARY KEY (`email`,`waktu_pemesanan`),
  KEY `pemesanan_obat_ibfk_1` (`email`,`provinsi`,`kota`,`jalan`),
  CONSTRAINT `pemesanan_obat_ibfk_1` FOREIGN KEY (`email`, `provinsi`, `kota`, `jalan`) REFERENCES `alamat_pasien` (`email`, `provinsi`, `kota`, `jalan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_obat`
--

LOCK TABLES `pemesanan_obat` WRITE;
/*!40000 ALTER TABLE `pemesanan_obat` DISABLE KEYS */;
INSERT INTO `pemesanan_obat` VALUES
('agustinamutia@example.net','2025-05-12 17:58:55','Papua','Bandar Lampung','Jl. Yos Sudarso No. 1','belum dibayar',0),
('bdamanik@example.com','2025-05-12 21:20:20','Banten','Tomohon','Gang Sadang Serang No. 1','dibatalkan',357000),
('budimanlabuh@example.org','2025-05-05 20:04:19','Banten','Bukittinggi','Gang Jend. Sudirman No. 329','dibatalkan',0),
('budimanlabuh@example.org','2025-05-25 15:52:18','Kepulauan Riau','Parepare','Jl. Raya Setiabudhi No. 11','dibatalkan',190500),
('criyanti@example.com','2025-05-19 03:33:07','Lampung','Tebingtinggi','Gg. Cikutra Barat No. 269','dijadwalkan',283500),
('criyanti@example.com','2025-05-31 08:07:04','Sulawesi Tengah','Bima','Jl. Kutai No. 2','belum dibayar',144000),
('dadi72@example.net','2025-05-03 16:10:57','Bali','Tasikmalaya','Gg. M.H Thamrin No. 623','selesai',172000),
('dadi72@example.net','2025-05-14 15:50:27','Kalimantan Barat','Kota Administrasi Jakarta Utara','Jl. Ahmad Yani No. 6','dijadwalkan',370500),
('edisonmandala@example.org','2025-05-10 05:13:34','Maluku Utara','Binjai','Gang Gedebage Selatan No. 85','dibatalkan',199500),
('eva82@example.net','2025-05-23 13:47:44','Sumatera Selatan','Tual','Jalan Surapati No. 638','belum dibayar',733000),
('flaksmiwati@example.org','2025-05-23 21:12:08','Sumatera Barat','Batu','Jalan Kutai No. 75','dijadwalkan',0),
('flaksmiwati@example.org','2025-05-25 11:34:05','Sumatera Selatan','Banjarmasin','Gang Cikutra Timur No. 964','selesai',146000),
('flaksmiwati@example.org','2025-05-29 06:46:03','Sumatera Selatan','Banjarmasin','Gang Cikutra Timur No. 964','dijadwalkan',202500),
('gsitompul@example.org','2025-05-14 11:22:09','Bengkulu','Palu','Gang Cihampelas No. 9','dibatalkan',0),
('kembasinaga@example.com','2025-05-14 19:52:19','Kalimantan Barat','Surakarta','Gg. Cikapayang No. 77','dijadwalkan',67500),
('kembasinaga@example.com','2025-05-25 12:06:39','Nusa Tenggara Barat','Pekalongan','Gg. Rajiman No. 6','dibatalkan',764500),
('keneshandayani@example.org','2025-05-10 20:39:46','Maluku Utara','Banjarbaru','Jl. Merdeka No. 273','dijadwalkan',163500),
('keneshandayani@example.org','2025-05-20 11:30:48','Maluku Utara','Banjarbaru','Jl. Merdeka No. 273','sedang berlangsung',85000),
('koko20@example.org','2025-05-23 15:31:56','Kalimantan Utara','Cirebon','Gg. Moch. Ramdan No. 90','dibatalkan',96000),
('koko20@example.org','2025-05-25 11:15:11','DKI Jakarta','Padangpanjang','Gang Cihampelas No. 22','selesai',427500),
('marpaunggara@example.com','2025-05-13 19:31:34','Jawa Tengah','Lhokseumawe','Jalan Ronggowarsito No. 41','dijadwalkan',334500),
('maryatiprayitna@example.com','2025-05-13 03:08:37','Aceh','Bau-Bau','Jl. Kutai No. 613','selesai',236000),
('maulanayusuf@example.com','2025-05-16 11:41:18','Kepulauan Riau','Kota Administrasi Jakarta Pusat','Jalan M.H Thamrin No. 220','dibatalkan',54000),
('novitasarijono@example.com','2025-05-06 18:00:32','Kalimantan Barat','Metro','Gg. Raya Setiabudhi No. 754','dijadwalkan',223500),
('novitasarijono@example.com','2025-05-26 16:11:59','Kalimantan Barat','Metro','Gg. Raya Setiabudhi No. 754','sedang berlangsung',0),
('ogunarto@example.org','2025-05-17 22:56:13','Gorontalo','Solok','Gang K.H. Wahid Hasyim No. 6','dijadwalkan',519500),
('ogunarto@example.org','2025-05-23 04:17:54','Gorontalo','Solok','Gang K.H. Wahid Hasyim No. 6','selesai',113500),
('ogunarto@example.org','2025-05-25 16:34:19','Gorontalo','Solok','Gang K.H. Wahid Hasyim No. 6','dibatalkan',251500),
('oliva63@example.org','2025-05-30 23:50:10','Sumatera Selatan','Batu','Gg. Rumah Sakit No. 564','selesai',583000),
('saifulsirait@example.com','2025-05-09 18:40:36','Maluku','Langsa','Jl. Pasteur No. 265','dibatalkan',252000),
('saifulsirait@example.com','2025-05-16 22:33:05','Maluku','Langsa','Jl. Pasteur No. 265','dibatalkan',0),
('suryonoyuliana@example.org','2025-05-25 21:25:32','Kalimantan Tengah','Tomohon','Jl. KH Amin Jasuta No. 7','dijadwalkan',97000),
('tomisitompul@example.com','2025-05-12 11:40:01','Sulawesi Utara','Tomohon','Gg. H.J Maemunah No. 526','belum dibayar',313000),
('tomisitompul@example.com','2025-05-28 07:45:08','Sulawesi Utara','Tomohon','Gg. H.J Maemunah No. 526','belum dibayar',246000),
('upuspasari@example.net','2025-05-17 06:59:32','Kalimantan Timur','Bima','Jalan Joyoboyo No. 74','dijadwalkan',258000),
('upuspasari@example.net','2025-05-19 07:57:09','Kalimantan Timur','Bima','Jalan Joyoboyo No. 74','selesai',208500),
('upuspasari@example.net','2025-05-24 04:40:57','Kalimantan Timur','Bima','Jalan Joyoboyo No. 74','sedang berlangsung',423000),
('vinomulyani@example.net','2025-05-05 04:54:57','Nusa Tenggara Barat','Batu','Jl. Tebet Barat Dalam No. 786','dibatalkan',417000),
('virman47@example.com','2025-05-28 00:57:35','DKI Jakarta','Payakumbuh','Jalan Erlangga No. 064','sedang berlangsung',469500),
('wawan47@example.com','2025-05-17 03:23:04','Kalimantan Utara','Blitar','Jl. Dr. Djunjunan No. 031','sedang berlangsung',445000),
('widiastutihalima@example.net','2025-05-01 06:10:51','Kalimantan Utara','Cimahi','Jl. Laswi No. 37','selesai',452000),
('widiastutihalima@example.net','2025-05-06 23:45:42','Kalimantan Utara','Cimahi','Jl. Laswi No. 37','dijadwalkan',4500),
('widiastutihalima@example.net','2025-05-07 00:50:27','Kalimantan Utara','Cimahi','Jl. Laswi No. 37','dibatalkan',455000),
('winarnobahuwirya@example.net','2025-05-01 03:00:34','Kalimantan Barat','Magelang','Jl. Pelajar Pejuang No. 448','selesai',109000),
('winarnobahuwirya@example.net','2025-05-03 21:47:56','Kalimantan Barat','Magelang','Jl. Pelajar Pejuang No. 448','sedang berlangsung',96000),
('yardianto@example.net','2025-05-06 13:13:06','Maluku Utara','Sawahlunto','Jalan Rungkut Industri No. 166','selesai',67500),
('yardianto@example.net','2025-05-07 09:05:23','Maluku Utara','Sawahlunto','Jalan Rungkut Industri No. 166','selesai',182000),
('yardianto@example.net','2025-05-30 08:06:27','Maluku Utara','Sawahlunto','Jalan Rungkut Industri No. 166','dibatalkan',0),
('yardianto@example.net','2025-05-30 12:57:05','Maluku Utara','Sawahlunto','Jalan Rungkut Industri No. 166','dibatalkan',214000),
('zalindra43@example.org','2025-05-17 14:17:38','Kalimantan Tengah','Prabumulih','Jl. Sadang Serang No. 4','dijadwalkan',161000);
/*!40000 ALTER TABLE `pemesanan_obat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_pemesanan_obat_check_stock_on_dijadwalkan_insert
BEFORE INSERT ON pemesanan_obat
FOR EACH ROW
BEGIN
    DECLARE v_violating_item_count INT DEFAULT 0;

    IF NEW.status_pemesanan = 'dijadwalkan' THEN
        SELECT COUNT(*)
        INTO v_violating_item_count
        FROM pemesanan_obat_obat poo
        JOIN obat o ON poo.id_obat = o.id_obat
        WHERE 
            poo.email = NEW.email AND
            poo.waktu_pemesanan = NEW.waktu_pemesanan AND
            poo.kuantitas > o.stok_obat;

        IF v_violating_item_count > 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Tidak dapat membuat pesanan sebagai "dijadwalkan". Stok tidak mencukupi untuk satu atau lebih obat.';
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_pemesanan_obat_check_stock_on_dijadwalkan_update
BEFORE UPDATE ON pemesanan_obat
FOR EACH ROW
BEGIN
    DECLARE v_violating_item_count INT DEFAULT 0;

    IF NEW.status_pemesanan = 'dijadwalkan' AND OLD.status_pemesanan <> 'dijadwalkan' THEN
        SELECT COUNT(*)
        INTO v_violating_item_count
        FROM pemesanan_obat_obat poo
        JOIN obat o ON poo.id_obat = o.id_obat
        WHERE 
            poo.email = NEW.email AND
            poo.waktu_pemesanan = NEW.waktu_pemesanan AND
            poo.kuantitas > o.stok_obat;

        IF v_violating_item_count > 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Tidak dapat mengubah status pesanan menjadi "dijadwalkan". Stok tidak mencukupi untuk satu atau lebih obat.';
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pemesanan_obat_obat`
--

DROP TABLE IF EXISTS `pemesanan_obat_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemesanan_obat_obat` (
  `email` varchar(255) NOT NULL,
  `waktu_pemesanan` datetime NOT NULL,
  `id_obat` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL DEFAULT 1 CHECK (`kuantitas` > 0),
  PRIMARY KEY (`email`,`waktu_pemesanan`,`id_obat`),
  KEY `id_obat` (`id_obat`),
  CONSTRAINT `pemesanan_obat_obat_ibfk_1` FOREIGN KEY (`email`, `waktu_pemesanan`) REFERENCES `pemesanan_obat` (`email`, `waktu_pemesanan`),
  CONSTRAINT `pemesanan_obat_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_obat_obat`
--

LOCK TABLES `pemesanan_obat_obat` WRITE;
/*!40000 ALTER TABLE `pemesanan_obat_obat` DISABLE KEYS */;
INSERT INTO `pemesanan_obat_obat` VALUES
('bdamanik@example.com','2025-05-12 21:20:20',322,1),
('bdamanik@example.com','2025-05-12 21:20:20',6396,4),
('bdamanik@example.com','2025-05-12 21:20:20',8776,2),
('budimanlabuh@example.org','2025-05-25 15:52:18',1905,2),
('budimanlabuh@example.org','2025-05-25 15:52:18',3615,1),
('criyanti@example.com','2025-05-19 03:33:07',2796,4),
('criyanti@example.com','2025-05-19 03:33:07',5992,3),
('criyanti@example.com','2025-05-19 03:33:07',6341,1),
('criyanti@example.com','2025-05-31 08:07:04',166,3),
('dadi72@example.net','2025-05-03 16:10:57',2003,2),
('dadi72@example.net','2025-05-14 15:50:27',166,1),
('dadi72@example.net','2025-05-14 15:50:27',5992,2),
('dadi72@example.net','2025-05-14 15:50:27',9858,3),
('edisonmandala@example.org','2025-05-10 05:13:34',2796,3),
('edisonmandala@example.org','2025-05-10 05:13:34',3615,2),
('eva82@example.net','2025-05-23 13:47:44',1905,2),
('eva82@example.net','2025-05-23 13:47:44',3300,4),
('eva82@example.net','2025-05-23 13:47:44',5992,2),
('eva82@example.net','2025-05-23 13:47:44',6396,3),
('eva82@example.net','2025-05-23 13:47:44',9858,4),
('flaksmiwati@example.org','2025-05-25 11:34:05',2796,4),
('flaksmiwati@example.org','2025-05-25 11:34:05',5992,1),
('flaksmiwati@example.org','2025-05-29 06:46:03',3615,3),
('kembasinaga@example.com','2025-05-14 19:52:19',9858,1),
('kembasinaga@example.com','2025-05-25 12:06:39',166,2),
('kembasinaga@example.com','2025-05-25 12:06:39',2003,4),
('kembasinaga@example.com','2025-05-25 12:06:39',7858,1),
('kembasinaga@example.com','2025-05-25 12:06:39',9858,4),
('keneshandayani@example.org','2025-05-10 20:39:46',7858,3),
('keneshandayani@example.org','2025-05-20 11:30:48',322,1),
('koko20@example.org','2025-05-23 15:31:56',166,2),
('koko20@example.org','2025-05-25 11:15:11',322,2),
('koko20@example.org','2025-05-25 11:15:11',3300,1),
('koko20@example.org','2025-05-25 11:15:11',5239,2),
('koko20@example.org','2025-05-25 11:15:11',5992,4),
('marpaunggara@example.com','2025-05-13 19:31:34',166,1),
('marpaunggara@example.com','2025-05-13 19:31:34',8776,3),
('marpaunggara@example.com','2025-05-13 19:31:34',9858,3),
('maryatiprayitna@example.com','2025-05-13 03:08:37',5992,3),
('maryatiprayitna@example.com','2025-05-13 03:08:37',8776,2),
('maulanayusuf@example.com','2025-05-16 11:41:18',6396,1),
('novitasarijono@example.com','2025-05-06 18:00:32',1650,3),
('novitasarijono@example.com','2025-05-06 18:00:32',6202,3),
('ogunarto@example.org','2025-05-17 22:56:13',1650,2),
('ogunarto@example.org','2025-05-17 22:56:13',2003,1),
('ogunarto@example.org','2025-05-17 22:56:13',3300,3),
('ogunarto@example.org','2025-05-17 22:56:13',3615,2),
('ogunarto@example.org','2025-05-17 22:56:13',5239,4),
('ogunarto@example.org','2025-05-17 22:56:13',7858,2),
('ogunarto@example.org','2025-05-23 04:17:54',5239,3),
('ogunarto@example.org','2025-05-23 04:17:54',7858,2),
('ogunarto@example.org','2025-05-25 16:34:19',1650,1),
('ogunarto@example.org','2025-05-25 16:34:19',2580,2),
('ogunarto@example.org','2025-05-25 16:34:19',3300,1),
('ogunarto@example.org','2025-05-25 16:34:19',6341,4),
('ogunarto@example.org','2025-05-25 16:34:19',8776,3),
('oliva63@example.org','2025-05-30 23:50:10',8776,3),
('oliva63@example.org','2025-05-30 23:50:10',9477,4),
('oliva63@example.org','2025-05-30 23:50:10',9858,2),
('saifulsirait@example.com','2025-05-09 18:40:36',1905,3),
('saifulsirait@example.com','2025-05-09 18:40:36',3615,1),
('suryonoyuliana@example.org','2025-05-25 21:25:32',2796,2),
('suryonoyuliana@example.org','2025-05-25 21:25:32',6396,1),
('tomisitompul@example.com','2025-05-12 11:40:01',322,3),
('tomisitompul@example.com','2025-05-12 11:40:01',3300,4),
('tomisitompul@example.com','2025-05-28 07:45:08',3300,3),
('tomisitompul@example.com','2025-05-28 07:45:08',9858,3),
('upuspasari@example.net','2025-05-17 06:59:32',2003,3),
('upuspasari@example.net','2025-05-19 07:57:09',3300,2),
('upuspasari@example.net','2025-05-19 07:57:09',6341,1),
('upuspasari@example.net','2025-05-19 07:57:09',6396,3),
('upuspasari@example.net','2025-05-24 04:40:57',322,4),
('upuspasari@example.net','2025-05-24 04:40:57',2699,2),
('upuspasari@example.net','2025-05-24 04:40:57',5239,2),
('upuspasari@example.net','2025-05-24 04:40:57',6396,1),
('vinomulyani@example.net','2025-05-05 04:54:57',322,3),
('vinomulyani@example.net','2025-05-05 04:54:57',6396,3),
('virman47@example.com','2025-05-28 00:57:35',1905,4),
('virman47@example.com','2025-05-28 00:57:35',3300,3),
('virman47@example.com','2025-05-28 00:57:35',5992,3),
('wawan47@example.com','2025-05-17 03:23:04',2699,4),
('wawan47@example.com','2025-05-17 03:23:04',6341,3),
('wawan47@example.com','2025-05-17 03:23:04',9477,3),
('wawan47@example.com','2025-05-17 03:23:04',9858,1),
('widiastutihalima@example.net','2025-05-01 06:10:51',322,4),
('widiastutihalima@example.net','2025-05-01 06:10:51',8776,4),
('widiastutihalima@example.net','2025-05-06 23:45:42',6202,1),
('widiastutihalima@example.net','2025-05-07 00:50:27',1905,2),
('widiastutihalima@example.net','2025-05-07 00:50:27',2796,4),
('widiastutihalima@example.net','2025-05-07 00:50:27',6396,3),
('widiastutihalima@example.net','2025-05-07 00:50:27',8776,3),
('winarnobahuwirya@example.net','2025-05-01 03:00:34',4348,2),
('winarnobahuwirya@example.net','2025-05-01 03:00:34',5239,2),
('winarnobahuwirya@example.net','2025-05-03 21:47:56',166,2),
('yardianto@example.net','2025-05-06 13:13:06',3615,1),
('yardianto@example.net','2025-05-07 09:05:23',9477,2),
('yardianto@example.net','2025-05-30 12:57:05',4348,2),
('yardianto@example.net','2025-05-30 12:57:05',6396,2),
('zalindra43@example.org','2025-05-17 14:17:38',2580,4),
('zalindra43@example.org','2025-05-17 14:17:38',3615,2);
/*!40000 ALTER TABLE `pemesanan_obat_obat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_after_insert_pemesanan_obat_obat
AFTER INSERT ON pemesanan_obat_obat
FOR EACH ROW
BEGIN
    UPDATE pemesanan_obat po
    SET po.total_biaya = (
        SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
        FROM pemesanan_obat_obat poo
        JOIN obat o ON poo.id_obat = o.id_obat
        WHERE poo.email = NEW.email 
          AND poo.waktu_pemesanan = NEW.waktu_pemesanan
        
    )
    WHERE po.email = NEW.email
      AND po.waktu_pemesanan = NEW.waktu_pemesanan;
      
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_after_insert_poo_simple_key
AFTER INSERT ON pemesanan_obat_obat
FOR EACH ROW
BEGIN
    UPDATE pemesanan_obat po
    SET po.total_biaya = (
        SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
        FROM pemesanan_obat_obat poo
        JOIN obat o ON poo.id_obat = o.id_obat
        WHERE poo.email = NEW.email
          AND poo.waktu_pemesanan = NEW.waktu_pemesanan
    )
    WHERE po.email = NEW.email
      AND po.waktu_pemesanan = NEW.waktu_pemesanan;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_after_update_pemesanan_obat_obat
AFTER UPDATE ON pemesanan_obat_obat
FOR EACH ROW
BEGIN
    IF NEW.kuantitas <> OLD.kuantitas OR 
       NEW.id_obat <> OLD.id_obat OR 
       NEW.email <> OLD.email OR 
       NEW.waktu_pemesanan <> OLD.waktu_pemesanan THEN


        UPDATE pemesanan_obat po
        SET po.total_biaya = (
            SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
            FROM pemesanan_obat_obat poo
            JOIN obat o ON poo.id_obat = o.id_obat
            WHERE poo.email = NEW.email
              AND poo.waktu_pemesanan = NEW.waktu_pemesanan
        )
        WHERE po.email = NEW.email
          AND po.waktu_pemesanan = NEW.waktu_pemesanan;

        IF OLD.email <> NEW.email OR OLD.waktu_pemesanan <> NEW.waktu_pemesanan THEN
            UPDATE pemesanan_obat po
            SET po.total_biaya = (
                SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
                FROM pemesanan_obat_obat poo
                JOIN obat o ON poo.id_obat = o.id_obat
                WHERE poo.email = OLD.email
                  AND poo.waktu_pemesanan = OLD.waktu_pemesanan
            )
            WHERE po.email = OLD.email
              AND po.waktu_pemesanan = OLD.waktu_pemesanan;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_after_update_poo_simple_key
AFTER UPDATE ON pemesanan_obat_obat
FOR EACH ROW
BEGIN
    IF NEW.kuantitas <> OLD.kuantitas OR 
       NEW.id_obat <> OLD.id_obat OR 
       NEW.email <> OLD.email OR 
       NEW.waktu_pemesanan <> OLD.waktu_pemesanan THEN

        UPDATE pemesanan_obat po
        SET po.total_biaya = (
            SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
            FROM pemesanan_obat_obat poo
            JOIN obat o ON poo.id_obat = o.id_obat
            WHERE poo.email = NEW.email
              AND poo.waktu_pemesanan = NEW.waktu_pemesanan
        )
        WHERE po.email = NEW.email
          AND po.waktu_pemesanan = NEW.waktu_pemesanan;

        IF OLD.email <> NEW.email OR OLD.waktu_pemesanan <> NEW.waktu_pemesanan THEN
            UPDATE pemesanan_obat po
            SET po.total_biaya = (
                SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
                FROM pemesanan_obat_obat poo
                JOIN obat o ON poo.id_obat = o.id_obat
                WHERE poo.email = OLD.email
                  AND poo.waktu_pemesanan = OLD.waktu_pemesanan
            )
            WHERE po.email = OLD.email
              AND po.waktu_pemesanan = OLD.waktu_pemesanan;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_after_delete_pemesanan_obat_obat
AFTER DELETE ON pemesanan_obat_obat
FOR EACH ROW
BEGIN
    UPDATE pemesanan_obat po
    SET po.total_biaya = (
        SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
        FROM pemesanan_obat_obat poo
        JOIN obat o ON poo.id_obat = o.id_obat
        WHERE poo.email = OLD.email 
          AND poo.waktu_pemesanan = OLD.waktu_pemesanan
        
    )
    WHERE po.email = OLD.email
      AND po.waktu_pemesanan = OLD.waktu_pemesanan;
      
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_after_delete_poo_simple_key
AFTER DELETE ON pemesanan_obat_obat
FOR EACH ROW
BEGIN
    UPDATE pemesanan_obat po
    SET po.total_biaya = (
        SELECT COALESCE(SUM(poo.kuantitas * o.harga), 0)
        FROM pemesanan_obat_obat poo
        JOIN obat o ON poo.id_obat = o.id_obat
        WHERE poo.email = OLD.email
          AND poo.waktu_pemesanan = OLD.waktu_pemesanan
    )
    WHERE po.email = OLD.email
      AND po.waktu_pemesanan = OLD.waktu_pemesanan;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pengeluaran_resep`
--

DROP TABLE IF EXISTS `pengeluaran_resep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengeluaran_resep` (
  `id_janji_temu` int(11) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  `id_resep` int(11) NOT NULL,
  `total_biaya` int(11) NOT NULL CHECK (`total_biaya` >= 0),
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
(101,54,218719,0),
(102,987,974970,0),
(103,54,723628,0),
(104,120,940067,0),
(105,179,944599,0),
(106,391,712081,0),
(107,784,601978,0),
(108,188,560542,0),
(109,705,593215,0),
(110,653,455850,0),
(111,592,974026,0),
(112,188,863531,0),
(113,391,518169,0),
(114,930,242833,0),
(115,774,902952,0),
(116,555,879107,0),
(117,120,998772,0),
(118,630,244249,0),
(119,54,350600,0),
(120,754,947565,0),
(121,754,7472,0),
(122,870,800975,0),
(123,870,368879,0),
(124,858,812610,0),
(125,754,409963,0),
(126,194,333633,0),
(127,653,853019,0),
(128,188,96161,0),
(129,592,18536,0),
(130,391,193074,0),
(131,120,558694,0),
(132,391,287606,0),
(133,120,144752,0),
(134,54,402728,0),
(135,754,848105,0),
(136,858,915595,0),
(137,391,241224,0),
(138,858,1181,0),
(139,858,278876,0),
(140,555,208503,0),
(141,188,749091,0),
(142,555,514104,0),
(143,630,809496,0),
(144,630,656165,0),
(145,179,933491,0),
(146,987,612200,0),
(147,858,288961,0),
(148,930,988478,0),
(149,705,695655,0),
(150,54,183138,0);
/*!40000 ALTER TABLE `pengeluaran_resep` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_validasi_resep_before_update
    BEFORE UPDATE ON pengeluaran_resep
    FOR EACH ROW
BEGIN
    DECLARE item_lengkap INT DEFAULT 0;
    DECLARE pesan_error VARCHAR(255);
    
    
    
    SELECT COUNT(*) INTO item_lengkap
    FROM resep_obat 
    WHERE id_resep = NEW.id_resep
      AND id_obat IS NOT NULL 
      AND id_obat != ''
      AND cara_pakai IS NOT NULL 
      AND cara_pakai != ''
      AND dosis IS NOT NULL 
      AND dosis != ''
      AND kuantitas IS NOT NULL 
      AND kuantitas > 0;
    
    
    IF item_lengkap = 0 THEN
        SET pesan_error = CONCAT('Gagal mengupdate pengeluaran resep ID: ', NEW.id_resep, 
                               '. Minimal satu item resep harus memiliki informasi lengkap ',
                               '(ID obat, cara pakai, dosis, dan kuantitas).');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = pesan_error;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengguna` (
  `email` varchar(255) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `chk_email` CHECK (`email` like '%_@__%.__%'),
  CONSTRAINT `ck_pengguna_kata_sandi_kuat` CHECK (octet_length(`kata_sandi`) >= 8 and `kata_sandi` regexp '[A-Z]' and `kata_sandi` regexp '[a-z]' and `kata_sandi` regexp '[0-9]')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` VALUES
('adikawastuti@example.net','@9G1XTMh','dr. Sadina Firmansyah, S.Psi','1952-08-01',72),
('aditya68@example.com','y3p3HUlt*)nsVfOl','Karen Nugroho','2008-11-21',16),
('agustinamutia@example.net','%&H3JNpF','Fitria Narpati, S.Kom','1981-01-20',44),
('almira32@example.com','&dm4MbEz','Dewi Nugroho','2006-04-20',19),
('ardiantodipa@example.org','^VLDgyqB6W3','Ir. Nurul Sihombing','2009-12-25',15),
('ardiantolulut@example.net','@U1JVFkinR','Surya Dabukke, S.Gz','1996-06-14',28),
('ausada@example.com','ZVj8!ogi(4FS','Drs. Nardi Saptono, S.I.Kom','1962-02-15',63),
('bagiyapurwanti@example.net','@!hISxpm3','H. Martana Padmasari, S.IP','1948-07-09',76),
('bakidin48@example.org','fa1@d*LlwYqC','Drs. Nardi Januar, S.Gz','1971-08-17',53),
('balamantri12@example.com','$N8uPjiu','Karsa Farida','1988-07-17',36),
('banaralazuardi@example.com','&XdWHqXU+mD1SL','T. Rafi Marpaung, M.Ak','1951-04-10',74),
('bdamanik@example.com','c(6PBOHW+#7!dnWe','Indah Adriansyah','1998-11-27',26),
('budimanlabuh@example.org','GK%hTavQEuN4xFr','Cut Kania Nasyidah','1962-06-08',63),
('budimanmulyono@example.org','V1QeD(Nb!L','Margana Pradipta','1996-05-11',29),
('budiyantotalia@example.com','(ZH03evL4SV6pr6','Daliman Prabowo','1992-12-25',32),
('cahyo51@example.com','d$8PzE$o','dr. Septi Puspasari','1987-04-30',38),
('caket30@example.com',')QlSAK29z4n)wRww','Hasan Lazuardi, S.Ked','2002-09-14',22),
('candradongoran@example.com','%o4P2Krg','KH. Nasim Haryanto, M.Ak','1989-11-14',35),
('carlapranowo@example.net','7U@$0Fzwb3x','Sari Yuliarti','1945-02-06',80),
('clatupono@example.net','Ll8BLnjc7@','R. Kenari Marpaung','1979-05-11',46),
('cnatsir@example.com','*p&SbYcC@w1','Rudi Agustina','1964-10-10',60),
('criyanti@example.com','s+b9TZzLtq','Drs. Pia Sinaga, S.H.','2007-03-03',18),
('dadi72@example.net','@F+3DF#e^','Capa Handayani','1999-07-28',25),
('damanikhasan@example.com','C$TS6X%jJo6($9','Cornelia Mustofa','1964-06-12',61),
('damunainggolan@example.net','nzD8MpZE#$9W','Sutan Samsul Suwarno, M.Pd','1974-04-29',51),
('darmajinovitasari@example.com','^Y4Aqz^0zl1Hg','Drs. Victoria Novitasari, S.Kom','1993-06-24',31),
('darmanhutapea@example.org','qTLFs*ct!78nDg','Purwanto Hidayat','1981-03-04',44),
('deviwaluyo@example.com','AXWP8PO2!(sl_rt','Banawi Siregar, S.E.I','2000-06-13',24),
('dongoranalambana@example.org','_kJeM9Ry1MN5d&Z','Artanto Tampubolon','1975-10-22',49),
('dpranowo@example.com','^3jmNaVpPMap','dr. Titi Wahyuni','2001-02-03',24),
('edisonmandala@example.org','Ya2HzxDjjr(O','Tgk. Sabar Jailani, M.Farm','1974-05-31',51),
('efujiati@example.net','p@5Cnqam','Lantar Utami','1957-10-17',67),
('ekusumo@example.org','_GE+fnj8r6Mec','Jais Ramadan, M.Pd','1999-01-23',26),
('endahhutagalung@example.com','$#9zXJWN6m(3OlfI','Mila Hidayat','1993-09-02',31),
('eva82@example.net','mgEH8oVi)L8s)','Mustika Permadi','1981-10-27',43),
('fdabukke@example.org','syeH6oRy$&v0ZCMo','Drs. Aurora Haryanti, S.Ked','2008-02-09',17),
('firgantorodipa@example.org','(3On*yEd$','Gaduh Saputra','1969-11-10',55),
('flaksmiwati@example.org','M91FzLcp*oTi','Ira Riyanti','1958-05-11',67),
('fujiatisari@example.com','$8RAS(klO2i','Febi Haryanto','1966-06-24',58),
('fwahyuni@example.org','#eFlj+e@8','Vanesa Maryati','1960-01-20',65),
('fwaluyo@example.net','L$2IYP$oVBO%','Icha Melani','1975-06-03',50),
('fwidiastuti@example.com','5D%LOf6Ou34Cj','Tina Iswahyudi','1973-03-28',52),
('gandi11@example.com','f283NIqg8u@z#APk','Puput Yuniar','2014-02-10',11),
('gantar78@example.net','q3ZKUMJD)z1S4VnO','Sari Pangestu','1979-07-12',45),
('gatotharyanto@example.org','0wbXRRIR&3mDTi','dr. Luhung Lailasari, M.TI.','2011-06-28',13),
('gatotmegantara@example.com','L5S6dFMe$8','Cahya Riyanti','2009-11-21',15),
('gilanghartati@example.net','B)%L9GsLLi','Elisa Siregar','1968-11-16',56),
('gnapitupulu@example.org','^1NLsMus','Azalea Firmansyah','1980-06-06',45),
('gprastuti@example.org','KH*SfVcT!6H9VX','Tiara Mansur','2013-03-10',12),
('gpratiwi@example.org','9W7V8Bq10O+U%G','Wira Zulkarnain','1967-01-23',58),
('gsitompul@example.org','O#94YiPg+8vwF','Ir. Atma Anggriawan, S.E.','2011-05-07',14),
('gusamah@example.com',')V4WBhuFM@zFVqh','Nova Lailasari','1976-11-18',48),
('hafshah89@example.net','*X20QjXgp','Zulfa Hidayat','2001-04-03',24),
('halimhari@example.org','MO!6F)El$JF','Dt. Argono Padmasari','1995-02-11',30),
('hamzahnurdiyanti@example.com','BZ^#7RIl#9CmA','Victoria Kusmawati','1945-12-19',79),
('hartana25@example.org','wW0etGdDK*$','Kania Narpati','2004-08-04',20),
('hasan93@example.net','p8tR@s4k*$V','Lintang Sitorus','1959-02-16',66),
('hassanaherik@example.net','9@5iDz@&V','Prakosa Maryadi','1987-02-06',38),
('hassanahfaizah@example.com','I*vUj_8u0^J72U','Langgeng Prakasa','1989-09-07',35),
('hidayatedi@example.net','Z)^L1fvabN9w','Calista Wijayanti','1972-08-18',52),
('hutapeamulyanto@example.org','#w@Wn+vu&84','Bakiadi Hutasoit','1999-07-30',25),
('ihabibi@example.com','#)6sHzk+$@KH8lb','Ilsa Zulkarnain','2007-10-13',17),
('ilsa84@example.net','0H(4OWAah(%(iCh','Cici Sihombing','1959-05-22',66),
('irawanunjani@example.com','sm30AOUeM#9W','Tina Wijaya','2002-12-17',22),
('irmahasanah@example.org','j)gEf0ZtXF#nb','Dt. Cawisadi Purnawati, M.Pd','2013-08-09',11),
('jamil71@example.com','#%3HgYeLSRC4A','Carla Widodo','1949-05-24',76),
('jayasimbolon@example.org','R0I4HW*4^nhZz$','Elvin Haryanti','1974-03-30',51),
('jindrafarida@example.net',')6A^fzpu%I6q(a','Jayeng Andriani','1958-02-21',67),
('jyuniar@example.org','_*$7TBXs','Kamaria Maheswara','1952-08-22',72),
('kawaca68@example.org','qonu@d0I#1QhKTl','Hani Utami, M.TI.','2014-06-27',10),
('kawacaardianto@example.org','80z0KoLV(gs','Zulfa Anggraini','1969-11-30',55),
('kembasinaga@example.com','8)d9QJAkXy7#c','Tari Thamrin, S.I.Kom','1948-08-15',76),
('keneshandayani@example.org','d*x4H4Bcj#','Rika Usada','2007-06-29',17),
('kmegantara@example.net','_4K+4O#*d36z','Gaman Wijayanti, M.TI.','1978-05-05',47),
('koko20@example.org','sVozTj4q+U6pAvWA','Bahuraksa Kusumo','1966-05-17',59),
('lilimanullang@example.org','1@$U1AvkAO','Nyoman Mandala, M.Farm','1988-08-25',36),
('lyuniar@example.com','w6460R3c*e','Drs. Kamaria Hariyah','1988-06-13',36),
('mahfudkusmawati@example.net','1$!5A0EqaM%5S','Olga Salahudin','1976-09-24',48),
('mahmud32@example.net','Yj@o6FWz!#IWWa','Yuliana Tarihoran','1981-08-14',43),
('maria05@example.com','hI_T0aNhN1af','Gina Wulandari','1970-12-03',54),
('marpaunggara@example.com','5jg!DBDk$C','Juli Pudjiastuti','1986-08-12',38),
('maryatiprayitna@example.com','U$65ED7e','Syahrini Maulana, M.M.','2002-09-09',22),
('maulanayusuf@example.com','1)+PI0HD(b1S4xm','Ian Saefullah','1985-03-28',40),
('megantaraismail@example.org','^03XYl7V1','drg. Yessi Budiyanto','2000-09-16',24),
('mharyanto@example.org','+2ycUZ17o$Y','Bakiono Farida','1991-12-05',33),
('mhutasoit@example.org','@z85v#GqUo50oO^','Puti Titin Widiastuti','1974-10-28',50),
('mitrasiregar@example.org','Xb1niuzQ$8I','Prabu Megantara, S.IP','1986-01-13',39),
('najmudindina@example.net','+2WdGyVLkZ','Irma Usamah','1981-06-22',43),
('namagaimam@example.net','+)ownGtlT_^)2fUH','Lukman Januar','2002-06-18',22),
('nbudiman@example.net','#u*4NAeZ','Opung Jailani','1948-01-10',77),
('nfarida@example.com','+s4Wtc)s','Tgk. Tomi Palastri','1949-10-08',75),
('nova53@example.net','A(Iq+CyC#B8','Sarah Hasanah','1984-09-25',40),
('novitasarijono@example.com','+9+CQTxuX','Tgk. Wage Budiyanto, S.Ked','1963-11-28',61),
('nurainiwadi@example.com','y24$7DspJ','Edison Safitri','1984-06-26',40),
('nurdiyantijumadi@example.net','(6G(vj9KHb(cix$!','Gandi Mangunsong, S.IP','2000-10-04',24),
('ogunarto@example.org','QOZb5J*&$4N3Sv','Makuta Dabukke','1984-10-05',40),
('ogunawan@example.org','^0gAnFh5&V','Maimunah Yuniar','1998-12-26',26),
('oliva63@example.org','^4Qj*1Ksuj+A&gNT','Muni Wahyudin, S.Pt','1953-12-17',71),
('padmi90@example.net','A3s$^mV8dI6W#g','Bancar Puspita','1994-01-31',31),
('pdongoran@example.com','t!3z6PqC','Drs. Umay Saragih','2012-03-11',13),
('phakim@example.net','#3&2JTr9u','Shakila Maheswara','2002-03-28',23),
('ppadmasari@example.net','^2H6j1nmcC','Ami Narpati','1963-03-30',62),
('prabowo25@example.com','gDDGF^a(*2f','Cut Rahmi Salahudin, M.Ak','1978-02-11',47),
('pradiptabelinda@example.com','&lmNP6iQ81nA','Eli Utama','2011-05-04',14),
('prasetyatirta@example.com','V^fKDo4@d+95Y1hi','Bakiadi Prayoga','1951-11-01',73),
('prasetyo68@example.com','2P+4TNn5^*@7m','Ulva Hassanah','1999-10-16',25),
('prasetyo78@example.net','@y!@I*cwp25L','dr. Gasti Sinaga','1952-06-19',72),
('prayogo05@example.org','bF&+7U2z','Candra Waluyo, M.TI.','1964-07-01',60),
('purwadi68@example.net','b0F$I4Gw)','Adikara Oktaviani','1983-02-17',42),
('puspitatira@example.net','^cDtS56r7B0w0Jf','Tgk. Teguh Ramadan','1952-08-19',72),
('rahimahhimawan@example.net','Vdsl)Upy$Sn0KBb','H. Waluyo Setiawan','1986-06-22',38),
('rahmawatiumaya@example.org','yD6T3gsP$Q0','Jagapati Suryatmi','1954-04-03',71),
('safinawibisono@example.net','Q4v8ZqSI1(rJ','Patricia Kusumo, S.Pt','1965-12-17',59),
('saifulsirait@example.com','Yp2Gt7LU+HDADzn','Laksana Hariyah','2011-09-03',13),
('santosodanuja@example.org','H)LP0qNf&v4AtE!','Drs. Alika Uyainah, M.Farm','1962-12-17',62),
('sihombingwawan@example.org','(2_5DF%jAR','Hasna Wibowo','1986-10-20',38),
('sitidongoran@example.net','&gr!ZsI_52','Bajragin Wacana','1956-04-24',69),
('snapitupulu@example.com','222Mle6HD$UzhXb@','Ajeng Wastuti','2001-01-17',24),
('ssafitri@example.org','C4B#BhWFEY_ioQ4','Dinda Simbolon','1954-07-11',70),
('suartiniatmaja@example.com','4bG9df)o_a9y_N','Luhung Wahyuni','1997-06-28',27),
('suryonorangga@example.org','Xv9o!EMy!3','Titin Damanik','1978-03-24',47),
('suryonoyuliana@example.org','EGiBbBgr*#*1jDp','Cinthia Santoso','2009-11-21',15),
('tarihorantaufan@example.net','&)_P2)nBR)4','Hj. Tantri Iswahyudi','1966-11-18',58),
('tomisitompul@example.com','0mj#2A0yiQKwVE','Febi Hardiansyah','1964-06-22',60),
('tsimbolon@example.net','L!1jJQhR','Anom Andriani','2009-10-24',15),
('twidiastuti@example.org','@ymqbQlkri%6','Nilam Sirait','1963-05-17',62),
('umangunsong@example.net','Dk&4Av8Q!*LNUQ','Tgk. Lalita Rahimah, M.TI.','1977-06-28',47),
('umayaardianto@example.org','a93OpgVkU%y@','Dariati Wasita','1987-02-19',38),
('upuspasari@example.net','G*3oWqEz&x!','Lanjar Kuswandari','1957-06-01',68),
('vinomulyani@example.net','+2)5Nwan_9','R.A. Lala Hasanah','1958-04-16',67),
('virman47@example.com','%BUmVOmUf67A','Suci Situmorang','1970-10-07',54),
('wasitaputri@example.com','9%Q1Uu%KEhp9Op','Cinthia Haryanti','1978-02-14',47),
('wawan47@example.com','H^5lk7XbZyJ','Ir. Najib Yuliarti, S.Pd','1993-05-01',32),
('wibisonoembuh@example.com','t_^DQ)^vAF88mHDS','Dt. Atma Sitompul','1983-01-22',42),
('wibowolegawa@example.org','8D6_dYXvR#6Z','Elon Hasanah, S.Ked','2011-08-28',13),
('widiastutibaktianto@example.com','+0XM2Q*a','Hartaka Riyanti','1992-08-29',32),
('widiastutihalima@example.net','0IGNm!e+#yl2','Najwa Halimah','2002-10-03',22),
('widodocecep@example.org','(4hTTr6ksiL6YWG','Aditya Narpati','1973-06-20',51),
('winarnobahuwirya@example.net','Tovp4#Nelo)aq','Dina Astuti','1952-03-12',73),
('wirdarajata@example.com','!8Z6ORa^%O+52J','Uchita Simanjuntak','1977-06-12',48),
('wwidodo@example.com','#59sgQIG2j%GfHNh','Genta Uyainah, M.Pd','1966-08-12',58),
('xirawan@example.net','$DKWje&d0','Ganda Waluyo','1990-03-13',35),
('yardianto@example.net',')Udx8#Lx(!','R. Mulyono Namaga, S.I.Kom','1971-11-11',53),
('yono80@example.com','&Z+1JpsGh','Among Sinaga','1954-11-21',70),
('yuliantibanawa@example.com','+be$8C0no!Cq6','Vivi Hidayanto','1946-03-10',79),
('yuniarhumaira@example.org','BA#Dm4Wo#t','Bakti Hutagalung','2002-07-11',22),
('yuniartiara@example.com','el3F_oh2+','Endah Natsir','1974-03-13',51),
('zalindra43@example.org','Q^6Lrt3soK4','Bakda Habibi, S.Pt','1995-10-31',29),
('zelda37@example.com','GY)eK0SlIJnS','Cut Oni Marpaung','2012-03-06',13),
('zmarbun@example.net','+i7RlZncjn5Cr','Dodo Simbolon','2003-07-04',21);
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resep_obat`
--

DROP TABLE IF EXISTS `resep_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `resep_obat` (
  `id_obat` int(11) NOT NULL,
  `id_resep` int(11) NOT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  `cara_pakai` varchar(255) NOT NULL,
  `kuantitas` int(11) NOT NULL DEFAULT 1 CHECK (`kuantitas` > 0),
  PRIMARY KEY (`id_obat`,`id_resep`),
  KEY `id_resep` (`id_resep`),
  CONSTRAINT `resep_obat_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`),
  CONSTRAINT `resep_obat_ibfk_2` FOREIGN KEY (`id_resep`) REFERENCES `pengeluaran_resep` (`id_resep`),
  CONSTRAINT `ck_resep_dosis_carapakai_konsisten` CHECK ((`cara_pakai`  not like '%tablet%' and `cara_pakai`  not like '%kapsul%' or `dosis` is not null and `dosis`  not like '%ml%' and `dosis`  not like '%cc%') and (`cara_pakai`  not like '%sirup%' and `cara_pakai`  not like '%tetes%' or `dosis` is not null and (`dosis` like '%ml%' or `dosis` like '%cc%')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep_obat`
--

LOCK TABLES `resep_obat` WRITE;
/*!40000 ALTER TABLE `resep_obat` DISABLE KEYS */;
INSERT INTO `resep_obat` VALUES
(166,208503,'2x sehari 1 kapsul','Telan utuh dengan air',5),
(166,593215,'2x sehari 1 tetes','Sesudah makan',4),
(166,853019,'2x sehari 2 kapsul','Telan utuh dengan air',1),
(166,863531,'2x sehari 1 ml sirup','Dicampur air',4),
(322,368879,'2x sehari 1 tablet','Telan utuh dengan air',1),
(322,409963,'3x sehari 1 supp','Saat makan',5),
(322,879107,'1x sehari 1 ml sirup','Sebelum makan',3),
(322,902952,'3x sehari 1 kapsul','Pagi hari',1),
(1650,218719,'3x sehari 1 ml sirup','Sesudah makan',2),
(1650,333633,'2x sehari 2 tablet','Telan utuh dengan air',3),
(1650,514104,'2x sehari 2 supp','Sesudah makan',2),
(1650,853019,'2x sehari 2 supp','Sesudah makan',2),
(1650,915595,'2x sehari 2 tablet','Saat makan',3),
(1905,518169,'1x sehari 2 ml sirup','Sesudah makan',5),
(1905,612200,'3x sehari 1 tetes','Saat makan',3),
(1905,723628,'2x sehari 1 tablet','Sesudah makan',1),
(1905,749091,'1x sehari 1 tablet','Dihancurkan jika perlu',2),
(1905,800975,'3x sehari 1 kapsul','Sesudah makan',3),
(1905,988478,'3x sehari 2 ml sirup','Langsung diminum',4),
(2003,144752,'1x sehari 1 kapsul','Telan utuh dengan air',3),
(2003,278876,'1x sehari 2 tablet','Saat makan',1),
(2003,974970,'2x sehari 2 supp','Malam hari',2),
(2580,96161,'1x sehari 1 tetes','Saat makan',2),
(2580,514104,'1x sehari 1 tablet','Dihancurkan jika perlu',2),
(2580,933491,'2x sehari 1 ml sirup','Malam hari',1),
(2699,183138,'3x sehari 2 tetes','Dicampur air',2),
(2699,241224,'2x sehari 1 ml sirup','Pagi hari',5),
(2699,350600,'3x sehari 1 kapsul','Pagi hari',3),
(2699,409963,'3x sehari 2 tablet','Sesudah makan',5),
(2699,723628,'3x sehari 1 tetes','Saat makan',5),
(2699,944599,'2x sehari 2 ml sirup','Malam hari',4),
(2699,974026,'2x sehari 2 tetes','Malam hari',4),
(2699,998772,'1x sehari 1 kapsul','Pagi hari',2),
(2796,244249,'2x sehari 2 tablet','Sebelum makan',4),
(2796,333633,'1x sehari 2 tetes','Sebelum makan',3),
(2796,560542,'2x sehari 1 tetes','Dicampur air',3),
(2796,902952,'3x sehari 2 ml sirup','Dicampur air',1),
(2796,947565,'2x sehari 1 ml sirup','Saat makan',3),
(3300,96161,'1x sehari 2 kapsul','Dihancurkan jika perlu',1),
(3300,242833,'1x sehari 1 ml sirup','Malam hari',4),
(3300,601978,'2x sehari 2 tablet','Dihancurkan jika perlu',5),
(3300,848105,'1x sehari 1 tetes','Pagi hari',4),
(3615,402728,'3x sehari 2 kapsul','Telan utuh dengan air',2),
(3615,612200,'2x sehari 2 tetes','Dicampur air',3),
(3615,695655,'1x sehari 1 tablet','Pagi hari',4),
(3615,712081,'2x sehari 2 ml sirup','Saat makan',2),
(3615,940067,'3x sehari 2 tetes','Langsung diminum',4),
(3615,974026,'1x sehari 2 ml sirup','Sebelum makan',3),
(3615,988478,'1x sehari 2 ml sirup','Langsung diminum',5),
(4348,183138,'1x sehari 2 tablet','Dihancurkan jika perlu',4),
(4348,193074,'3x sehari 1 kapsul','Sesudah makan',3),
(4348,593215,'3x sehari 1 tablet','Sesudah makan',2),
(4348,809496,'2x sehari 1 ml sirup','Dicampur air',5),
(5239,1181,'1x sehari 2 tetes','Saat makan',4),
(5239,695655,'1x sehari 2 tetes','Langsung diminum',3),
(5239,809496,'2x sehari 1 tablet','Saat makan',3),
(5992,287606,'3x sehari 1 ml sirup','Langsung diminum',5),
(5992,455850,'2x sehari 2 supp','Malam hari',3),
(5992,656165,'2x sehari 1 tablet','Pagi hari',1),
(5992,812610,'1x sehari 2 supp','Saat makan',1),
(5992,915595,'1x sehari 2 tablet','Telan utuh dengan air',4),
(6202,208503,'1x sehari 2 supp','Pagi hari',4),
(6202,288961,'2x sehari 1 tetes','Sesudah makan',5),
(6202,350600,'2x sehari 1 supp','Sebelum makan',3),
(6202,455850,'1x sehari 1 kapsul','Dihancurkan jika perlu',5),
(6202,940067,'3x sehari 1 supp','Pagi hari',3),
(6341,1181,'2x sehari 1 tablet','Saat makan',1),
(6341,7472,'3x sehari 2 tablet','Sesudah makan',2),
(6341,218719,'1x sehari 1 kapsul','Sesudah makan',4),
(6341,848105,'3x sehari 2 supp','Sesudah makan',3),
(6341,944599,'2x sehari 1 ml sirup','Saat makan',4),
(6396,287606,'1x sehari 1 ml sirup','Malam hari',2),
(6396,518169,'3x sehari 2 ml sirup','Pagi hari',3),
(6396,601978,'3x sehari 2 supp','Pagi hari',3),
(6396,812610,'1x sehari 1 tablet','Telan utuh dengan air',2),
(6396,879107,'2x sehari 1 ml sirup','Saat makan',5),
(6396,947565,'1x sehari 2 tetes','Sebelum makan',2),
(7858,18536,'2x sehari 1 tablet','Telan utuh dengan air',1),
(7858,242833,'1x sehari 1 kapsul','Sebelum makan',4),
(7858,244249,'3x sehari 2 supp','Sesudah makan',1),
(7858,288961,'2x sehari 2 kapsul','Telan utuh dengan air',5),
(7858,558694,'3x sehari 2 ml sirup','Sesudah makan',2),
(8776,7472,'2x sehari 1 ml sirup','Saat makan',2),
(8776,402728,'1x sehari 1 tablet','Sesudah makan',3),
(8776,749091,'3x sehari 1 kapsul','Dihancurkan jika perlu',4),
(8776,800975,'1x sehari 2 tablet','Sesudah makan',1),
(8776,933491,'1x sehari 1 ml sirup','Sesudah makan',1),
(8776,998772,'2x sehari 1 supp','Saat makan',2),
(9477,144752,'3x sehari 2 tetes','Saat makan',3),
(9477,278876,'3x sehari 1 supp','Malam hari',2),
(9477,368879,'3x sehari 1 kapsul','Telan utuh dengan air',3),
(9477,974970,'2x sehari 1 ml sirup','Dicampur air',3),
(9858,18536,'1x sehari 1 tablet','Saat makan',4),
(9858,193074,'2x sehari 2 tetes','Malam hari',4),
(9858,241224,'2x sehari 1 ml sirup','Dicampur air',1),
(9858,558694,'3x sehari 1 kapsul','Pagi hari',1),
(9858,560542,'2x sehari 1 kapsul','Dihancurkan jika perlu',4),
(9858,656165,'1x sehari 2 tetes','Sesudah makan',3),
(9858,712081,'1x sehari 1 tetes','Malam hari',3),
(9858,863531,'2x sehari 2 tablet','Dihancurkan jika perlu',2);
/*!40000 ALTER TABLE `resep_obat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rumah_sakit`
--

DROP TABLE IF EXISTS `rumah_sakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rumah_sakit` (
  `id_rumah_sakit` int(11) NOT NULL,
  `nama_rumah_sakit` varchar(255) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rumah_sakit`
--

LOCK TABLES `rumah_sakit` WRITE;
/*!40000 ALTER TABLE `rumah_sakit` DISABLE KEYS */;
INSERT INTO `rumah_sakit` VALUES
(54,'RS Tbk Binjai','Kepulauan Bangka Belitung','Kota Administrasi Jakarta Barat','Jl. Pasir Koja No. 52'),
(120,'RS Tbk Meulaboh','Sumatera Selatan','Bandung','Jalan Soekarno Hatta No. 3'),
(179,'RS Tbk Pangkalpinang','Sulawesi Tengah','Cirebon','Gang Kutisari Selatan No. 05'),
(188,'RS (Persero) Tbk Blitar','Nusa Tenggara Barat','Pontianak','Gg. HOS. Cokroaminoto No. 6'),
(194,'RS Tbk Pasuruan','Nusa Tenggara Barat','Solok','Gg. Cikutra Timur No. 77'),
(391,'RS Tbk Pematangsiantar','Jawa Timur','Cilegon','Jl. Ciumbuleuit No. 42'),
(464,'RS Tbk Sawahlunto','Kalimantan Tengah','Sabang','Jalan Jend. A. Yani No. 8'),
(555,'RS Tbk Tomohon','Kepulauan Bangka Belitung','Kotamobagu','Gg. Cikutra Barat No. 587'),
(592,'RS Tbk Tangerang Selatan','Jambi','Balikpapan','Gg. Gegerkalong Hilir No. 0'),
(630,'RS (Persero) Tbk Subulussalam','Sulawesi Tenggara','Kota Administrasi Jakarta Barat','Gg. Rumah Sakit No. 02'),
(653,'RS (Persero) Tbk Tarakan','Maluku Utara','Tanjungpinang','Jl. Jamika No. 9'),
(705,'RS (Persero) Tbk Mataram','Papua Barat','Purwokerto','Gang Cihampelas No. 59'),
(754,'RS (Persero) Tbk Pontianak','Kepulauan Riau','Manado','Gang Suniaraja No. 6'),
(774,'RS Tbk Bandar Lampung','Kalimantan Tengah','Bogor','Jl. Cihampelas No. 8'),
(784,'RS (Persero) Tbk Sorong','Riau','Tidore Kepulauan','Jalan Waringin No. 911'),
(804,'RS (Persero) Tbk Kotamobagu','Sumatera Utara','Palembang','Jl. Antapani Lama No. 595'),
(858,'RS (Persero) Tbk Kota Administrasi Jakarta Pusat','Jawa Tengah','Kediri','Gang PHH. Mustofa No. 408'),
(870,'RS Tbk Bontang','DKI Jakarta','Pangkalpinang','Gg. Lembong No. 3'),
(930,'RS Tbk Meulaboh','DI Yogyakarta','Solok','Jl. Kendalsari No. 679'),
(987,'RS (Persero) Tbk Tidore Kepulauan','Lampung','Banjar','Gg. Jend. A. Yani No. 810');
/*!40000 ALTER TABLE `rumah_sakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_baymin`
--

DROP TABLE IF EXISTS `status_baymin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_baymin` (
  `firmware_baymin` int(11) NOT NULL,
  `suhu` decimal(5,2) NOT NULL,
  `status_baterai` enum('Low','Medium','Full') NOT NULL DEFAULT 'Full',
  `warna_perangkat` varchar(50) NOT NULL,
  PRIMARY KEY (`firmware_baymin`),
  CONSTRAINT `status_baymin_ibfk_1` FOREIGN KEY (`firmware_baymin`) REFERENCES `pasien` (`firmware_baymin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_baymin`
--

LOCK TABLES `status_baymin` WRITE;
/*!40000 ALTER TABLE `status_baymin` DISABLE KEYS */;
INSERT INTO `status_baymin` VALUES
(10235,36.50,'Full','Putih'),
(10831,36.50,'Full','Putih'),
(11515,36.50,'Full','Putih'),
(11952,36.50,'Full','Putih'),
(13143,36.50,'Full','Putih'),
(13610,36.50,'Full','Putih'),
(17087,36.50,'Full','Putih'),
(17235,36.50,'Full','Putih'),
(19464,36.50,'Full','Putih'),
(21780,36.50,'Full','Putih'),
(22413,36.50,'Full','Putih'),
(22947,36.50,'Full','Putih'),
(25959,36.50,'Full','Putih'),
(28019,36.50,'Full','Putih'),
(29638,36.50,'Full','Putih'),
(34946,36.50,'Full','Putih'),
(38195,36.50,'Full','Putih'),
(43560,36.50,'Full','Putih'),
(50497,36.50,'Full','Putih'),
(52139,36.50,'Full','Putih'),
(54307,36.50,'Full','Putih'),
(54452,36.50,'Full','Putih'),
(62197,36.50,'Full','Putih'),
(62809,36.50,'Full','Putih'),
(63889,36.50,'Full','Putih'),
(64382,36.50,'Full','Putih'),
(66822,36.50,'Full','Putih'),
(66929,36.50,'Full','Putih'),
(67045,36.50,'Full','Putih'),
(71043,36.50,'Full','Putih'),
(72754,36.50,'Full','Putih'),
(74028,36.50,'Full','Putih'),
(74427,36.50,'Full','Putih'),
(77387,36.50,'Full','Putih'),
(78160,36.50,'Full','Putih'),
(79404,36.50,'Full','Putih'),
(80503,36.50,'Full','Putih'),
(80977,36.50,'Full','Putih'),
(81493,36.50,'Full','Putih'),
(83109,36.50,'Full','Putih'),
(85799,36.50,'Full','Putih'),
(88906,36.50,'Full','Putih'),
(89928,36.50,'Full','Putih'),
(90916,36.50,'Full','Putih'),
(90966,36.50,'Full','Putih'),
(93083,36.50,'Full','Putih'),
(94193,36.50,'Full','Putih'),
(94377,36.50,'Full','Putih'),
(97274,36.50,'Full','Putih'),
(97963,36.50,'Full','Putih');
/*!40000 ALTER TABLE `status_baymin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telepon_pengguna`
--

DROP TABLE IF EXISTS `telepon_pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `telepon_pengguna` (
  `email` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  PRIMARY KEY (`no_telepon`),
  UNIQUE KEY `no_telepon` (`no_telepon`),
  KEY `telepon_pengguna_ibfk_1` (`email`),
  CONSTRAINT `telepon_pengguna_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telepon_pengguna`
--

LOCK TABLES `telepon_pengguna` WRITE;
/*!40000 ALTER TABLE `telepon_pengguna` DISABLE KEYS */;
INSERT INTO `telepon_pengguna` VALUES
('adikawastuti@example.net','+62 (0335) 055 1277'),
('adikawastuti@example.net','+62-11-544-3119'),
('adikawastuti@example.net','081 406 1614'),
('aditya68@example.com','(032) 708 2160'),
('aditya68@example.com','+62 (0383) 829-8272'),
('almira32@example.com','+62-010-616-0002'),
('ardiantolulut@example.net','+62 (080) 489 0136'),
('ardiantolulut@example.net','+62 (571) 368 5126'),
('ausada@example.com','(0270) 706-2802'),
('ausada@example.com','(0479) 131-4129'),
('ausada@example.com','+62-047-982-5109'),
('ausada@example.com','087 231 7387'),
('bagiyapurwanti@example.net','(039) 355-1448'),
('bakidin48@example.org','+62-0535-550-5434'),
('banaralazuardi@example.com','(016) 759-0771'),
('banaralazuardi@example.com','+62 (060) 577-4915'),
('banaralazuardi@example.com','0842050136'),
('banaralazuardi@example.com','0856529006'),
('bdamanik@example.com','+62 (0020) 708-3020'),
('bdamanik@example.com','+62 (78) 048-3094'),
('budimanlabuh@example.org','+62 (064) 614-2058'),
('budimanmulyono@example.org','+62 (025) 307 0726'),
('budiyantotalia@example.com','+62 (0771) 915 2203'),
('budiyantotalia@example.com','+62 (816) 615 5605'),
('budiyantotalia@example.com','+62 (87) 510-6709'),
('cahyo51@example.com','+62 (0153) 026 4127'),
('caket30@example.com','(0076) 641 3499'),
('caket30@example.com','(081) 984 9176'),
('caket30@example.com','+62-006-031-7254'),
('caket30@example.com','+62-32-363-7094'),
('candradongoran@example.com','+62 (72) 007 0035'),
('candradongoran@example.com','+62-056-849-0496'),
('clatupono@example.net','(041) 233 1996'),
('clatupono@example.net','+62-0559-022-8861'),
('clatupono@example.net','087 520 6221'),
('cnatsir@example.com','+62 (968) 733 6730'),
('cnatsir@example.com','+62-05-002-8486'),
('dadi72@example.net','(0199) 562-2482'),
('damanikhasan@example.com','(027) 468-2329'),
('damanikhasan@example.com','+62-732-015-3295'),
('damunainggolan@example.net','(0649) 545 2443'),
('damunainggolan@example.net','(080) 488 8775'),
('damunainggolan@example.net','+62 (0434) 438 9562'),
('darmajinovitasari@example.com','+62 (368) 463-8832'),
('deviwaluyo@example.com','+62 (99) 158 0597'),
('dongoranalambana@example.org','(0663) 936 9275'),
('dongoranalambana@example.org','+62-077-913-8722'),
('dongoranalambana@example.org','+62-847-507-9816'),
('dpranowo@example.com','(071) 507 1672'),
('edisonmandala@example.org','+62 (028) 876 4452'),
('ekusumo@example.org','(053) 358-1849'),
('ekusumo@example.org','(055) 382 0705'),
('endahhutagalung@example.com','(091) 746 1838'),
('endahhutagalung@example.com','+62 (080) 150-4448'),
('endahhutagalung@example.com','+62 (087) 878-6050'),
('endahhutagalung@example.com','+62 (0890) 946 4448'),
('endahhutagalung@example.com','+62 (585) 348-9781'),
('endahhutagalung@example.com','+62-0275-505-2682'),
('eva82@example.net','+62 (114) 523 8956'),
('eva82@example.net','+62-099-280-3833'),
('eva82@example.net','+62-76-160-5653'),
('eva82@example.net','083 655 2894'),
('fdabukke@example.org','(0802) 376 0341'),
('firgantorodipa@example.org','+62-37-425-5766'),
('flaksmiwati@example.org','+62-63-861-9845'),
('fujiatisari@example.com','+62 (280) 055-6681'),
('fujiatisari@example.com','+62 (31) 436-0590'),
('fwahyuni@example.org','+62 (0121) 706-8538'),
('fwahyuni@example.org','+62 (34) 329 1308'),
('fwahyuni@example.org','+62-063-746-3230'),
('fwaluyo@example.net','+62 (680) 358-1599'),
('fwaluyo@example.net','+62-090-975-1401'),
('fwidiastuti@example.com','(0382) 968 3694'),
('fwidiastuti@example.com','(0710) 945 7444'),
('fwidiastuti@example.com','+62 (025) 163 7288'),
('gandi11@example.com','+62-0109-078-5680'),
('gantar78@example.net','+62 (792) 981-1933'),
('gatotharyanto@example.org','+62 (08) 379 9078'),
('gatotmegantara@example.com','(0218) 307-4543'),
('gatotmegantara@example.com','+62 (125) 283 7124'),
('gatotmegantara@example.com','+62-668-238-8011'),
('gnapitupulu@example.org','(020) 475-5921'),
('gnapitupulu@example.org','+62-12-805-4286'),
('gpratiwi@example.org','+62 (684) 204 1796'),
('gpratiwi@example.org','+62-040-900-5327'),
('gpratiwi@example.org','0875247092'),
('gsitompul@example.org','+62-953-607-5645'),
('gusamah@example.com','(0372) 309-3152'),
('gusamah@example.com','(0563) 260 3912'),
('gusamah@example.com','(0782) 097 1850'),
('gusamah@example.com','+62 (376) 651-3467'),
('gusamah@example.com','+62 (676) 825-1667'),
('halimhari@example.org','+62 (0331) 052 8373'),
('hamzahnurdiyanti@example.com','+62 (21) 861 5930'),
('hasan93@example.net','+62-056-915-8440'),
('hasan93@example.net','+62-20-632-1862'),
('hasan93@example.net','0831852823'),
('hidayatedi@example.net','+62 (45) 026-6217'),
('hidayatedi@example.net','0880557545'),
('hutapeamulyanto@example.org','+62 (0995) 738 3727'),
('ihabibi@example.com','(0112) 305-6406'),
('ilsa84@example.net','+62 (007) 615 8091'),
('irawanunjani@example.com','+62-0706-440-0029'),
('jamil71@example.com','+62 (83) 603 8776'),
('jamil71@example.com','+62-444-732-4353'),
('jamil71@example.com','0877695726'),
('jayasimbolon@example.org','+62 (067) 978 1502'),
('jayasimbolon@example.org','+62 (550) 834-8903'),
('jayasimbolon@example.org','+62-43-229-4861'),
('jyuniar@example.org','(049) 858 5716'),
('jyuniar@example.org','+62 (040) 791-9849'),
('kawaca68@example.org','+62 (049) 050 6319'),
('kawaca68@example.org','+62 (0550) 443-1835'),
('kawaca68@example.org','+62-031-797-8773'),
('kawacaardianto@example.org','(051) 440-3683'),
('kawacaardianto@example.org','+62 (803) 670-2692'),
('kawacaardianto@example.org','+62-069-247-6864'),
('kembasinaga@example.com','+62 (0718) 436 6508'),
('kmegantara@example.net','+62 (75) 412-2798'),
('kmegantara@example.net','+62-0307-775-1926'),
('kmegantara@example.net','+62-93-256-6164'),
('koko20@example.org','+62 (0190) 503 4152'),
('koko20@example.org','+62 (046) 547 8522'),
('koko20@example.org','084 474 3030'),
('lilimanullang@example.org','+62 (0125) 435-2517'),
('lyuniar@example.com','(044) 965-0109'),
('lyuniar@example.com','+62 (17) 243 5990'),
('mahfudkusmawati@example.net','(002) 629-1416'),
('mahmud32@example.net','(0305) 565-8581'),
('mahmud32@example.net','+62 (0175) 602 5391'),
('mahmud32@example.net','+62 (03) 635 0701'),
('maria05@example.com','+62 (964) 893 5002'),
('maria05@example.com','+62-057-717-8009'),
('marpaunggara@example.com','+62-0649-218-0394'),
('marpaunggara@example.com','0861168352'),
('maryatiprayitna@example.com','+62 (01) 491 7347'),
('maryatiprayitna@example.com','+62 (0657) 935-2868'),
('maryatiprayitna@example.com','+62-080-043-7859'),
('maulanayusuf@example.com','+62 (473) 120-8714'),
('maulanayusuf@example.com','+62 (610) 317 7960'),
('maulanayusuf@example.com','+62-98-542-7198'),
('megantaraismail@example.org','+62 (0940) 062-1536'),
('megantaraismail@example.org','+62-82-133-7613'),
('megantaraismail@example.org','088 494 4371'),
('mharyanto@example.org','(037) 050-5857'),
('mharyanto@example.org','(048) 154-7762'),
('mharyanto@example.org','(084) 993-0316'),
('mharyanto@example.org','+62 (730) 189-4855'),
('mhutasoit@example.org','+62 (08) 331 3392'),
('mitrasiregar@example.org','(065) 615 1799'),
('mitrasiregar@example.org','+62 (0809) 847 9656'),
('mitrasiregar@example.org','+62 (31) 057 6363'),
('najmudindina@example.net','(098) 707-3850'),
('najmudindina@example.net','+62-640-020-0721'),
('namagaimam@example.net','0876264133'),
('nbudiman@example.net','+62 (0442) 332-6126'),
('nfarida@example.com','+62 (0031) 695 8645'),
('nova53@example.net','+62 (349) 175-1277'),
('novitasarijono@example.com','+62 (11) 939-0295'),
('novitasarijono@example.com','+62 (35) 331-2498'),
('novitasarijono@example.com','+62 (87) 770 6600'),
('nurainiwadi@example.com','(0150) 826-7212'),
('nurainiwadi@example.com','+62 (305) 103-8204'),
('nurainiwadi@example.com','086 006 6403'),
('nurdiyantijumadi@example.net','(0291) 996-9316'),
('nurdiyantijumadi@example.net','+62 (082) 760 4511'),
('nurdiyantijumadi@example.net','+62 (214) 743-7127'),
('nurdiyantijumadi@example.net','081 123 8404'),
('nurdiyantijumadi@example.net','082 284 7940'),
('ogunarto@example.org','+62 (623) 838-7382'),
('ogunawan@example.org','(0159) 920-1880'),
('ogunawan@example.org','+62 (040) 838-7269'),
('ogunawan@example.org','+62 (161) 315-5444'),
('ogunawan@example.org','+62 (71) 557-9203'),
('ogunawan@example.org','+62-78-149-0602'),
('oliva63@example.org','+62-871-865-4939'),
('padmi90@example.net','+62 (0885) 089-2509'),
('pdongoran@example.com','(0680) 345 1643'),
('pdongoran@example.com','+62 (0959) 925-3499'),
('pdongoran@example.com','0896642397'),
('phakim@example.net','+62-021-491-4659'),
('phakim@example.net','+62-728-325-4060'),
('ppadmasari@example.net','(087) 721-8801'),
('ppadmasari@example.net','+62 (0559) 628-2682'),
('ppadmasari@example.net','+62 (065) 126-1197'),
('ppadmasari@example.net','+62 (25) 757-3328'),
('ppadmasari@example.net','+62-005-191-3742'),
('pradiptabelinda@example.com','+62 (86) 034-8668'),
('pradiptabelinda@example.com','+62-040-903-3342'),
('prasetyo68@example.com','(0315) 494 9525'),
('prasetyo68@example.com','+62 (20) 253 2872'),
('prasetyo68@example.com','+62 (283) 634-0844'),
('prasetyo78@example.net','(0679) 789-4139'),
('prasetyo78@example.net','+62 (0130) 610 4395'),
('prasetyo78@example.net','+62 (018) 248 9597'),
('prasetyo78@example.net','+62 (294) 239 0664'),
('prasetyo78@example.net','+62 (98) 816-9147'),
('prayogo05@example.org','(091) 949-6110'),
('prayogo05@example.org','+62 (085) 871-2380'),
('prayogo05@example.org','+62 (86) 748-5947'),
('prayogo05@example.org','+62-09-529-5531'),
('purwadi68@example.net','+62 (0398) 131 6176'),
('purwadi68@example.net','+62 (217) 090 8861'),
('puspitatira@example.net','(0082) 733-7668'),
('rahimahhimawan@example.net','(096) 499-6015'),
('rahmawatiumaya@example.org','(074) 715-8969'),
('safinawibisono@example.net','+62 (530) 790-9716'),
('safinawibisono@example.net','+62 (994) 901-3915'),
('saifulsirait@example.com','(067) 702-9986'),
('saifulsirait@example.com','(088) 058-0282'),
('saifulsirait@example.com','+62 (01) 572 4751'),
('saifulsirait@example.com','+62 (0813) 418-7542'),
('saifulsirait@example.com','082 176 7526'),
('santosodanuja@example.org','+62 (0971) 094-2520'),
('santosodanuja@example.org','+62 (594) 677-4598'),
('santosodanuja@example.org','+62-47-488-0337'),
('sihombingwawan@example.org','(089) 184-8314'),
('sihombingwawan@example.org','+62 (590) 438 2521'),
('sihombingwawan@example.org','0845238056'),
('sihombingwawan@example.org','0867431405'),
('sitidongoran@example.net','+62 (21) 181 6144'),
('sitidongoran@example.net','+62 (64) 604 5239'),
('sitidongoran@example.net','+62-071-823-6997'),
('sitidongoran@example.net','+62-076-298-1357'),
('sitidongoran@example.net','082 029 0414'),
('ssafitri@example.org','(0084) 201 6370'),
('ssafitri@example.org','(025) 454-1728'),
('ssafitri@example.org','(0891) 669 6955'),
('ssafitri@example.org','+62 (079) 928 4656'),
('ssafitri@example.org','+62 (091) 471-5832'),
('suartiniatmaja@example.com','+62 (049) 574 4949'),
('suartiniatmaja@example.com','+62 (523) 602 3718'),
('suartiniatmaja@example.com','0806220737'),
('suryonorangga@example.org','+62 (0086) 228-1179'),
('suryonorangga@example.org','+62 (015) 166-0240'),
('suryonorangga@example.org','+62 (95) 635 8170'),
('suryonorangga@example.org','+62-0919-781-7018'),
('suryonorangga@example.org','+62-897-553-3438'),
('suryonorangga@example.org','0867572658'),
('suryonoyuliana@example.org','(0345) 401-2150'),
('suryonoyuliana@example.org','+62-0272-487-0249'),
('tarihorantaufan@example.net','+62 (51) 847 0821'),
('tarihorantaufan@example.net','+62-43-340-3962'),
('tomisitompul@example.com','(0131) 067-1325'),
('tomisitompul@example.com','(0936) 426 9018'),
('tsimbolon@example.net','+62-71-981-5194'),
('twidiastuti@example.org','+62 (077) 948 1951'),
('twidiastuti@example.org','+62 (378) 393-7939'),
('umangunsong@example.net','+62 (60) 448 9441'),
('umayaardianto@example.org','(0723) 522-5411'),
('umayaardianto@example.org','+62 (090) 327 1707'),
('umayaardianto@example.org','+62 (356) 745 1592'),
('umayaardianto@example.org','089 602 8605'),
('upuspasari@example.net','+62 (0595) 044 1310'),
('vinomulyani@example.net','(058) 699 2516'),
('vinomulyani@example.net','+62 (010) 250 3491'),
('virman47@example.com','+62 (39) 477-9321'),
('virman47@example.com','+62 (39) 504-6316'),
('virman47@example.com','+62 (418) 424-4209'),
('virman47@example.com','0848630003'),
('wasitaputri@example.com','(049) 647 1846'),
('wasitaputri@example.com','+62-0256-564-1836'),
('wasitaputri@example.com','0884135262'),
('wawan47@example.com','(0371) 619-5411'),
('wawan47@example.com','0895684469'),
('wibisonoembuh@example.com','(008) 730 1597'),
('wibisonoembuh@example.com','+62 (62) 116-3675'),
('wibowolegawa@example.org','(030) 867-4556'),
('wibowolegawa@example.org','+62 (132) 918 2331'),
('wibowolegawa@example.org','+62 (69) 322 4085'),
('widiastutihalima@example.net','+62 (0295) 612-7397'),
('widiastutihalima@example.net','+62 (076) 632 4899'),
('widodocecep@example.org','(052) 930-2743'),
('widodocecep@example.org','+62 (0388) 993-2198'),
('widodocecep@example.org','+62-0608-268-9756'),
('winarnobahuwirya@example.net','+62 (011) 369-8001'),
('winarnobahuwirya@example.net','+62 (0843) 582 7623'),
('wirdarajata@example.com','(001) 923 5398'),
('wirdarajata@example.com','+62 (085) 656-7608'),
('wwidodo@example.com','(065) 209 3076'),
('wwidodo@example.com','084 332 6552'),
('xirawan@example.net','(096) 199 0025'),
('xirawan@example.net','+62 (0514) 323 1290'),
('xirawan@example.net','+62-07-334-1007'),
('xirawan@example.net','+62-59-414-6574'),
('yardianto@example.net','(076) 015-2553'),
('yono80@example.com','0856750222'),
('yuliantibanawa@example.com','+62-118-242-8160'),
('yuniarhumaira@example.org','+62-079-838-3091'),
('yuniarhumaira@example.org','086 138 3021'),
('yuniarhumaira@example.org','086 214 0132'),
('yuniarhumaira@example.org','086 394 6013'),
('zalindra43@example.org','+62 (0356) 406 9756'),
('zalindra43@example.org','+62 (056) 796 3423'),
('zelda37@example.com','(023) 443 7646'),
('zelda37@example.com','+62-512-802-8014'),
('zelda37@example.com','088 635 4792'),
('zmarbun@example.net','+62 (366) 306 5646'),
('zmarbun@example.net','+62-828-300-2574'),
('zmarbun@example.net','+62-930-641-5457');
/*!40000 ALTER TABLE `telepon_pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telepon_rumah_sakit`
--

DROP TABLE IF EXISTS `telepon_rumah_sakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `telepon_rumah_sakit` (
  `id_rumah_sakit` int(11) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  PRIMARY KEY (`no_telepon`),
  UNIQUE KEY `no_telepon` (`no_telepon`),
  KEY `telepon_rumah_sakit_ibfk_1` (`id_rumah_sakit`),
  CONSTRAINT `telepon_rumah_sakit_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telepon_rumah_sakit`
--

LOCK TABLES `telepon_rumah_sakit` WRITE;
/*!40000 ALTER TABLE `telepon_rumah_sakit` DISABLE KEYS */;
INSERT INTO `telepon_rumah_sakit` VALUES
(54,'+62 (014) 283 5891'),
(120,'+62 (0962) 342 3985'),
(179,'(0919) 818-0220'),
(179,'+62-0410-284-5842'),
(188,'(013) 740-7684'),
(188,'+62 (0578) 725-1312'),
(194,'+62 (0659) 437 1131'),
(194,'+62 (0983) 677-1184'),
(194,'+62 (717) 139 2546'),
(464,'+62 (0984) 617 9633'),
(464,'+62-86-134-7778'),
(555,'(0246) 940 6221'),
(555,'+62 (0520) 126 9158'),
(555,'+62 (070) 792 6628'),
(555,'0804051275'),
(592,'+62 (060) 678-0627'),
(592,'+62-764-630-8780'),
(592,'088 958 1551'),
(630,'+62 (580) 745-2414'),
(630,'+62-0691-722-0642'),
(653,'(004) 657-5353'),
(653,'+62 (066) 122-1489'),
(653,'+62 (54) 861 4817'),
(653,'+62-242-167-7222'),
(653,'0818930822'),
(705,'(0155) 144 0374'),
(705,'(068) 715-0122'),
(705,'+62 (57) 630 5966'),
(754,'(068) 337-7892'),
(754,'+62 (21) 568-3192'),
(774,'+62 (087) 604-8120'),
(774,'+62 (470) 920-6320'),
(774,'+62-0701-123-4041'),
(774,'080 674 2016'),
(774,'0842752282'),
(784,'+62 (004) 333-0005'),
(784,'+62-049-157-3297'),
(804,'+62 (003) 888-8888'),
(804,'+62 (020) 652 9636'),
(804,'+62 (25) 526-3623'),
(804,'+62 (469) 022-3100'),
(870,'(062) 378-0139'),
(870,'+62 (096) 304 5796'),
(870,'+62 (19) 211 1976'),
(870,'+62 (92) 851-8880'),
(870,'+62-273-402-2880'),
(870,'082 152 1376'),
(870,'085 098 6315'),
(930,'+62 (73) 655-5578'),
(930,'+62-833-831-5199');
/*!40000 ALTER TABLE `telepon_rumah_sakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenaga_medis`
--

DROP TABLE IF EXISTS `tenaga_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenaga_medis` (
  `email` varchar(255) NOT NULL,
  `nama_departemen` varchar(255) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  `NIKes` varchar(255) NOT NULL,
  `jenis_profesi` varchar(255) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `NIKes` (`NIKes`),
  KEY `nama_departemen` (`nama_departemen`,`id_rumah_sakit`),
  CONSTRAINT `tenaga_medis_ibfk_1` FOREIGN KEY (`nama_departemen`, `id_rumah_sakit`) REFERENCES `departemen` (`nama_departemen`, `id_rumah_sakit`),
  CONSTRAINT `tenaga_medis_ibfk_2` FOREIGN KEY (`nama_departemen`, `id_rumah_sakit`) REFERENCES `departemen` (`nama_departemen`, `id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenaga_medis`
--

LOCK TABLES `tenaga_medis` WRITE;
/*!40000 ALTER TABLE `tenaga_medis` DISABLE KEYS */;
INSERT INTO `tenaga_medis` VALUES
('adikawastuti@example.net','Umum',653,'0607509311929','Ahli Gizi'),
('aditya68@example.com','Kardiologi',930,'9094718517364','Perawat'),
('ardiantodipa@example.org','THT',120,'2364017428638','Perawat'),
('ardiantolulut@example.net','Anak',930,'5513685834785','Fisioterapis'),
('ausada@example.com','Kardiologi',188,'2290317152273','Apoteker'),
('bakidin48@example.org','Mata',858,'6087242990928','Perawat'),
('balamantri12@example.com','THT',555,'6499469754847','Dokter'),
('banaralazuardi@example.com','Ortopedi',592,'7708849832327','Bidan'),
('budimanmulyono@example.org','Umum',194,'6028405335736','Bidan'),
('budiyantotalia@example.com','Kulit',987,'4434785997273','Bidan'),
('cahyo51@example.com','Anak',179,'7602664793736','Fisioterapis'),
('caket30@example.com','Mata',804,'3598712504000','Fisioterapis'),
('candradongoran@example.com','THT',555,'4517878675606','Ahli Gizi'),
('carlapranowo@example.net','Mata',804,'0781914779991','Apoteker'),
('clatupono@example.net','Paru',120,'0096781291898','Apoteker'),
('cnatsir@example.com','Paru',592,'4605130084263','Perawat'),
('damunainggolan@example.net','Bedah',592,'3101345925243','Dokter'),
('darmajinovitasari@example.com','Kulit',179,'8456619457445','Ahli Gizi'),
('deviwaluyo@example.com','Mata',804,'7711291466286','Perawat'),
('dongoranalambana@example.org','Umum',630,'1649660786931','Apoteker'),
('dpranowo@example.com','THT',987,'6149442957320','Perawat'),
('efujiati@example.net','Umum',653,'3059513512453','Dokter'),
('ekusumo@example.org','THT',804,'0519836410506','Bidan'),
('endahhutagalung@example.com','Umum',464,'2155629055523','Bidan'),
('fdabukke@example.org','Umum',630,'1400688770650','Apoteker'),
('firgantorodipa@example.org','Umum',705,'3878864406729','Fisioterapis'),
('fujiatisari@example.com','Mata',653,'7797769240282','Fisioterapis'),
('fwahyuni@example.org','Bedah',592,'7041042048509','Fisioterapis'),
('fwaluyo@example.net','Umum',705,'8346120356088','Perawat'),
('fwidiastuti@example.com','Kardiologi',784,'8796144558577','Bidan'),
('gandi11@example.com','Umum',188,'0421770626656','Ahli Gizi'),
('gantar78@example.net','Umum',194,'8710349151708','Perawat'),
('gatotharyanto@example.org','Umum',930,'8937851698860','Bidan'),
('gnapitupulu@example.org','Bedah',464,'5177573576234','Ahli Gizi'),
('gprastuti@example.org','Paru',120,'7901313880231','Apoteker'),
('gpratiwi@example.org','Kardiologi',930,'0889341411177','Bidan'),
('hafshah89@example.net','Anak',784,'7660173163013','Ahli Gizi'),
('halimhari@example.org','Mata',858,'4547034946530','Fisioterapis'),
('hartana25@example.org','Bedah',179,'2183992399593','Bidan'),
('hassanaherik@example.net','Mata',653,'6994253267300','Fisioterapis'),
('hassanahfaizah@example.com','THT',784,'2793219760381','Dokter'),
('hutapeamulyanto@example.org','Psikiatri',653,'4824442969086','Ahli Gizi'),
('ihabibi@example.com','Kardiologi',188,'1187264359187','Ahli Gizi'),
('ilsa84@example.net','Bedah',179,'9136485492809','Apoteker'),
('irawanunjani@example.com','Paru',592,'5759971906297','Bidan'),
('jayasimbolon@example.org','Paru',120,'1936898982236','Fisioterapis'),
('jindrafarida@example.net','Kardiologi',858,'2301704365449','Ahli Gizi'),
('jyuniar@example.org','Umum',705,'1401108527724','Ahli Gizi'),
('kmegantara@example.net','THT',784,'9766621669422','Ahli Gizi'),
('lilimanullang@example.org','Kulit',188,'7725394056763','Perawat'),
('lyuniar@example.com','Umum',705,'6648163295921','Apoteker'),
('mahfudkusmawati@example.net','Kardiologi',784,'5614625472279','Fisioterapis'),
('mahmud32@example.net','Umum',464,'7254848481566','Perawat'),
('maria05@example.com','Mata',804,'2776430366303','Ahli Gizi'),
('megantaraismail@example.org','THT',784,'9525230910970','Ahli Gizi'),
('mharyanto@example.org','Neurologi',784,'2817675289054','Fisioterapis'),
('mhutasoit@example.org','THT',784,'8195427082493','Perawat'),
('mitrasiregar@example.org','Ortopedi',858,'4829521670662','Apoteker'),
('namagaimam@example.net','THT',784,'8275417913911','Fisioterapis'),
('nbudiman@example.net','THT',120,'5232634699953','Bidan'),
('nova53@example.net','Anak',784,'1546191426810','Ahli Gizi'),
('nurainiwadi@example.com','Bedah',391,'8510829437250','Fisioterapis'),
('ogunawan@example.org','Kulit',54,'7968201165344','Perawat'),
('padmi90@example.net','Umum',705,'4956265981379','Fisioterapis'),
('pdongoran@example.com','Mata',804,'9070360802652','Apoteker'),
('ppadmasari@example.net','Kulit',188,'7910366150390','Fisioterapis'),
('prabowo25@example.com','THT',555,'6735772738816','Ahli Gizi'),
('pradiptabelinda@example.com','Umum',194,'1518396062414','Apoteker'),
('prasetyatirta@example.com','Bedah',464,'3621004202015','Ahli Gizi'),
('prasetyo68@example.com','Kardiologi',930,'2929590127196','Perawat'),
('prasetyo78@example.net','Ortopedi',555,'1486537753753','Perawat'),
('prayogo05@example.org','Kardiologi',930,'3443875208817','Fisioterapis'),
('purwadi68@example.net','Paru',555,'8117347935987','Ahli Gizi'),
('puspitatira@example.net','Paru',555,'5005156520582','Perawat'),
('rahimahhimawan@example.net','Ortopedi',858,'0091531430909','Fisioterapis'),
('rahmawatiumaya@example.org','Umum',653,'2591445316460','Perawat'),
('safinawibisono@example.net','Bedah',464,'5385164408981','Dokter'),
('santosodanuja@example.org','THT',784,'4898764903028','Fisioterapis'),
('sihombingwawan@example.org','Ortopedi',858,'5738565771251','Apoteker'),
('sitidongoran@example.net','Umum',653,'3397876365232','Bidan'),
('snapitupulu@example.com','Bedah',179,'2364071312119','Apoteker'),
('ssafitri@example.org','Umum',464,'7273613924251','Bidan'),
('suartiniatmaja@example.com','Ortopedi',592,'0300416107424','Ahli Gizi'),
('tarihorantaufan@example.net','Kulit',54,'1168964456062','Ahli Gizi'),
('tsimbolon@example.net','Kulit',630,'3684595902788','Ahli Gizi'),
('twidiastuti@example.org','Kardiologi',120,'3715594890483','Fisioterapis'),
('umangunsong@example.net','Kardiologi',120,'4317994319626','Apoteker'),
('umayaardianto@example.org','Anak',179,'7544190034702','Bidan'),
('wasitaputri@example.com','Kardiologi',870,'9698150521752','Bidan'),
('wibowolegawa@example.org','Kardiologi',870,'5990309377871','Apoteker'),
('widiastutibaktianto@example.com','Mata',804,'0194626371672','Bidan'),
('widodocecep@example.org','Bedah',391,'0214712024562','Bidan'),
('wwidodo@example.com','Umum',188,'4275300159093','Apoteker'),
('xirawan@example.net','Ortopedi',555,'6266723467689','Ahli Gizi'),
('yono80@example.com','Kardiologi',870,'1773472436255','Perawat'),
('yuliantibanawa@example.com','Umum',930,'8477039370152','Dokter'),
('yuniarhumaira@example.org','Mata',653,'7595075929187','Dokter'),
('yuniartiara@example.com','Bedah',391,'8183913296301','Apoteker'),
('zelda37@example.com','Kulit',179,'8552707947680','Fisioterapis'),
('zmarbun@example.net','Psikiatri',870,'6575657229189','Apoteker');
/*!40000 ALTER TABLE `tenaga_medis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `top_20_obat`
--

DROP TABLE IF EXISTS `top_20_obat`;
/*!50001 DROP VIEW IF EXISTS `top_20_obat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `top_20_obat` AS SELECT
 1 AS `id_obat`,
  1 AS `label`,
  1 AS `frekuensi_resep` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `top_20_obat`
--

/*!50001 DROP VIEW IF EXISTS `top_20_obat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_20_obat` AS select `o`.`id_obat` AS `id_obat`,`o`.`label` AS `label`,count(`ro`.`id_obat`) AS `frekuensi_resep` from (`resep_obat` `ro` join `obat` `o` on(`ro`.`id_obat` = `o`.`id_obat`)) group by `o`.`id_obat`,`o`.`label` order by count(`ro`.`id_obat`) desc limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-31 22:47:45
