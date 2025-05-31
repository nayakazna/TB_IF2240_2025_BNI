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
('ajimansitompul@example.com','Bengkulu','Banjarbaru','Jalan Rajiman No. 2'),
('ajimansitompul@example.com','Lampung','Tasikmalaya','Gang Rajiman No. 5'),
('ajimansitompul@example.com','Nusa Tenggara Barat','Singkawang','Gang Jend. A. Yani No. 9'),
('amandasari@example.net','Riau','Gorontalo','Jl. Cihampelas No. 981'),
('amandasari@example.net','Sulawesi Selatan','Kediri','Gg. Cikapayang No. 9'),
('apurnawati@example.net','Bali','Batam','Jl. R.E Martadinata No. 749'),
('apurnawati@example.net','Kalimantan Tengah','Pangkalpinang','Gg. KH Amin Jasuta No. 381'),
('apurnawati@example.net','Sulawesi Selatan','Tual','Gg. Pelajar Pejuang No. 0'),
('aryanibakidin@example.net','Kalimantan Barat','Batu','Gg. Rumah Sakit No. 270'),
('asmuni48@example.org','Bengkulu','Kendari','Gang Jamika No. 36'),
('asmuni48@example.org','Jawa Tengah','Batam','Jl. KH Amin Jasuta No. 532'),
('asmuni48@example.org','Sulawesi Utara','Payakumbuh','Gg. Joyoboyo No. 40'),
('banawidabukke@example.org','Banten','Tarakan','Jalan Wonoayu No. 87'),
('banawidabukke@example.org','Kalimantan Tengah','Kota Administrasi Jakarta Pusat','Jalan Pasteur No. 2'),
('banawidabukke@example.org','Sulawesi Tengah','Sukabumi','Gg. Jakarta No. 224'),
('cawisonojailani@example.com','Banten','Probolinggo','Jalan Dr. Djunjunan No. 9'),
('cawisonojailani@example.com','Nusa Tenggara Timur','Pematangsiantar','Jalan Gegerkalong Hilir No. 484'),
('cawisonojailani@example.com','Sulawesi Barat','Kota Administrasi Jakarta Pusat','Jl. M.T Haryono No. 637'),
('danu06@example.com','Kalimantan Tengah','Kediri','Jalan KH Amin Jasuta No. 64'),
('danu06@example.com','Sulawesi Barat','Padangpanjang','Gang Jakarta No. 00'),
('dasa21@example.net','Papua','Bengkulu','Gang Ir. H. Djuanda No. 0'),
('ghani57@example.org','Banten','Bitung','Jalan Moch. Ramdan No. 36'),
('girawan@example.com','Riau','Probolinggo','Jalan Sadang Serang No. 1'),
('hairyanto00@example.com','Bengkulu','Kota Administrasi Jakarta Timur','Gg. Sadang Serang No. 579'),
('hana80@example.org','Kalimantan Barat','Makassar','Jalan Kapten Muslihat No. 9'),
('hana80@example.org','Kalimantan Timur','Pekanbaru','Gg. Yos Sudarso No. 7'),
('hana80@example.org','Nusa Tenggara Barat','Kendari','Jalan Soekarno Hatta No. 8'),
('hardiansyahsimon@example.net','Sumatera Selatan','Bau-Bau','Gg. Ronggowarsito No. 507'),
('hidayatgaran@example.org','Kalimantan Timur','Bukittinggi','Gang Cihampelas No. 4'),
('hidayatgaran@example.org','Sulawesi Tenggara','Metro','Jalan Rajawali Timur No. 3'),
('imarbun@example.net','Nusa Tenggara Barat','Purwokerto','Gang Tebet Barat Dalam No. 322'),
('imarbun@example.net','Sulawesi Barat','Makassar','Jl. Joyoboyo No. 8'),
('jaemansuryono@example.org','Kalimantan Barat','Kotamobagu','Gg. Cikutra Barat No. 120'),
('jaemansuryono@example.org','Sulawesi Utara','Padang','Jl. S. Parman No. 644'),
('janggraini@example.net','Jawa Barat','Sungai Penuh','Gang Cikapayang No. 62'),
('kamilanovitasari@example.com','Kalimantan Tengah','Mataram','Jalan Astana Anyar No. 1'),
('kamilanovitasari@example.com','Nusa Tenggara Barat','Manado','Gang Dipenogoro No. 60'),
('karjaoktaviani@example.net','Bengkulu','Tarakan','Gang Pasir Koja No. 197'),
('karjaoktaviani@example.net','Gorontalo','Tanjungpinang','Gg. Merdeka No. 544'),
('karjaoktaviani@example.net','Maluku Utara','Sawahlunto','Gang Setiabudhi No. 0'),
('ksuryono@example.net','Aceh','Sawahlunto','Jl. Dipatiukur No. 00'),
('ksuryono@example.net','Maluku','Tebingtinggi','Jl. Jend. A. Yani No. 854'),
('lalahastuti@example.com','Papua Barat','Kendari','Jl. Cihampelas No. 827'),
('lalahastuti@example.com','Sumatera Barat','Tangerang','Gg. Ir. H. Djuanda No. 8'),
('lalahastuti@example.com','Sumatera Selatan','Subulussalam','Gg. HOS. Cokroaminoto No. 3'),
('luwarwahyuni@example.net','DI Yogyakarta','Serang','Gang M.H Thamrin No. 81'),
('mandasarikurnia@example.org','Kepulauan Riau','Tanjungpinang','Jl. Moch. Toha No. 2'),
('mandasarikurnia@example.org','Sulawesi Utara','Tangerang','Jl. Rumah Sakit No. 81'),
('mujur75@example.org','Sumatera Selatan','Kupang','Gg. Dipatiukur No. 4'),
('nalarutama@example.org','Bali','Dumai','Jalan Dipatiukur No. 76'),
('nilam04@example.org','Sulawesi Utara','Lhokseumawe','Gang Surapati No. 8'),
('olivia33@example.org','Kalimantan Barat','Pangkalpinang','Jl. K.H. Wahid Hasyim No. 1'),
('olivia33@example.org','Sumatera Barat','Lubuklinggau','Gg. Yos Sudarso No. 82'),
('oramadan@example.net','Aceh','Tanjungbalai','Jl. Suryakencana No. 574'),
('paulin77@example.net','Jawa Barat','Malang','Gang Veteran No. 9'),
('paulin77@example.net','Kalimantan Utara','Singkawang','Jl. Jend. Sudirman No. 0'),
('qgunawan@example.net','Aceh','Surabaya','Gg. M.T Haryono No. 69'),
('qgunawan@example.net','Gorontalo','Bandar Lampung','Jalan Siliwangi No. 502'),
('qgunawan@example.net','Sulawesi Selatan','Manado','Gang KH Amin Jasuta No. 17'),
('qgunawan@example.net','Sumatera Barat','Sabang','Gang Asia Afrika No. 8'),
('radika64@example.com','DKI Jakarta','Pekanbaru','Jl. Stasiun Wonokromo No. 812'),
('radika64@example.com','Sulawesi Tengah','Purwokerto','Gg. Tubagus Ismail No. 363'),
('rafidkurniawan@example.org','Banten','Mataram','Gang Suniaraja No. 8'),
('rafidkurniawan@example.org','Nusa Tenggara Barat','Palu','Jl. Jamika No. 069'),
('raina87@example.com','Kalimantan Selatan','Makassar','Jalan Surapati No. 893'),
('rhutapea@example.net','Kepulauan Bangka Belitung','Probolinggo','Gang Surapati No. 3'),
('rpranowo@example.net','Banten','Sabang','Jalan Ir. H. Djuanda No. 97'),
('rpranowo@example.net','Jawa Barat','Bengkulu','Gg. Waringin No. 661'),
('rpranowo@example.net','Maluku Utara','Surakarta','Jl. S. Parman No. 2'),
('rudikurniawan@example.com','Bali','Kota Administrasi Jakarta Barat','Gang Merdeka No. 27'),
('rudikurniawan@example.com','Jawa Barat','Sabang','Jalan Suryakencana No. 36'),
('rudikurniawan@example.com','Jawa Tengah','Ternate','Jalan Suniaraja No. 841'),
('rudikurniawan@example.com','Maluku','Bau-Bau','Gang Erlangga No. 85'),
('safitrigadang@example.org','Kalimantan Utara','Pariaman','Jalan Moch. Toha No. 1'),
('simboloneka@example.com','Bengkulu','Ambon','Gang Waringin No. 82'),
('simboloneka@example.com','DI Yogyakarta','Ambon','Gg. Moch. Ramdan No. 1'),
('simboloneka@example.com','Kalimantan Barat','Makassar','Gang Setiabudhi No. 31'),
('simbolonkayun@example.com','Sumatera Barat','Palangkaraya','Jalan Gedebage Selatan No. 7'),
('sitompulmujur@example.org','Jawa Tengah','Langsa','Jalan Wonoayu No. 868'),
('sitompulmujur@example.org','Kepulauan Riau','Sawahlunto','Jalan Raya Ujungberung No. 9'),
('suryonogilda@example.org','Kalimantan Barat','Madiun','Jl. Rajiman No. 2'),
('suryonogilda@example.org','Kalimantan Timur','Lhokseumawe','Gang Peta No. 8'),
('uyainahlintang@example.org','Bali','Medan','Gang Rajiman No. 5'),
('uyainahlintang@example.org','Kepulauan Bangka Belitung','Pekalongan','Jalan KH Amin Jasuta No. 9'),
('uyainahlintang@example.org','Maluku Utara','Banjar','Jalan Cihampelas No. 31'),
('uyainahlintang@example.org','Papua Barat','Depok','Jl. Suniaraja No. 16'),
('uyainahlintang@example.org','Sulawesi Utara','Serang','Jl. Sadang Serang No. 1'),
('vkusumo@example.net','Sulawesi Selatan','Sorong','Gang Stasiun Wonokromo No. 1'),
('vkusumo@example.net','Sumatera Utara','Kediri','Gang Tebet Barat Dalam No. 8'),
('wahyuniatmaja@example.org','Kalimantan Barat','Subulussalam','Jl. Lembong No. 16'),
('wahyuniatmaja@example.org','Kalimantan Selatan','Bau-Bau','Jalan Rumah Sakit No. 862'),
('wahyuniatmaja@example.org','Kalimantan Timur','Kota Administrasi Jakarta Barat','Gang Jend. Sudirman No. 196'),
('wahyuniatmaja@example.org','Lampung','Padangpanjang','Gang BKR No. 154'),
('wahyuniatmaja@example.org','Papua Barat','Tanjungbalai','Jl. Kebonjati No. 329'),
('winarsiheman@example.com','Banten','Ternate','Jl. Rumah Sakit No. 8'),
('winarsiheman@example.com','Papua Barat','Tarakan','Jalan Antapani Lama No. 404'),
('yprabowo@example.net','DKI Jakarta','Banjarmasin','Gang Pasirkoja No. 5'),
('yuliantibakiadi@example.net','Bengkulu','Manado','Jalan Kiaracondong No. 83'),
('zadriansyah@example.net','Kalimantan Utara','Tual','Gang Peta No. 8'),
('zsaefullah@example.net','Kalimantan Barat','Bontang','Gg. Suryakencana No. 94');
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
('Anak',7,'Gedung A'),
('Anak',177,'Gedung A'),
('Anak',281,'Gedung Utama'),
('Anak',324,'Gedung Timur'),
('Anak',458,'Gedung B'),
('Anak',991,'Gedung Utama'),
('Bedah',7,'Gedung Utama'),
('Bedah',103,'Gedung Utama'),
('Bedah',111,'Gedung A'),
('Bedah',177,'Gedung B'),
('Bedah',281,'Gedung C'),
('Bedah',324,'Gedung A'),
('Bedah',710,'Gedung A'),
('Bedah',894,'Gedung Timur'),
('Bedah',991,'Gedung B'),
('Gigi',103,'Gedung A'),
('Gigi',281,'Gedung Utama'),
('Gigi',324,'Gedung A'),
('Gigi',326,'Gedung C'),
('Gigi',471,'Gedung C'),
('Gigi',632,'Gedung B'),
('Gigi',735,'Gedung Timur'),
('Gigi',894,'Gedung A'),
('Kardiologi',7,'Gedung Utama'),
('Kardiologi',111,'Gedung A'),
('Kardiologi',281,'Gedung Timur'),
('Kardiologi',451,'Gedung Utama'),
('Kardiologi',643,'Gedung Timur'),
('Kardiologi',654,'Gedung Timur'),
('Kardiologi',672,'Gedung B'),
('Kardiologi',832,'Gedung A'),
('Kulit',111,'Gedung Utama'),
('Kulit',226,'Gedung A'),
('Kulit',710,'Gedung C'),
('Neurologi',324,'Gedung Timur'),
('Neurologi',458,'Gedung B'),
('Neurologi',632,'Gedung Timur'),
('Neurologi',643,'Gedung A'),
('Neurologi',710,'Gedung B'),
('Umum',7,'Gedung C'),
('Umum',226,'Gedung Timur'),
('Umum',326,'Gedung Utama'),
('Umum',451,'Gedung C'),
('Umum',471,'Gedung Timur'),
('Umum',643,'Gedung B'),
('Umum',654,'Gedung Utama'),
('Umum',672,'Gedung A'),
('Umum',710,'Gedung A'),
('Umum',735,'Gedung B'),
('Umum',832,'Gedung Timur');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `janji_temu`
--

LOCK TABLES `janji_temu` WRITE;
/*!40000 ALTER TABLE `janji_temu` DISABLE KEYS */;
INSERT INTO `janji_temu` VALUES
(51,177,'2025-05-25 04:35:02','Distinctio assumenda eius aspernatur debitis ipsa enim.'),
(52,632,'2025-06-20 14:09:24','Ad maiores dicta voluptatibus nihil voluptatem eligendi animi.'),
(53,672,'2025-05-05 21:23:10','In iste dignissimos eius sed nobis cupiditate est aliquid.'),
(54,103,'2025-06-10 16:20:54','Quaerat iste eum occaecati fuga nam perspiciatis nemo vel at iusto.'),
(55,672,'2025-05-19 17:08:26','Quod pariatur accusantium repellendus expedita laudantium vel cum quos eveniet dolores.'),
(56,710,'2025-05-24 04:36:44','Necessitatibus deserunt ea autem impedit alias facilis atque expedita.'),
(57,643,'2025-06-06 19:59:33','Maxime debitis nostrum amet assumenda facilis commodi cupiditate voluptates temporibus.'),
(58,326,'2025-06-12 05:06:33','Quisquam sed aut fugiat porro voluptates quod consectetur ullam sapiente tempora deserunt.'),
(59,643,'2025-05-11 06:47:17','Harum laborum ducimus natus atque accusamus quisquam aliquid voluptas quis labore esse.'),
(60,326,'2025-05-04 20:10:37','Molestias explicabo soluta ut dolorem cupiditate.'),
(61,643,'2025-05-05 16:30:41','Error dolores veritatis optio sapiente excepturi delectus alias libero voluptatum voluptate natus.'),
(62,281,'2025-05-02 08:21:19','Consequuntur sit aperiam earum ducimus fugit iusto.'),
(63,451,'2025-05-19 09:42:42','Asperiores alias ea quasi eius rerum quidem veritatis explicabo explicabo pariatur.'),
(64,632,'2025-07-01 00:33:18','Omnis in saepe tenetur quia illum expedita nulla consequuntur quo architecto aperiam.'),
(65,654,'2025-05-06 09:45:52','Recusandae illum temporibus illo enim ducimus odit itaque voluptatem consequatur qui nihil.'),
(66,735,'2025-06-01 15:24:12','Ipsum perspiciatis quia dolor necessitatibus ad alias tempore similique illo cupiditate.'),
(67,177,'2025-05-29 14:57:05','Eius excepturi expedita voluptas accusamus deleniti nam fugiat eos odio nemo qui.'),
(68,672,'2025-06-02 23:35:31','Molestiae praesentium quibusdam est ipsum quas.'),
(69,326,'2025-05-26 18:19:17','Accusantium rerum corporis accusantium quod dolorem fuga eius inventore.'),
(70,458,'2025-06-14 07:39:51','Quidem nostrum sint occaecati fuga necessitatibus ad minima velit.'),
(71,672,'2025-06-17 15:16:10','Maxime optio sapiente eligendi unde ab fugiat rem necessitatibus voluptatibus placeat.'),
(72,643,'2025-06-28 00:38:58','Labore impedit ipsa omnis facilis exercitationem.'),
(73,451,'2025-05-24 09:43:30','Similique maiores in vel omnis voluptate quo nisi voluptatibus nisi commodi.'),
(74,226,'2025-05-05 02:29:01','Reprehenderit repellat voluptas nam quo distinctio.'),
(75,111,'2025-06-20 12:08:57','Saepe saepe saepe omnis porro cumque eaque tempora eligendi cumque doloremque quo.'),
(76,672,'2025-05-18 21:10:14','Dolore sunt nihil quaerat eius quam harum dolorem praesentium sequi.'),
(77,326,'2025-05-04 02:21:45','Magni architecto aspernatur quidem molestiae assumenda delectus odio sunt neque dolorum dignissimos dicta.'),
(78,471,'2025-06-24 05:20:21','Vel architecto quos accusantium repellat nisi laboriosam impedit fuga architecto at dolores vel.'),
(79,7,'2025-05-31 21:04:04','Minima eum asperiores expedita reprehenderit consectetur.'),
(80,471,'2025-06-24 14:10:42','Asperiores praesentium minima alias voluptatibus rem debitis nostrum exercitationem culpa mollitia provident veritatis.'),
(81,672,'2025-05-11 04:09:32','Facere iusto repellendus dolores a quae eveniet voluptates magni atque magni repellendus.'),
(82,735,'2025-05-17 01:48:42','Quod ullam omnis quae ut reiciendis.'),
(83,281,'2025-06-05 13:00:20','Voluptate neque odio saepe harum fugiat nostrum tempore harum voluptatum perspiciatis adipisci.'),
(84,894,'2025-06-25 09:51:01','Deleniti laudantium maiores eligendi assumenda sequi iure placeat deleniti veritatis molestiae.'),
(85,894,'2025-05-25 01:24:16','Ab rem ducimus quam id perferendis.'),
(86,458,'2025-05-03 07:05:55','Natus accusamus odio aliquid dicta ipsum corrupti.'),
(87,643,'2025-06-29 06:16:42','Voluptatibus quod cumque error quo doloribus explicabo.'),
(88,894,'2025-05-11 13:36:48','Nesciunt rem a est vitae molestias eum modi tempore voluptatum beatae non ratione.'),
(89,111,'2025-06-06 17:37:32','Est corporis eaque dolorem facere corporis modi blanditiis tempore.'),
(90,103,'2025-06-10 17:11:36','Sapiente mollitia reprehenderit tempore aspernatur repellendus fugit delectus.'),
(91,643,'2025-05-04 06:22:17','Facere ut ipsam inventore aliquam voluptates animi eligendi vel.'),
(92,326,'2025-06-08 18:44:18','Suscipit quibusdam atque eum rem voluptatem laudantium totam totam.'),
(93,643,'2025-05-19 23:13:47','Labore tempore perspiciatis illum quidem molestiae.'),
(94,177,'2025-05-17 07:26:05','Molestias beatae dolores voluptatum tenetur qui.'),
(95,451,'2025-06-03 19:58:37','Incidunt quisquam quae voluptate quas corrupti harum labore dolorum officiis provident ducimus sapiente.'),
(96,458,'2025-05-05 12:44:08','Ducimus sunt repellendus distinctio molestias unde quis voluptates.'),
(97,643,'2025-05-17 11:20:00','Odio maiores omnis laborum doloremque officia in illum commodi non molestiae.'),
(98,226,'2025-05-09 22:17:21','Soluta laboriosam ipsam magnam est neque vero perferendis aliquam.'),
(99,471,'2025-06-26 22:32:49','Et nostrum commodi dignissimos optio quam sapiente labore dolorum.'),
(100,451,'2025-06-17 13:53:15','Beatae sapiente dolore et quibusdam error commodi repudiandae quibusdam nemo iste nisi.');
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
  `biaya` int(11) NOT NULL CHECK (`biaya` >= 0),
  PRIMARY KEY (`id_layanan`),
  KEY `layanan_medis_ibfk_1` (`id_rumah_sakit`),
  CONSTRAINT `layanan_medis_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_medis`
--

LOCK TABLES `layanan_medis` WRITE;
/*!40000 ALTER TABLE `layanan_medis` DISABLE KEYS */;
INSERT INTO `layanan_medis` VALUES
(1,226,'vaksinasi',474965),
(2,226,'laboratorium',58769),
(3,654,'fisioterapi',481103),
(4,654,'rehabilitasi',519654),
(5,735,'konsultasi',656022),
(6,735,'laboratorium',533680),
(7,111,'vaksinasi',468320),
(8,111,'konsultasi',244493),
(9,643,'vaksinasi',546312),
(10,643,'laboratorium',473951),
(11,103,'rehabilitasi',442519),
(12,103,'vaksinasi',249930),
(13,458,'rehabilitasi',543126),
(14,458,'laboratorium',179940),
(15,894,'rehabilitasi',86058),
(16,894,'fisioterapi',407078),
(17,632,'radiologi',440912),
(18,632,'vaksinasi',130113),
(19,710,'radiologi',423114),
(20,710,'laboratorium',210673),
(21,991,'rehabilitasi',324985),
(22,991,'laboratorium',604481),
(23,451,'laboratorium',467496),
(24,451,'radiologi',712176),
(25,324,'vaksinasi',270365),
(26,324,'fisioterapi',188125),
(27,7,'konsultasi',552440),
(28,7,'vaksinasi',226486),
(29,672,'radiologi',251107),
(30,672,'rehabilitasi',78017),
(31,177,'vaksinasi',638500),
(32,177,'fisioterapi',726570),
(33,471,'fisioterapi',216623),
(34,471,'vaksinasi',458679),
(35,281,'laboratorium',203629),
(36,281,'konsultasi',589137),
(37,326,'fisioterapi',526595),
(38,326,'vaksinasi',419771),
(39,832,'konsultasi',216209),
(40,832,'radiologi',286542),
(41,326,'vaksinasi',578986),
(42,654,'rehabilitasi',412779),
(43,281,'laboratorium',465700),
(44,654,'rehabilitasi',594648),
(45,710,'laboratorium',520170),
(46,632,'konsultasi',606817),
(47,226,'fisioterapi',372356),
(48,672,'rehabilitasi',577733),
(49,326,'fisioterapi',372550),
(50,324,'rehabilitasi',117158);
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
(10455,'2025-01-17 01:00:19','matrix bricks-and-clicks e-tailers'),
(10455,'2025-04-25 01:35:50','brand 24/365 e-business'),
(11443,'2025-05-24 23:37:03','syndicate impactful bandwidth'),
(17227,'2025-01-04 02:09:31','drive intuitive bandwidth'),
(17227,'2025-01-21 03:29:04','engage revolutionary mindshare'),
(17227,'2025-05-07 03:45:06','matrix compelling bandwidth'),
(17227,'2025-05-29 16:24:49','productize transparent markets'),
(20030,'2025-02-25 04:00:23','enable visionary supply-chains'),
(20030,'2025-03-01 06:35:30','engineer ubiquitous interfaces'),
(21034,'2025-02-20 05:41:59','incubate bricks-and-clicks systems'),
(21034,'2025-03-14 09:14:23','re-intermediate viral communities'),
(21561,'2025-01-03 11:15:59','whiteboard compelling solutions'),
(21561,'2025-03-23 16:19:20','incentivize extensible e-tailers'),
(21561,'2025-05-01 15:52:37','morph user-centric e-commerce'),
(22935,'2025-03-06 04:14:18','cultivate next-generation content'),
(22935,'2025-05-13 12:51:58','streamline wireless interfaces'),
(25082,'2025-03-30 09:00:23','expedite dynamic e-markets'),
(27236,'2025-01-01 02:01:47','redefine mission-critical e-markets'),
(27236,'2025-04-19 15:04:44','cultivate wireless vortals'),
(27236,'2025-05-02 03:08:35','integrate collaborative interfaces'),
(30104,'2025-01-09 07:52:07','scale e-business platforms'),
(32232,'2025-02-20 07:56:52','deploy 24/7 bandwidth'),
(33123,'2025-03-23 20:07:55','facilitate global partnerships'),
(33123,'2025-04-29 00:37:49','engage interactive e-business'),
(33491,'2025-04-21 06:52:58','target dot-com mindshare'),
(33491,'2025-05-08 02:25:54','disintermediate dot-com channels'),
(35194,'2025-01-15 20:14:16','whiteboard real-time functionalities'),
(35661,'2025-02-23 09:42:47','mesh world-class synergies'),
(35661,'2025-03-13 22:00:43','expedite impactful functionalities'),
(36003,'2025-01-16 02:17:52','visualize vertical deliverables'),
(36003,'2025-02-13 17:43:14','re-intermediate bricks-and-clicks metrics'),
(36003,'2025-03-25 06:40:00','enable 24/365 mindshare'),
(36003,'2025-04-02 11:07:10','scale integrated e-tailers'),
(36003,'2025-05-28 01:11:34','disintermediate best-of-breed models'),
(37541,'2025-04-14 01:15:54','redefine e-business methodologies'),
(38953,'2025-01-10 22:58:50','orchestrate one-to-one relationships'),
(38953,'2025-01-13 22:32:14','leverage bricks-and-clicks vortals'),
(38953,'2025-04-15 03:04:53','repurpose global technologies'),
(38953,'2025-05-02 10:35:40','enhance 24/365 applications'),
(42739,'2025-02-07 21:50:19','envisioneer cutting-edge schemas'),
(42739,'2025-02-21 03:28:11','seize next-generation content'),
(42739,'2025-03-15 21:54:11','evolve best-of-breed interfaces'),
(47258,'2025-03-15 11:32:47','benchmark end-to-end interfaces'),
(47258,'2025-05-29 22:34:02','seize mission-critical vortals'),
(48511,'2025-01-29 12:15:05','morph transparent systems'),
(48511,'2025-03-11 17:17:04','whiteboard 24/7 platforms'),
(48511,'2025-04-08 07:07:34','generate synergistic action-items'),
(50626,'2025-05-23 06:55:56','syndicate visionary web services'),
(51010,'2025-01-22 21:04:54','mesh magnetic e-business'),
(51010,'2025-03-07 10:45:06','target rich experiences'),
(51010,'2025-05-10 16:34:19','revolutionize clicks-and-mortar eyeballs'),
(51739,'2025-03-13 22:43:09','productize granular initiatives'),
(51739,'2025-03-22 13:58:51','deliver revolutionary communities'),
(51739,'2025-04-22 13:37:41','utilize scalable applications'),
(52701,'2025-02-25 05:49:11','syndicate viral methodologies'),
(52701,'2025-05-09 14:10:42','optimize one-to-one action-items'),
(52701,'2025-05-30 15:43:44','transform next-generation users'),
(53134,'2025-01-13 22:25:51','deploy global solutions'),
(53877,'2025-01-22 09:01:52','morph global e-tailers'),
(53877,'2025-01-22 16:58:17','productize front-end synergies'),
(53877,'2025-03-12 01:22:39','enable bleeding-edge technologies'),
(53877,'2025-04-26 14:00:40','monetize strategic ROI'),
(54769,'2025-02-21 00:56:18','mesh killer metrics'),
(56975,'2025-01-04 06:48:04','syndicate open-source markets'),
(56975,'2025-04-18 18:31:19','integrate bricks-and-clicks paradigms'),
(56975,'2025-05-14 03:40:11','enhance holistic vortals'),
(57654,'2025-03-02 21:46:51','synthesize out-of-the-box content'),
(57654,'2025-05-30 11:09:36','visualize ubiquitous eyeballs'),
(58419,'2025-03-05 07:00:25','engage visionary methodologies'),
(58489,'2025-01-07 03:06:46','reinvent mission-critical technologies'),
(58489,'2025-02-11 14:36:39','syndicate granular synergies'),
(58489,'2025-04-28 22:47:45','strategize enterprise initiatives'),
(60791,'2025-01-09 13:02:12','enhance e-business supply-chains'),
(63585,'2025-01-09 01:16:20','generate one-to-one vortals'),
(63585,'2025-03-31 04:14:31','reinvent extensible ROI'),
(65387,'2025-02-28 09:37:42','transform world-class methodologies'),
(65387,'2025-04-29 05:37:39','re-intermediate enterprise schemas'),
(67452,'2025-02-05 02:16:37','incentivize plug-and-play synergies'),
(67452,'2025-02-26 18:49:31','generate intuitive platforms'),
(68996,'2025-01-21 07:54:53','extend wireless e-services'),
(69368,'2025-02-03 14:34:32','benchmark back-end platforms'),
(69368,'2025-02-24 01:05:59','drive bleeding-edge methodologies'),
(69368,'2025-03-03 20:26:56','deploy enterprise relationships'),
(76259,'2025-01-26 08:00:37','strategize collaborative architectures'),
(80947,'2025-01-01 07:04:26','transform magnetic e-tailers'),
(80947,'2025-01-23 15:45:52','disintermediate vertical networks'),
(80947,'2025-02-08 19:22:58','reinvent enterprise e-commerce'),
(80947,'2025-04-17 09:29:34','extend one-to-one initiatives'),
(82903,'2025-01-02 05:44:26','aggregate out-of-the-box models'),
(82903,'2025-02-10 03:46:50','strategize global eyeballs'),
(83262,'2025-02-14 11:29:13','redefine frictionless schemas'),
(83262,'2025-02-16 01:00:27','productize holistic info-mediaries'),
(83262,'2025-04-21 17:49:22','enhance clicks-and-mortar web-readiness'),
(83262,'2025-04-27 03:39:00','empower vertical info-mediaries'),
(83262,'2025-05-05 20:21:41','revolutionize magnetic systems'),
(83262,'2025-05-19 19:07:43','empower best-of-breed relationships'),
(85180,'2025-04-28 15:07:47','optimize 24/7 applications'),
(85180,'2025-05-08 15:08:29','enable leading-edge niches'),
(87008,'2025-02-13 23:04:57','syndicate bricks-and-clicks portals'),
(96832,'2025-01-17 20:48:21','transform dynamic architectures');
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
('hidayatgaran@example.org',54,'aditya94@example.org',103),
('winarsiheman@example.com',54,'aditya94@example.org',103),
('hidayatgaran@example.org',76,'agnes55@example.com',672),
('radika64@example.com',81,'agnes55@example.com',672),
('rpranowo@example.net',53,'agnes55@example.com',672),
('yprabowo@example.net',67,'ajimin91@example.com',177),
('kamilanovitasari@example.com',99,'anggabayakurniawan@example.org',471),
('simbolonkayun@example.com',99,'anggabayakurniawan@example.org',471),
('banawidabukke@example.org',67,'aryanijumari@example.org',177),
('imarbun@example.net',51,'aryanijumari@example.org',177),
('raina87@example.com',51,'aryanijumari@example.org',177),
('zsaefullah@example.net',56,'asaputra@example.org',710),
('dasa21@example.net',64,'atmamaulana@example.org',632),
('simbolonkayun@example.com',64,'atmamaulana@example.org',632),
('zsaefullah@example.net',98,'balidin94@example.com',226),
('cawisonojailani@example.com',67,'bgunarto@example.com',177),
('hana80@example.org',51,'bgunarto@example.com',177),
('aryanibakidin@example.net',62,'cawisadi07@example.com',281),
('aryanibakidin@example.net',76,'dasa69@example.com',672),
('ghani57@example.org',68,'dasa69@example.com',672),
('uyainahlintang@example.org',83,'diansaputra@example.com',281),
('rudikurniawan@example.com',51,'dnarpati@example.net',177),
('danu06@example.com',58,'edwarduyainah@example.net',326),
('hardiansyahsimon@example.net',77,'edwarduyainah@example.net',326),
('mandasarikurnia@example.org',60,'elinainggolan@example.com',326),
('asmuni48@example.org',67,'ellisfujiati@example.net',177),
('danu06@example.com',67,'ellisfujiati@example.net',177),
('karjaoktaviani@example.net',82,'endrarajata@example.net',735),
('paulin77@example.net',82,'endrarajata@example.net',735),
('apurnawati@example.net',75,'fandriani@example.com',111),
('olivia33@example.org',65,'gaiman20@example.net',654),
('oramadan@example.net',55,'ganggraini@example.net',672),
('raina87@example.com',81,'ganggraini@example.net',672),
('yprabowo@example.net',71,'ganggraini@example.net',672),
('danu06@example.com',85,'gara28@example.net',894),
('oramadan@example.net',84,'gara28@example.net',894),
('sitompulmujur@example.org',88,'gara28@example.net',894),
('zsaefullah@example.net',65,'gtamba@example.com',654),
('radika64@example.com',78,'hasimpranowo@example.org',471),
('ghani57@example.org',56,'jabal27@example.com',710),
('asmuni48@example.org',90,'januarkalim@example.org',103),
('hana80@example.org',69,'jfujiati@example.org',326),
('hardiansyahsimon@example.net',60,'jfujiati@example.org',326),
('yuliantibakiadi@example.net',58,'jfujiati@example.org',326),
('zadriansyah@example.net',92,'jfujiati@example.org',326),
('ajimansitompul@example.com',73,'jwibisono@example.com',451),
('janggraini@example.net',73,'jwibisono@example.com',451),
('apurnawati@example.net',79,'karma52@example.net',7),
('hana80@example.org',97,'kfirgantoro@example.net',643),
('kamilanovitasari@example.com',57,'kfirgantoro@example.net',643),
('kamilanovitasari@example.com',91,'kfirgantoro@example.net',643),
('lalahastuti@example.com',57,'kfirgantoro@example.net',643),
('qgunawan@example.net',57,'kfirgantoro@example.net',643),
('radika64@example.com',93,'kfirgantoro@example.net',643),
('rafidkurniawan@example.org',97,'kfirgantoro@example.net',643),
('rhutapea@example.net',59,'kfirgantoro@example.net',643),
('rudikurniawan@example.com',61,'kfirgantoro@example.net',643),
('janggraini@example.net',80,'kurniawanatmaja@example.net',471),
('imarbun@example.net',84,'lailasarihartaka@example.org',894),
('kamilanovitasari@example.com',85,'lailasarihartaka@example.org',894),
('vkusumo@example.net',88,'lailasarihartaka@example.org',894),
('zsaefullah@example.net',84,'lailasarihartaka@example.org',894),
('dasa21@example.net',62,'laksmiwatilegawa@example.net',281),
('hana80@example.org',66,'lazuardigandi@example.org',735),
('kamilanovitasari@example.com',82,'lazuardigandi@example.org',735),
('rudikurniawan@example.com',66,'lazuardigandi@example.org',735),
('cawisonojailani@example.com',68,'mandasaritedi@example.net',672),
('ajimansitompul@example.com',98,'margana69@example.net',226),
('ghani57@example.org',98,'margana69@example.net',226),
('zsaefullah@example.net',74,'margana69@example.net',226),
('olivia33@example.org',82,'mitradongoran@example.net',735),
('safitrigadang@example.org',82,'mitradongoran@example.net',735),
('asmuni48@example.org',69,'mulyonopuspasari@example.org',326),
('danu06@example.com',77,'mulyonopuspasari@example.org',326),
('hidayatgaran@example.org',69,'mulyonopuspasari@example.org',326),
('qgunawan@example.net',58,'mulyonopuspasari@example.org',326),
('suryonogilda@example.org',58,'mulyonopuspasari@example.org',326),
('vkusumo@example.net',92,'mulyonopuspasari@example.org',326),
('yprabowo@example.net',60,'mulyonopuspasari@example.org',326),
('zadriansyah@example.net',69,'mulyonopuspasari@example.org',326),
('sitompulmujur@example.org',52,'natsirjabal@example.org',632),
('yprabowo@example.net',52,'natsirjabal@example.org',632),
('danu06@example.com',73,'prabowokurnia@example.net',451),
('girawan@example.com',100,'prabowokurnia@example.net',451),
('simboloneka@example.com',100,'prabowokurnia@example.net',451),
('mandasarikurnia@example.org',54,'prasetyafirmansyah@example.net',103),
('cawisonojailani@example.com',56,'prastutijamil@example.net',710),
('hidayatgaran@example.org',56,'prastutijamil@example.net',710),
('ajimansitompul@example.com',95,'pratamaifa@example.org',451),
('asmuni48@example.org',95,'pratamaifa@example.org',451),
('girawan@example.com',63,'pratamaifa@example.org',451),
('nalarutama@example.org',95,'pratamaifa@example.org',451),
('paulin77@example.net',63,'pratamaifa@example.org',451),
('paulin77@example.net',100,'pratamaifa@example.org',451),
('nalarutama@example.org',71,'purwadipurwanti@example.org',672),
('banawidabukke@example.org',59,'putri89@example.com',643),
('jaemansuryono@example.org',59,'putri89@example.com',643),
('lalahastuti@example.com',93,'putri89@example.com',643),
('nalarutama@example.org',59,'putri89@example.com',643),
('nilam04@example.org',93,'putri89@example.com',643),
('paulin77@example.net',59,'putri89@example.com',643),
('paulin77@example.net',91,'putri89@example.com',643),
('raina87@example.com',91,'putri89@example.com',643),
('rpranowo@example.net',57,'putri89@example.com',643),
('wahyuniatmaja@example.org',72,'putri89@example.com',643),
('cawisonojailani@example.com',80,'qhakim@example.com',471),
('kamilanovitasari@example.com',95,'qwaluyo@example.com',451),
('nilam04@example.org',63,'qwaluyo@example.com',451),
('banawidabukke@example.org',75,'ratihuyainah@example.com',111),
('karjaoktaviani@example.net',90,'rina51@example.net',103),
('nalarutama@example.org',79,'salimah44@example.net',7),
('danu06@example.com',75,'septipermadi@example.org',111),
('cawisonojailani@example.com',83,'sfarida@example.net',281),
('simboloneka@example.com',62,'sfarida@example.net',281),
('oramadan@example.net',63,'sprasetyo@example.org',451),
('uyainahlintang@example.org',73,'sprasetyo@example.org',451),
('amandasari@example.net',96,'usamahendra@example.org',458),
('banawidabukke@example.org',70,'usamahendra@example.org',458),
('girawan@example.com',96,'usamahendra@example.org',458),
('luwarwahyuni@example.net',96,'usamahendra@example.org',458),
('paulin77@example.net',70,'usamahendra@example.org',458),
('simboloneka@example.com',96,'usamahendra@example.org',458),
('hairyanto00@example.com',82,'uyainahgamani@example.net',735),
('karjaoktaviani@example.net',66,'uyainahgamani@example.net',735),
('yprabowo@example.net',82,'uyainahgamani@example.net',735),
('dasa21@example.net',77,'vanya26@example.net',326),
('mujur75@example.org',69,'vanya26@example.net',326),
('rudikurniawan@example.com',58,'vanya26@example.net',326),
('rudikurniawan@example.com',92,'vanya26@example.net',326),
('zsaefullah@example.net',60,'vanya26@example.net',326),
('girawan@example.com',64,'vmangunsong@example.org',632),
('rafidkurniawan@example.org',83,'vsantoso@example.com',281),
('wahyuniatmaja@example.org',83,'vsantoso@example.com',281),
('karjaoktaviani@example.net',85,'wprasetya@example.org',894),
('rudikurniawan@example.com',84,'wprasetya@example.org',894),
('simboloneka@example.com',88,'wprasetya@example.org',894),
('danu06@example.com',74,'yhartati@example.com',226),
('apurnawati@example.net',93,'yolandaismail@example.net',643),
('cawisonojailani@example.com',87,'yolandaismail@example.net',643),
('danu06@example.com',93,'yolandaismail@example.net',643),
('dasa21@example.net',59,'yolandaismail@example.net',643),
('hidayatgaran@example.org',57,'yolandaismail@example.net',643),
('ksuryono@example.net',57,'yolandaismail@example.net',643),
('mandasarikurnia@example.org',93,'yolandaismail@example.net',643),
('rafidkurniawan@example.org',91,'yolandaismail@example.net',643),
('suryonogilda@example.org',97,'yolandaismail@example.net',643),
('yuliantibakiadi@example.net',91,'yolandaismail@example.net',643),
('zadriansyah@example.net',93,'yolandaismail@example.net',643),
('asmuni48@example.org',76,'ywasita@example.net',672),
('safitrigadang@example.org',55,'ywasita@example.net',672);
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
  PRIMARY KEY (`id_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat`
--

LOCK TABLES `obat` WRITE;
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
INSERT INTO `obat` VALUES
(76,'analgesik',111),
(1036,'analgesik',142),
(1236,'obat herbal',182),
(1240,'obat herbal',134),
(1672,'analgesik',32),
(2723,'analgesik',84),
(3095,'analgesik',115),
(3107,'antibiotik',81),
(5002,'analgesik',167),
(5582,'obat herbal',164),
(6072,'analgesik',20),
(6234,'obat herbal',158),
(7472,'analgesik',88),
(7484,'antibiotik',73),
(7576,'analgesik',182),
(7603,'analgesik',143),
(7785,'analgesik',125),
(9116,'analgesik',159),
(9514,'analgesik',188),
(9897,'antibiotik',54);
/*!40000 ALTER TABLE `obat` ENABLE KEYS */;
UNLOCK TABLES;

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
('ajimansitompul@example.com',58419),
('amandasari@example.net',83262),
('apurnawati@example.net',65387),
('aryanibakidin@example.net',35194),
('asmuni48@example.org',68996),
('banawidabukke@example.org',69368),
('cawisonojailani@example.com',30104),
('danu06@example.com',42739),
('dasa21@example.net',22935),
('ghani57@example.org',58489),
('girawan@example.com',47258),
('hairyanto00@example.com',33123),
('hana80@example.org',80947),
('hardiansyahsimon@example.net',54769),
('hidayatgaran@example.org',32392),
('imarbun@example.net',87008),
('jaemansuryono@example.org',57654),
('janggraini@example.net',48675),
('kamilanovitasari@example.com',27236),
('karjaoktaviani@example.net',48511),
('ksuryono@example.net',27473),
('lalahastuti@example.com',51010),
('luwarwahyuni@example.net',60791),
('mandasarikurnia@example.org',76259),
('mujur75@example.org',51739),
('nalarutama@example.org',36003),
('nilam04@example.org',53134),
('olivia33@example.org',53877),
('oramadan@example.net',50626),
('paulin77@example.net',20030),
('qgunawan@example.net',17227),
('radika64@example.com',94463),
('rafidkurniawan@example.org',33491),
('raina87@example.com',25082),
('rhutapea@example.net',52701),
('rpranowo@example.net',11443),
('rudikurniawan@example.com',38953),
('safitrigadang@example.org',85180),
('simboloneka@example.com',35661),
('simbolonkayun@example.com',32232),
('sitompulmujur@example.org',82903),
('suryonogilda@example.org',62467),
('uyainahlintang@example.org',21034),
('vkusumo@example.net',10455),
('wahyuniatmaja@example.org',96832),
('winarsiheman@example.com',56975),
('yprabowo@example.net',37541),
('yuliantibakiadi@example.net',63585),
('zadriansyah@example.net',67452),
('zsaefullah@example.net',21561);
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_layanan`
--

LOCK TABLES `pemesanan_layanan` WRITE;
/*!40000 ALTER TABLE `pemesanan_layanan` DISABLE KEYS */;
INSERT INTO `pemesanan_layanan` VALUES
(101,17,'luwarwahyuni@example.net','2025-07-14','selesai'),
(102,27,'imarbun@example.net','2025-06-29','selesai'),
(103,22,'hardiansyahsimon@example.net','2025-06-01','sedang berlangsung'),
(104,41,'suryonogilda@example.org','2025-07-11','selesai'),
(105,49,'zsaefullah@example.net','2025-06-10','belum dibayar'),
(106,19,'kamilanovitasari@example.com','2025-06-19','belum dibayar'),
(107,17,'nilam04@example.org','2025-07-18','belum dibayar'),
(108,3,'jaemansuryono@example.org','2025-07-17','belum dibayar'),
(109,41,'rafidkurniawan@example.org','2025-07-23','dibatalkan'),
(110,31,'ksuryono@example.net','2025-07-21','selesai'),
(111,19,'danu06@example.com','2025-05-31','belum dibayar'),
(112,22,'apurnawati@example.net','2025-06-22','selesai'),
(113,3,'raina87@example.com','2025-07-09','belum dibayar'),
(114,50,'hana80@example.org','2025-07-14','selesai'),
(115,7,'amandasari@example.net','2025-06-30','belum dibayar'),
(116,35,'asmuni48@example.org','2025-07-26','dijadwalkan'),
(117,40,'karjaoktaviani@example.net','2025-07-04','dibatalkan'),
(118,32,'zsaefullah@example.net','2025-06-12','dibatalkan'),
(119,10,'imarbun@example.net','2025-07-25','sedang berlangsung'),
(120,50,'vkusumo@example.net','2025-07-23','sedang berlangsung'),
(121,31,'danu06@example.com','2025-07-08','sedang berlangsung'),
(122,28,'lalahastuti@example.com','2025-07-26','sedang berlangsung'),
(123,48,'simboloneka@example.com','2025-06-02','dibatalkan'),
(124,5,'qgunawan@example.net','2025-07-02','belum dibayar'),
(125,7,'rudikurniawan@example.com','2025-07-12','dijadwalkan'),
(126,6,'qgunawan@example.net','2025-06-30','belum dibayar'),
(127,36,'imarbun@example.net','2025-06-20','belum dibayar'),
(128,26,'ksuryono@example.net','2025-06-10','sedang berlangsung'),
(129,16,'asmuni48@example.org','2025-07-01','dibatalkan'),
(130,27,'luwarwahyuni@example.net','2025-07-07','selesai'),
(131,36,'winarsiheman@example.com','2025-06-16','sedang berlangsung'),
(132,8,'suryonogilda@example.org','2025-06-11','sedang berlangsung'),
(133,9,'suryonogilda@example.org','2025-06-16','sedang berlangsung'),
(134,31,'raina87@example.com','2025-06-12','selesai'),
(135,50,'qgunawan@example.net','2025-07-23','sedang berlangsung'),
(136,37,'karjaoktaviani@example.net','2025-07-09','dibatalkan'),
(137,32,'zsaefullah@example.net','2025-07-04','sedang berlangsung'),
(138,5,'raina87@example.com','2025-06-10','sedang berlangsung'),
(139,6,'mandasarikurnia@example.org','2025-06-07','dijadwalkan'),
(140,18,'apurnawati@example.net','2025-07-14','sedang berlangsung'),
(141,9,'hidayatgaran@example.org','2025-07-07','belum dibayar'),
(142,48,'radika64@example.com','2025-07-15','belum dibayar'),
(143,44,'uyainahlintang@example.org','2025-06-09','dibatalkan'),
(144,20,'ajimansitompul@example.com','2025-06-29','selesai'),
(145,23,'hidayatgaran@example.org','2025-06-25','belum dibayar'),
(146,30,'simboloneka@example.com','2025-06-26','dibatalkan'),
(147,49,'danu06@example.com','2025-07-28','belum dibayar'),
(148,14,'qgunawan@example.net','2025-07-25','dijadwalkan'),
(149,44,'karjaoktaviani@example.net','2025-06-13','sedang berlangsung'),
(150,21,'zadriansyah@example.net','2025-06-21','selesai'),
(151,29,'luwarwahyuni@example.net','2025-06-11','dibatalkan'),
(152,50,'amandasari@example.net','2025-06-04','belum dibayar'),
(153,40,'rudikurniawan@example.com','2025-06-29','selesai'),
(154,6,'zadriansyah@example.net','2025-07-12','belum dibayar'),
(155,44,'simbolonkayun@example.com','2025-06-14','belum dibayar'),
(156,17,'hardiansyahsimon@example.net','2025-06-28','dibatalkan'),
(157,47,'hana80@example.org','2025-07-27','selesai'),
(158,18,'oramadan@example.net','2025-07-22','selesai'),
(159,13,'karjaoktaviani@example.net','2025-07-22','dibatalkan'),
(160,5,'nalarutama@example.org','2025-06-22','belum dibayar'),
(161,24,'qgunawan@example.net','2025-06-23','dijadwalkan'),
(162,6,'qgunawan@example.net','2025-06-08','dibatalkan'),
(163,14,'zsaefullah@example.net','2025-06-15','dijadwalkan'),
(164,17,'sitompulmujur@example.org','2025-07-08','selesai'),
(165,5,'amandasari@example.net','2025-06-02','dijadwalkan'),
(166,21,'raina87@example.com','2025-06-18','belum dibayar'),
(167,8,'safitrigadang@example.org','2025-07-13','belum dibayar'),
(168,10,'asmuni48@example.org','2025-06-30','belum dibayar'),
(169,16,'asmuni48@example.org','2025-07-08','belum dibayar'),
(170,39,'janggraini@example.net','2025-07-12','selesai'),
(171,7,'karjaoktaviani@example.net','2025-07-27','dijadwalkan'),
(172,5,'hardiansyahsimon@example.net','2025-07-29','sedang berlangsung'),
(173,49,'radika64@example.com','2025-06-01','dibatalkan'),
(174,18,'rpranowo@example.net','2025-07-15','dijadwalkan'),
(175,45,'zadriansyah@example.net','2025-07-02','dijadwalkan'),
(176,16,'mandasarikurnia@example.org','2025-07-01','dibatalkan'),
(177,7,'winarsiheman@example.com','2025-07-02','dijadwalkan'),
(178,44,'dasa21@example.net','2025-06-14','sedang berlangsung'),
(179,47,'oramadan@example.net','2025-06-01','dibatalkan'),
(180,11,'kamilanovitasari@example.com','2025-07-01','belum dibayar'),
(181,2,'hidayatgaran@example.org','2025-07-19','dijadwalkan'),
(182,2,'olivia33@example.org','2025-07-06','sedang berlangsung'),
(183,4,'yuliantibakiadi@example.net','2025-07-03','sedang berlangsung'),
(184,9,'zsaefullah@example.net','2025-06-30','sedang berlangsung'),
(185,49,'sitompulmujur@example.org','2025-06-09','dibatalkan'),
(186,39,'vkusumo@example.net','2025-07-08','selesai'),
(187,20,'paulin77@example.net','2025-07-14','selesai'),
(188,28,'kamilanovitasari@example.com','2025-07-07','dijadwalkan'),
(189,48,'jaemansuryono@example.org','2025-07-29','selesai'),
(190,5,'janggraini@example.net','2025-07-28','dibatalkan'),
(191,35,'karjaoktaviani@example.net','2025-06-17','dibatalkan'),
(192,42,'lalahastuti@example.com','2025-06-01','belum dibayar'),
(193,9,'ajimansitompul@example.com','2025-07-04','dibatalkan'),
(194,35,'nalarutama@example.org','2025-07-01','dijadwalkan'),
(195,27,'hidayatgaran@example.org','2025-07-06','belum dibayar'),
(196,8,'uyainahlintang@example.org','2025-07-18','dibatalkan'),
(197,19,'suryonogilda@example.org','2025-06-09','selesai'),
(198,49,'nilam04@example.org','2025-06-04','sedang berlangsung'),
(199,47,'ksuryono@example.net','2025-06-16','belum dibayar'),
(200,1,'kamilanovitasari@example.com','2025-06-03','belum dibayar');
/*!40000 ALTER TABLE `pemesanan_layanan` ENABLE KEYS */;
UNLOCK TABLES;

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
('amandasari@example.net','2025-05-06 15:33:05','Riau','Gorontalo','Jl. Cihampelas No. 981','dijadwalkan',307056),
('amandasari@example.net','2025-05-20 11:23:05','Riau','Gorontalo','Jl. Cihampelas No. 981','selesai',476713),
('banawidabukke@example.org','2025-05-02 07:36:18','Sulawesi Tengah','Sukabumi','Gg. Jakarta No. 224','selesai',144352),
('banawidabukke@example.org','2025-05-05 14:16:32','Kalimantan Tengah','Kota Administrasi Jakarta Pusat','Jalan Pasteur No. 2','dibatalkan',382996),
('banawidabukke@example.org','2025-05-28 04:24:37','Kalimantan Tengah','Kota Administrasi Jakarta Pusat','Jalan Pasteur No. 2','dijadwalkan',85592),
('cawisonojailani@example.com','2025-05-21 22:17:30','Sulawesi Barat','Kota Administrasi Jakarta Pusat','Jl. M.T Haryono No. 637','belum dibayar',67136),
('danu06@example.com','2025-05-28 00:04:06','Kalimantan Tengah','Kediri','Jalan KH Amin Jasuta No. 64','selesai',81177),
('girawan@example.com','2025-05-01 23:36:53','Riau','Probolinggo','Jalan Sadang Serang No. 1','selesai',69400),
('girawan@example.com','2025-05-09 03:03:58','Riau','Probolinggo','Jalan Sadang Serang No. 1','dibatalkan',332768),
('girawan@example.com','2025-05-19 02:29:15','Riau','Probolinggo','Jalan Sadang Serang No. 1','belum dibayar',440700),
('hairyanto00@example.com','2025-05-14 02:52:43','Bengkulu','Kota Administrasi Jakarta Timur','Gg. Sadang Serang No. 579','selesai',352131),
('hairyanto00@example.com','2025-05-29 08:44:22','Bengkulu','Kota Administrasi Jakarta Timur','Gg. Sadang Serang No. 579','selesai',188979),
('hidayatgaran@example.org','2025-05-20 02:13:30','Kalimantan Timur','Bukittinggi','Gang Cihampelas No. 4','dijadwalkan',464206),
('hidayatgaran@example.org','2025-05-23 11:30:25','Sulawesi Tenggara','Metro','Jalan Rajawali Timur No. 3','selesai',258143),
('janggraini@example.net','2025-05-04 04:58:15','Jawa Barat','Sungai Penuh','Gang Cikapayang No. 62','selesai',124968),
('janggraini@example.net','2025-05-21 22:18:12','Jawa Barat','Sungai Penuh','Gang Cikapayang No. 62','selesai',346143),
('kamilanovitasari@example.com','2025-05-14 07:05:37','Nusa Tenggara Barat','Manado','Gang Dipenogoro No. 60','selesai',280224),
('kamilanovitasari@example.com','2025-05-18 03:10:50','Nusa Tenggara Barat','Manado','Gang Dipenogoro No. 60','selesai',164730),
('karjaoktaviani@example.net','2025-05-04 10:19:55','Maluku Utara','Sawahlunto','Gang Setiabudhi No. 0','sedang berlangsung',156247),
('ksuryono@example.net','2025-05-09 08:03:56','Aceh','Sawahlunto','Jl. Dipatiukur No. 00','dijadwalkan',394630),
('ksuryono@example.net','2025-05-26 19:33:25','Aceh','Sawahlunto','Jl. Dipatiukur No. 00','selesai',116101),
('ksuryono@example.net','2025-05-28 07:36:43','Aceh','Sawahlunto','Jl. Dipatiukur No. 00','belum dibayar',143783),
('luwarwahyuni@example.net','2025-05-31 00:48:54','DI Yogyakarta','Serang','Gang M.H Thamrin No. 81','dibatalkan',45688),
('mujur75@example.org','2025-05-16 03:32:02','Sumatera Selatan','Kupang','Gg. Dipatiukur No. 4','belum dibayar',279667),
('mujur75@example.org','2025-05-21 10:47:16','Sumatera Selatan','Kupang','Gg. Dipatiukur No. 4','dibatalkan',264551),
('nalarutama@example.org','2025-05-04 13:59:19','Bali','Dumai','Jalan Dipatiukur No. 76','dibatalkan',431367),
('nalarutama@example.org','2025-05-07 01:48:04','Bali','Dumai','Jalan Dipatiukur No. 76','dibatalkan',192137),
('nalarutama@example.org','2025-05-28 00:19:00','Bali','Dumai','Jalan Dipatiukur No. 76','dijadwalkan',491500),
('olivia33@example.org','2025-05-17 13:31:18','Kalimantan Barat','Pangkalpinang','Jl. K.H. Wahid Hasyim No. 1','dijadwalkan',161218),
('oramadan@example.net','2025-05-30 06:24:05','Aceh','Tanjungbalai','Jl. Suryakencana No. 574','dijadwalkan',306916),
('qgunawan@example.net','2025-05-29 22:44:17','Sulawesi Selatan','Manado','Gang KH Amin Jasuta No. 17','dijadwalkan',113736),
('raina87@example.com','2025-05-27 20:32:54','Kalimantan Selatan','Makassar','Jalan Surapati No. 893','sedang berlangsung',440036),
('rpranowo@example.net','2025-05-18 12:38:14','Maluku Utara','Surakarta','Jl. S. Parman No. 2','belum dibayar',482063),
('rpranowo@example.net','2025-05-28 15:17:36','Banten','Sabang','Jalan Ir. H. Djuanda No. 97','dibatalkan',79904),
('rpranowo@example.net','2025-05-30 09:55:47','Maluku Utara','Surakarta','Jl. S. Parman No. 2','dibatalkan',144126),
('rudikurniawan@example.com','2025-05-22 10:26:13','Jawa Tengah','Ternate','Jalan Suniaraja No. 841','dijadwalkan',251927),
('rudikurniawan@example.com','2025-05-22 22:04:10','Jawa Tengah','Ternate','Jalan Suniaraja No. 841','sedang berlangsung',270026),
('safitrigadang@example.org','2025-05-15 11:08:31','Kalimantan Utara','Pariaman','Jalan Moch. Toha No. 1','selesai',253887),
('safitrigadang@example.org','2025-05-25 08:20:00','Kalimantan Utara','Pariaman','Jalan Moch. Toha No. 1','selesai',291220),
('simboloneka@example.com','2025-05-06 06:20:12','Bengkulu','Ambon','Gang Waringin No. 82','sedang berlangsung',364643),
('simboloneka@example.com','2025-05-29 03:43:21','DI Yogyakarta','Ambon','Gg. Moch. Ramdan No. 1','sedang berlangsung',196439),
('sitompulmujur@example.org','2025-05-16 03:07:48','Kepulauan Riau','Sawahlunto','Jalan Raya Ujungberung No. 9','dibatalkan',310727),
('suryonogilda@example.org','2025-05-23 13:33:16','Kalimantan Timur','Lhokseumawe','Gang Peta No. 8','dijadwalkan',233873),
('vkusumo@example.net','2025-05-21 06:14:43','Sumatera Utara','Kediri','Gang Tebet Barat Dalam No. 8','dibatalkan',169046),
('vkusumo@example.net','2025-05-23 10:33:07','Sulawesi Selatan','Sorong','Gang Stasiun Wonokromo No. 1','belum dibayar',467213),
('wahyuniatmaja@example.org','2025-05-04 09:05:33','Papua Barat','Tanjungbalai','Jl. Kebonjati No. 329','dibatalkan',138241),
('winarsiheman@example.com','2025-05-16 03:55:46','Banten','Ternate','Jl. Rumah Sakit No. 8','dibatalkan',473490),
('winarsiheman@example.com','2025-05-17 14:15:21','Banten','Ternate','Jl. Rumah Sakit No. 8','dibatalkan',249843),
('zadriansyah@example.net','2025-05-13 02:09:00','Kalimantan Utara','Tual','Gang Peta No. 8','dibatalkan',479769),
('zadriansyah@example.net','2025-05-13 16:57:36','Kalimantan Utara','Tual','Gang Peta No. 8','dibatalkan',289352);
/*!40000 ALTER TABLE `pemesanan_obat` ENABLE KEYS */;
UNLOCK TABLES;

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
('amandasari@example.net','2025-05-06 15:33:05',5582,2),
('amandasari@example.net','2025-05-06 15:33:05',7576,3),
('amandasari@example.net','2025-05-20 11:23:05',76,3),
('amandasari@example.net','2025-05-20 11:23:05',6234,3),
('banawidabukke@example.org','2025-05-02 07:36:18',3095,4),
('banawidabukke@example.org','2025-05-02 07:36:18',5002,3),
('banawidabukke@example.org','2025-05-05 14:16:32',3095,4),
('banawidabukke@example.org','2025-05-05 14:16:32',5002,3),
('banawidabukke@example.org','2025-05-28 04:24:37',1240,3),
('banawidabukke@example.org','2025-05-28 04:24:37',7603,3),
('cawisonojailani@example.com','2025-05-21 22:17:30',3107,4),
('cawisonojailani@example.com','2025-05-21 22:17:30',7785,2),
('danu06@example.com','2025-05-28 00:04:06',7484,4),
('danu06@example.com','2025-05-28 00:04:06',7785,4),
('girawan@example.com','2025-05-01 23:36:53',5002,1),
('girawan@example.com','2025-05-01 23:36:53',9116,1),
('girawan@example.com','2025-05-09 03:03:58',7472,3),
('girawan@example.com','2025-05-09 03:03:58',7576,3),
('girawan@example.com','2025-05-19 02:29:15',2723,3),
('girawan@example.com','2025-05-19 02:29:15',9116,1),
('hairyanto00@example.com','2025-05-14 02:52:43',1036,3),
('hairyanto00@example.com','2025-05-14 02:52:43',6234,4),
('hairyanto00@example.com','2025-05-29 08:44:22',3107,1),
('hairyanto00@example.com','2025-05-29 08:44:22',9897,4),
('hidayatgaran@example.org','2025-05-20 02:13:30',2723,2),
('hidayatgaran@example.org','2025-05-20 02:13:30',9897,3),
('hidayatgaran@example.org','2025-05-23 11:30:25',2723,1),
('hidayatgaran@example.org','2025-05-23 11:30:25',7576,1),
('janggraini@example.net','2025-05-04 04:58:15',7576,1),
('janggraini@example.net','2025-05-04 04:58:15',7785,1),
('janggraini@example.net','2025-05-21 22:18:12',1672,3),
('janggraini@example.net','2025-05-21 22:18:12',7603,1),
('kamilanovitasari@example.com','2025-05-14 07:05:37',3095,3),
('kamilanovitasari@example.com','2025-05-14 07:05:37',9897,2),
('kamilanovitasari@example.com','2025-05-18 03:10:50',2723,3),
('kamilanovitasari@example.com','2025-05-18 03:10:50',9514,1),
('karjaoktaviani@example.net','2025-05-04 10:19:55',5002,4),
('karjaoktaviani@example.net','2025-05-04 10:19:55',6234,3),
('ksuryono@example.net','2025-05-09 08:03:56',1036,4),
('ksuryono@example.net','2025-05-09 08:03:56',2723,1),
('ksuryono@example.net','2025-05-26 19:33:25',5002,1),
('ksuryono@example.net','2025-05-26 19:33:25',7576,2),
('ksuryono@example.net','2025-05-28 07:36:43',3095,3),
('ksuryono@example.net','2025-05-28 07:36:43',9514,1),
('luwarwahyuni@example.net','2025-05-31 00:48:54',1036,3),
('luwarwahyuni@example.net','2025-05-31 00:48:54',1236,4),
('mujur75@example.org','2025-05-16 03:32:02',1236,3),
('mujur75@example.org','2025-05-16 03:32:02',2723,3),
('mujur75@example.org','2025-05-21 10:47:16',1236,3),
('mujur75@example.org','2025-05-21 10:47:16',3095,4),
('nalarutama@example.org','2025-05-04 13:59:19',2723,3),
('nalarutama@example.org','2025-05-04 13:59:19',5002,1),
('nalarutama@example.org','2025-05-07 01:48:04',3095,2),
('nalarutama@example.org','2025-05-07 01:48:04',6072,3),
('nalarutama@example.org','2025-05-28 00:19:00',1236,1),
('nalarutama@example.org','2025-05-28 00:19:00',7472,2),
('olivia33@example.org','2025-05-17 13:31:18',3095,2),
('olivia33@example.org','2025-05-17 13:31:18',5002,1),
('oramadan@example.net','2025-05-30 06:24:05',1036,1),
('oramadan@example.net','2025-05-30 06:24:05',6234,3),
('qgunawan@example.net','2025-05-29 22:44:17',1036,4),
('qgunawan@example.net','2025-05-29 22:44:17',1240,3),
('raina87@example.com','2025-05-27 20:32:54',5002,4),
('raina87@example.com','2025-05-27 20:32:54',9897,4),
('rpranowo@example.net','2025-05-18 12:38:14',2723,3),
('rpranowo@example.net','2025-05-18 12:38:14',5582,3),
('rpranowo@example.net','2025-05-28 15:17:36',3107,4),
('rpranowo@example.net','2025-05-28 15:17:36',5002,3),
('rpranowo@example.net','2025-05-30 09:55:47',1672,4),
('rpranowo@example.net','2025-05-30 09:55:47',7472,4),
('rudikurniawan@example.com','2025-05-22 10:26:13',76,3),
('rudikurniawan@example.com','2025-05-22 10:26:13',6234,4),
('rudikurniawan@example.com','2025-05-22 22:04:10',76,1),
('rudikurniawan@example.com','2025-05-22 22:04:10',5582,4),
('safitrigadang@example.org','2025-05-15 11:08:31',76,2),
('safitrigadang@example.org','2025-05-15 11:08:31',5002,2),
('safitrigadang@example.org','2025-05-25 08:20:00',7472,1),
('safitrigadang@example.org','2025-05-25 08:20:00',9116,4),
('simboloneka@example.com','2025-05-06 06:20:12',9514,1),
('simboloneka@example.com','2025-05-06 06:20:12',9897,2),
('simboloneka@example.com','2025-05-29 03:43:21',1672,1),
('simboloneka@example.com','2025-05-29 03:43:21',9116,3),
('sitompulmujur@example.org','2025-05-16 03:07:48',2723,1),
('sitompulmujur@example.org','2025-05-16 03:07:48',3107,1),
('suryonogilda@example.org','2025-05-23 13:33:16',5002,2),
('suryonogilda@example.org','2025-05-23 13:33:16',9897,2),
('vkusumo@example.net','2025-05-21 06:14:43',3095,3),
('vkusumo@example.net','2025-05-21 06:14:43',5002,3),
('vkusumo@example.net','2025-05-23 10:33:07',5002,1),
('vkusumo@example.net','2025-05-23 10:33:07',7484,4),
('wahyuniatmaja@example.org','2025-05-04 09:05:33',3107,4),
('wahyuniatmaja@example.org','2025-05-04 09:05:33',9514,4),
('winarsiheman@example.com','2025-05-16 03:55:46',5002,1),
('winarsiheman@example.com','2025-05-16 03:55:46',9514,1),
('winarsiheman@example.com','2025-05-17 14:15:21',1240,2),
('winarsiheman@example.com','2025-05-17 14:15:21',5582,1),
('zadriansyah@example.net','2025-05-13 02:09:00',1036,1),
('zadriansyah@example.net','2025-05-13 02:09:00',7484,1),
('zadriansyah@example.net','2025-05-13 16:57:36',3107,3),
('zadriansyah@example.net','2025-05-13 16:57:36',9514,3);
/*!40000 ALTER TABLE `pemesanan_obat_obat` ENABLE KEYS */;
UNLOCK TABLES;

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
(51,177,96749,181502),
(52,632,9579,198276),
(53,672,81586,132669),
(54,103,9193,134099),
(55,672,62341,89812),
(56,710,38900,11093),
(57,643,46899,155381),
(58,326,30939,208874),
(59,643,23748,144542),
(60,326,56487,202092),
(61,643,45379,167489),
(62,281,74886,240416),
(63,451,74958,10047),
(64,632,6846,66516),
(65,654,32562,97941),
(66,735,71572,174051),
(67,177,20351,144483),
(68,672,16877,20918),
(69,326,79740,63161),
(70,458,4615,214803),
(71,672,31696,129550),
(72,643,24916,107894),
(73,451,35495,174926),
(74,226,42753,147398),
(75,111,96653,189117),
(76,672,55236,64197),
(77,326,51071,153089),
(78,471,91071,97403),
(79,7,35364,246797),
(80,471,10025,134310),
(81,672,45133,143204),
(82,735,89057,138902),
(83,281,51774,145634),
(84,894,69350,197233),
(85,894,86860,140165),
(86,458,24888,160804),
(87,643,18128,92521),
(88,894,96832,164163),
(89,111,6959,89831),
(90,103,84014,57584),
(91,643,38631,175007),
(92,326,44879,126489),
(93,643,35874,247821),
(94,177,62663,51052),
(95,451,40719,199517),
(96,458,90402,93325),
(97,643,34203,133537),
(98,226,69859,51490),
(99,471,5827,158245),
(100,451,88557,236108);
/*!40000 ALTER TABLE `pengeluaran_resep` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `chk_email` CHECK (`email` like '%_@__%.__%')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` VALUES
('aditya94@example.org','+_Bq+mwb996c','Zalindra Purnawati','1968-05-05',57),
('agnes55@example.com','b*U3gmFaY66+','Hendra Thamrin','1964-12-22',60),
('ajimansitompul@example.com','%HK4fmSa!k42','Wage Nasyiah','2012-11-07',12),
('ajimin91@example.com','#FZ$8wQy6ylI','Karimah Permata','2004-12-20',20),
('amandasari@example.net','*7FEkNf%&3bF','Vanesa Anggriawan','1963-06-09',62),
('anggabayakurniawan@example.org','%W(KvZwd4l86','Perkasa Suryono','1987-07-27',37),
('apurnawati@example.net','(36MuE(@gWr2','Mursita Permadi','2011-09-20',13),
('aryanibakidin@example.net','3lU1i_F&#wgF','Ibrahim Wibowo, S.H.','1987-05-24',38),
('aryanigina@example.com','P@Lqm2!xGAI6','KH. Gamblang Prasetyo','2008-12-25',16),
('aryanijumari@example.org','!p%)Q!LWG2nB','Raden Maulana','1978-11-15',46),
('asaputra@example.org','_^^H8Ahu(6)*','Dt. Karya Mardhiyah, S.E.I','2006-07-01',18),
('asmuni48@example.org','J$1bglk6YCLX','Bella Mansur','1957-09-19',67),
('aswani55@example.net','3&&SV0t8r)7(','Dr. Surya Januar, S.Kom','1968-09-04',56),
('atmamaulana@example.org','!p*ACwrP^e6C','R.A. Ira Mardhiyah','1999-01-26',26),
('bahuwarnasirait@example.net','0voQme5x%O%U','Dr. Legawa Tamba, S.Pt','1956-09-05',68),
('balidin94@example.com','_0cJQm%sgP3W','Pia Rajata','1979-05-25',46),
('banawidabukke@example.org','h6Qks^gr_RFC','Lanjar Adriansyah','1979-03-17',46),
('bgunarto@example.com','Fr+T!Vj2Ag5X','Nugraha Simanjuntak','1956-09-12',68),
('caket94@example.net','$m$zUvc34(6h','Muhammad Nugroho','2002-08-05',22),
('cakrawalalatupono@example.org','@UY0NYecy9HJ','Gawati Puspita','1983-04-04',42),
('cawisadi07@example.com','qpXj9oDxVm&P','Rika Thamrin','1999-04-17',26),
('cawisonojailani@example.com','*GCytb1lRg3V','Cut Titin Marpaung, S.Pd','2013-06-20',11),
('dagelmegantara@example.net','b8+MJoHpWMV$','Balamantri Santoso','1945-08-08',79),
('danu06@example.com','v34E17OqS@_q','Bakianto Handayani, M.M.','1948-10-31',76),
('dasa21@example.net','Nc5uT%Z0r+#w','Eka Lazuardi','2001-02-06',24),
('dasa69@example.com','@+7*cXb2l9SL','Dt. Raihan Wulandari','1952-03-27',73),
('diansaputra@example.com','96TM6pc3_Mp7','Mala Mulyani','2002-06-27',22),
('dnarpati@example.net','l+ms3NRjiYk2','Sarah Winarsih','1987-10-09',37),
('dongorangandi@example.org','*r2Rrm*QN2wF','Karta Wibowo, S.Pd','1976-02-20',49),
('dutama@example.org','kQS8+phg7%1W','Ganep Maryati','1974-03-04',51),
('edwarduyainah@example.net','!kUPbOf!Z7^C','drg. Lili Siregar','1965-05-01',60),
('elinainggolan@example.com','D6tR#yh%yNz&','Bakti Salahudin','1969-08-08',55),
('ellisfujiati@example.net','uE%KLNxhm%y4','drg. Jatmiko Nugroho','1999-05-16',26),
('emilsihotang@example.org','X+S)Cvfo$ib1','Anom Hutapea','2000-08-30',24),
('endrarajata@example.net','s)3^U(mNp+M@','Drs. Sakti Wasita, M.Farm','1947-04-08',78),
('fandriani@example.com','n@3qSEporUZT','Galih Mangunsong','1948-10-13',76),
('faridahamima@example.com','gwK6*plt_41h','Prabawa Uwais','2007-03-17',18),
('fhutapea@example.org','(Y^8WCsnou3(','Kiandra Hidayanto, S.I.Kom','2012-01-13',13),
('gaiman20@example.net','R5JC70yx)dS5','drg. Yahya Saefullah, M.M.','1983-05-02',42),
('gamblangramadan@example.org','yiR#DBlXy4tI','Puti Maya Wasita, S.Kom','1993-06-18',31),
('gamblangyulianti@example.net','mrz@WyNn!3C^','Dr. Queen Sihombing, S.Sos','1957-06-23',67),
('ganggraini@example.net','5c)_1yQu&EXC','Eka Palastri','1989-02-04',36),
('gara28@example.net','T4YetzW#(p4m','Wirda Ramadan','1964-08-16',60),
('ghani57@example.org','Ar()npJ%@m2U','Tasdik Winarno, S.E.I','2015-01-31',10),
('girawan@example.com','+5bfPmL$!QQX','KH. Sabri Manullang','1981-01-10',44),
('gtamba@example.com','WJwbI1dIiA&0','Kemal Permadi','1962-01-28',63),
('hairyanto00@example.com','(Zp325XrT6z8','Amelia Mahendra','1954-03-27',71),
('hana80@example.org','3sL9S1mA!Gtu','Kania Hastuti, S.H.','1955-03-08',70),
('hardiansyahsimon@example.net','2p!uV#Zu%RHN','Rahmi Nasyidah','1948-09-21',76),
('hartanamanullang@example.net','&pjr)ZAxt3LN','Halima Prasetyo','1979-10-15',45),
('hasimpranowo@example.org','(4h!wn9aq)N&','Rahmat Suryono','1974-12-27',50),
('hidayatgaran@example.org','FC8MMCWhb@9Q','Oliva Yuniar','1971-08-16',53),
('imarbun@example.net','_tv+hsw@C1Gt','Wani Nuraini','1991-02-24',34),
('jabal27@example.com','!g@Nx@38!oZ3','Rafi Wijayanti','1978-03-22',47),
('jaemansuryono@example.org','B2g^ddXI@pCe','Tiara Zulaika','2001-12-27',23),
('janggraini@example.net','urc$Pjd6ux83','Ir. Sadina Saptono, S.E.I','1956-08-27',68),
('januarkalim@example.org','+(0OBjCEO3Bj','Lili Uwais','1999-08-20',25),
('jfujiati@example.org','Fp$DyW&tU%4D','Sakura Prayoga','1995-02-11',30),
('jhutasoit@example.com','I56&dFXrIIY2','Indah Zulaika','1992-10-15',32),
('julialatupono@example.net','q1H4QXqk!5V@','drg. Pandu Yolanda, S.IP','2004-08-14',20),
('jwibisono@example.com','&Tm1ZCUcQB%I','Karman Dongoran','1972-05-12',53),
('kamilanovitasari@example.com','MS9FK7g!*9kd','Tgk. Siska Widodo, S.IP','1999-12-10',25),
('karjaoktaviani@example.net','r$m0AfJ1liLn','R. Vega Fujiati, S.T.','1948-01-25',77),
('karma52@example.net','Y_c7rSZfrd9Z','drg. Uli Yolanda, M.Pd','1999-10-11',25),
('kfirgantoro@example.net','#v@G5ZNbXU6t','Mila Sihombing','1983-05-14',42),
('ksuryono@example.net','9%5XF%f#_jid','Ade Nababan','1985-09-09',39),
('kurniawanatmaja@example.net','aKg0drKmXf+a','Upik Yuliarti','1952-10-12',72),
('lailasarihartaka@example.org','Q9e&Y3Suu)C(','Vivi Novitasari','1975-05-11',50),
('laksmiwatilegawa@example.net','XfmkSibe%3S3','Shakila Farida, S.IP','2006-09-28',18),
('lalahastuti@example.com','*zBM6zqrZ1tW','Diah Mandala','1966-03-31',59),
('lazuardigandi@example.org','%7E7eM2yqZp4','Shakila Sihotang','1991-09-26',33),
('luwarwahyuni@example.net',')sXAx2ts8YKE','Najwa Gunawan','1986-03-03',39),
('mandasarikurnia@example.org',')BinzBg58faH','Rama Riyanti','2013-08-23',11),
('mandasaritedi@example.net','92U*jX%D!L%I','Nasim Andriani','1956-05-01',69),
('marbunwulan@example.org','gh8fENuo@TpQ','T. Harjaya Saefullah','1955-08-28',69),
('margana69@example.net','l0QOdKe&%SPk','Tedi Gunarto','1948-11-20',76),
('martana55@example.net','#WpWLeu3L7o9','Sutan Raden Budiyanto, M.Pd','1983-08-05',41),
('martaniwijaya@example.org','waFrFa%sp$6G','Zaenab Laksita, S.Pd','1990-02-19',35),
('martaniwulandari@example.net','5XZP^UxJ)J2Z','Tgk. Joko Uwais','1981-05-30',44),
('maryantoprabowo@example.com','&TCUt_bh4aVS','Kezia Puspasari','2006-04-16',19),
('maryatijayeng@example.org','$wMA3pCmr(l(','Rahmi Maulana','1957-01-29',68),
('mayasariganjaran@example.net','jc3xhRdn#0@@','Dina Handayani','1961-05-23',64),
('mitradongoran@example.net',')N+l5sFs_Kj6','Tina Pratiwi','1974-11-13',50),
('mujur75@example.org','$T9a1JLhT$Lt','Hj. Icha Handayani','1953-03-13',72),
('mulyonopuspasari@example.org','3K6#Lx8aXoKp','Jessica Nasyidah, S.Farm','1992-09-24',32),
('nalarutama@example.org','uL531Vkpv)wU','Gambira Saefullah','1969-02-24',56),
('natsirjabal@example.org','!I*gjDqv^+1r','Wani Nababan','2005-02-16',20),
('nilam04@example.org','^)7@Km#bO^OW','Cayadi Salahudin, S.Sos','1963-05-01',62),
('olivia33@example.org','QL8pqNAW+LLN','Drs. Patricia Zulkarnain, M.Ak','1994-11-05',30),
('oramadan@example.net','Iy@PPhyI$1(k','Tiara Melani','2002-07-25',22),
('paulin77@example.net','O)21#hlatF2X','Cornelia Tampubolon','1982-03-10',43),
('pertiwivivi@example.org','4hbA8Zl$9Eo(','R. Lala Napitupulu, S.Pd','1977-04-08',48),
('pmustofa@example.net','I0qY_rDss#!7','Eman Anggraini','1949-10-25',75),
('prabawanamaga@example.com','p(D07wDzxNu3','drg. Sakti Winarno','1992-11-28',32),
('prabowokurnia@example.net','zq5Zhit2R!4i','Hasna Firgantoro','1958-06-25',66),
('prasetyafirmansyah@example.net','a)INUPmDMM5B','Makara Usamah','1989-09-28',35),
('prastutijamil@example.net','p7gm2FBmbiJ^','Saadat Saputra, S.I.Kom','2014-08-04',10),
('pratamaifa@example.org',')c5Wfh0(v*(Q','Imam Pudjiastuti','1965-04-22',60),
('prayogamulyono@example.org','&HJ5pmsd*!6w','Nova Riyanti','1983-10-15',41),
('purwadipurwanti@example.org','B*U)3JxHnf$B','Aris Napitupulu','1980-01-14',45),
('putrafitriani@example.org','@vsGZJaLVk8V','Puti Agnes Firmansyah, M.Ak','1952-01-12',73),
('putri89@example.com','aZDGiXwOwz#1','Vanesa Hutagalung','1961-06-26',63),
('qgunawan@example.net','*QZP4L*y%*!*','Tgk. Lala Siregar','1950-06-03',75),
('qhakim@example.com','^37KDiSZ!&kt','Lukita Safitri, M.TI.','1995-12-06',29),
('qsitompul@example.com','@9xuX@Tw+7zv','Garan Sihombing','1979-10-19',45),
('qwaluyo@example.com','L*&xJFKmsLn8','Zelaya Yolanda, M.TI.','1954-06-05',71),
('radika64@example.com','_6!XPv1e0S*4','Dewi Irawan','1982-05-06',43),
('raditnainggolan@example.net','Iv%YZgkC@+7Z','Kusuma Susanti, S.H.','1980-07-08',44),
('rafidkurniawan@example.org','aCY1!@Rr$K5$','Kemal Nuraini','1990-03-28',35),
('raina87@example.com','Q23qqA8f*CPX','R.A. Oliva Haryanto, S.E.','1998-06-01',27),
('ratihuyainah@example.com','xs+4EXAlpN(5','Cut Maimunah Simanjuntak','1959-03-23',66),
('rhutapea@example.net','Awa(DNR%#0hD','Tgk. Maya Yulianti','2001-12-01',23),
('rina51@example.net','!pKXaBSP7vpd','Opan Susanti','2007-05-20',18),
('rpranowo@example.net','#6_4VWwu281H','Ratih Pratiwi','1962-10-03',62),
('rudikurniawan@example.com','IT@4xI6h9475','Ega Irawan','1946-05-23',79),
('safinawahyuni@example.com','F!8j)Q1rQw2c','Rachel Uyainah, M.Kom.','1992-05-15',33),
('safitrigadang@example.org','$KMGhU!@t7bd','Drs. Gawati Sirait, S.E.','1955-03-31',70),
('saktihutasoit@example.com','cHmlaDEqjz*4','Candra Prayoga, S.E.','1987-07-31',37),
('salimah44@example.net','Cnrc+Acr_0Y4','Hj. Hani Maryati','1981-07-30',43),
('septipermadi@example.org','WXv^(Dos_Z8V','Jaka Purnawati, S.H.','1990-01-31',35),
('sfarida@example.net','#qSF4RrypU39','Lalita Laksita, S.IP','1969-02-20',56),
('simboloneka@example.com','+i)hXzEh*9au','Putri Hidayanto, S.Kom','1955-10-27',69),
('simbolonkayun@example.com','$pAE_&b0+5mV','Yoga Marbun','1965-03-19',60),
('siska63@example.org','06qMDvjSSlP_','Jasmin Prabowo','1977-08-07',47),
('sitompulmujur@example.org','+Ka&Iklm%W9g','Michelle Pratama','1969-01-06',56),
('sprasetyo@example.org','$6OF%MkdVP(^','Ulva Prabowo','1979-03-26',46),
('suryonogilda@example.org','@9gM*p6bQwZ2','Emas Nasyidah','2009-07-19',15),
('tania97@example.org','Ot9nUmYP3+&g','drg. Karen Suartini','1983-12-15',41),
('taswir69@example.org','L0TwsF2Q#1P0','Edison Sitorus','1958-10-30',66),
('usamahendra@example.org','(9aGwq%r+dEO','Kamal Puspita, S.E.','2006-10-16',18),
('uyainahgamani@example.net','_*O(B#t4oH8Y','Darman Wahyuni, S.Ked','2002-10-06',22),
('uyainahlintang@example.org','629&lOgk)$4V','Galar Prasasta','1976-06-21',48),
('vanya26@example.net','!Q4prXKvr%Ku','Cawuk Permata','1949-09-24',75),
('vickytamba@example.com','s#+j+Zgw^5d8','Dt. Harsanto Kusumo','1964-08-18',60),
('vkusumo@example.net','63^!i@Yn(5C9','Hani Dongoran','1974-09-12',50),
('vmangunsong@example.org','$h7jsGJh#LI#','Drs. Prayoga Nainggolan, S.Gz','2002-03-11',23),
('vsantoso@example.com','4!xW5XtL%t71','Sarah Wijayanti','1958-12-30',66),
('wahyuniatmaja@example.org','HIKDYIDl@)7X','R.A. Puput Utama, M.Kom.','2003-01-06',22),
('warjisusanti@example.com','k)ZBHemMP(4W','H. Pranata Nasyiah, M.Pd','1989-02-05',36),
('widiastutidaryani@example.net','X&0I(JnIV^)H','Cawisadi Prasetya','2015-05-02',10),
('widodofarhunnisa@example.org','L^E715MpOo&L','Ir. Vivi Simbolon','2006-12-17',18),
('winarsiheman@example.com','Lpw41Lz9NAV@','Dr. Galiono Samosir','1958-01-24',67),
('wprasetya@example.org','%WiYb1o@g68M','Tgk. Tiara Puspita','1960-09-26',64),
('yhartati@example.com','_pKXFsth+53D','Betania Dongoran, M.Kom.','1966-08-10',58),
('yolandaismail@example.net','woIwT9Az1!ah','Dimas Irawan','1991-02-20',34),
('yprabowo@example.net','gZo4CBnhcR(c','Rudi Wahyudin','1964-04-16',61),
('yuliantibakiadi@example.net','c(55O0hcEhkV','Cakrawangsa Prasasta','1994-10-03',30),
('ywasita@example.net',')4SIyz&%5Qff','drg. Hilda Winarsih','1989-10-10',35),
('zadriansyah@example.net','+*8cQ_FzTQ6Z','Raditya Farida','2013-09-30',11),
('zsaefullah@example.net','F!X4iMs&g^L!','Safina Suwarno','2001-04-09',24);
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
  CONSTRAINT `resep_obat_ibfk_2` FOREIGN KEY (`id_resep`) REFERENCES `pengeluaran_resep` (`id_resep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep_obat`
--

LOCK TABLES `resep_obat` WRITE;
/*!40000 ALTER TABLE `resep_obat` DISABLE KEYS */;
INSERT INTO `resep_obat` VALUES
(76,9193,'1x sehari 2 tablet','Sebelum makan',3),
(76,9579,'1x sehari 1 tablet','Saat makan',3),
(76,35874,'1x sehari 1 tablet','Saat makan',5),
(76,51071,'3x sehari 2 tablet','Saat makan',3),
(76,55236,'1x sehari 2 tablet','Sebelum makan',4),
(76,96653,'2x sehari 1 tablet','Saat makan',3),
(76,96749,'3x sehari 2 tablet','Sebelum makan',4),
(1036,6959,'3x sehari 1 tablet','Sebelum makan',2),
(1036,32562,'1x sehari 2 tablet','Sebelum makan',2),
(1036,38631,'2x sehari 1 tablet','Saat makan',4),
(1036,55236,'1x sehari 1 tablet','Saat makan',1),
(1036,62663,'3x sehari 2 tablet','Sebelum makan',2),
(1036,74958,'3x sehari 2 tablet','Saat makan',2),
(1036,86860,'3x sehari 1 tablet','Sebelum makan',4),
(1236,4615,'3x sehari 2 tablet','Saat makan',5),
(1236,30939,'3x sehari 2 tablet','Sesudah makan',1),
(1236,35364,'2x sehari 2 tablet','Saat makan',5),
(1236,35874,'3x sehari 1 tablet','Sesudah makan',2),
(1236,62341,'3x sehari 1 tablet','Sesudah makan',5),
(1240,44879,'1x sehari 2 tablet','Sesudah makan',3),
(1240,51774,'1x sehari 1 tablet','Sesudah makan',5),
(1240,71572,'1x sehari 1 tablet','Sebelum makan',5),
(1240,74886,'1x sehari 1 tablet','Sebelum makan',3),
(1240,86860,'1x sehari 2 tablet','Sesudah makan',1),
(1240,88557,'2x sehari 1 tablet','Sesudah makan',5),
(1672,16877,'1x sehari 1 tablet','Saat makan',5),
(1672,18128,'1x sehari 2 tablet','Sesudah makan',4),
(1672,23748,'2x sehari 2 tablet','Saat makan',1),
(1672,24888,'3x sehari 1 tablet','Sesudah makan',3),
(1672,71572,'2x sehari 1 tablet','Sesudah makan',3),
(1672,96832,'1x sehari 2 tablet','Saat makan',3),
(2723,23748,'1x sehari 2 tablet','Saat makan',3),
(2723,35364,'3x sehari 1 tablet','Sebelum makan',5),
(3095,16877,'2x sehari 2 tablet','Sesudah makan',2),
(3095,69859,'3x sehari 1 tablet','Sesudah makan',2),
(3095,84014,'2x sehari 2 tablet','Saat makan',5),
(3095,96653,'2x sehari 1 tablet','Sesudah makan',4),
(3107,45133,'2x sehari 1 tablet','Saat makan',2),
(3107,45379,'3x sehari 2 tablet','Saat makan',4),
(3107,51071,'3x sehari 1 tablet','Sebelum makan',4),
(3107,62663,'2x sehari 2 tablet','Sesudah makan',5),
(3107,74886,'1x sehari 1 tablet','Sesudah makan',1),
(3107,96749,'3x sehari 2 tablet','Sebelum makan',5),
(5002,6846,'3x sehari 1 tablet','Sesudah makan',3),
(5002,24916,'1x sehari 2 tablet','Saat makan',3),
(5002,34203,'3x sehari 1 tablet','Saat makan',3),
(5002,40719,'3x sehari 2 tablet','Sebelum makan',3),
(5002,81586,'2x sehari 2 tablet','Saat makan',4),
(5002,89057,'1x sehari 2 tablet','Saat makan',3),
(5582,4615,'1x sehari 1 tablet','Saat makan',1),
(5582,31696,'3x sehari 2 tablet','Sesudah makan',1),
(5582,45133,'3x sehari 1 tablet','Sebelum makan',2),
(5582,46899,'3x sehari 2 tablet','Sebelum makan',1),
(5582,51774,'2x sehari 1 tablet','Saat makan',5),
(5582,69350,'1x sehari 2 tablet','Saat makan',3),
(5582,88557,'1x sehari 1 tablet','Saat makan',1),
(6072,5827,'3x sehari 1 tablet','Saat makan',5),
(6072,9193,'3x sehari 2 tablet','Saat makan',4),
(6072,30939,'2x sehari 2 tablet','Saat makan',4),
(6072,69350,'2x sehari 1 tablet','Sesudah makan',3),
(6072,79740,'3x sehari 2 tablet','Sesudah makan',1),
(6234,20351,'1x sehari 1 tablet','Sesudah makan',4),
(6234,56487,'1x sehari 2 tablet','Sebelum makan',5),
(7472,24916,'3x sehari 1 tablet','Saat makan',3),
(7472,34203,'3x sehari 2 tablet','Sesudah makan',2),
(7472,38900,'3x sehari 2 tablet','Sebelum makan',1),
(7472,40719,'3x sehari 2 tablet','Saat makan',3),
(7472,69859,'2x sehari 2 tablet','Sebelum makan',2),
(7472,91071,'2x sehari 2 tablet','Sebelum makan',2),
(7484,6846,'1x sehari 2 tablet','Sesudah makan',2),
(7484,32562,'2x sehari 2 tablet','Saat makan',5),
(7484,35495,'2x sehari 2 tablet','Sebelum makan',5),
(7484,56487,'3x sehari 1 tablet','Saat makan',2),
(7484,81586,'3x sehari 1 tablet','Sesudah makan',4),
(7484,84014,'2x sehari 2 tablet','Saat makan',4),
(7576,6959,'1x sehari 1 tablet','Sebelum makan',3),
(7576,9579,'2x sehari 2 tablet','Sesudah makan',4),
(7576,46899,'2x sehari 2 tablet','Sebelum makan',3),
(7576,90402,'2x sehari 1 tablet','Sesudah makan',5),
(7603,24888,'2x sehari 2 tablet','Sesudah makan',3),
(7603,31696,'2x sehari 1 tablet','Saat makan',4),
(7603,44879,'1x sehari 1 tablet','Sebelum makan',1),
(7603,89057,'1x sehari 2 tablet','Sesudah makan',2),
(7785,18128,'1x sehari 2 tablet','Sesudah makan',2),
(7785,42753,'1x sehari 2 tablet','Saat makan',1),
(7785,74958,'1x sehari 1 tablet','Sesudah makan',1),
(9116,5827,'3x sehari 2 tablet','Sesudah makan',3),
(9116,10025,'2x sehari 2 tablet','Sesudah makan',1),
(9116,20351,'1x sehari 1 tablet','Sebelum makan',1),
(9116,45379,'2x sehari 1 tablet','Sesudah makan',5),
(9116,79740,'1x sehari 2 tablet','Sebelum makan',4),
(9116,91071,'3x sehari 2 tablet','Sebelum makan',3),
(9514,10025,'1x sehari 2 tablet','Saat makan',3),
(9514,96832,'1x sehari 2 tablet','Sebelum makan',5),
(9897,35495,'2x sehari 1 tablet','Sesudah makan',3),
(9897,38631,'2x sehari 1 tablet','Sesudah makan',5),
(9897,38900,'2x sehari 1 tablet','Sebelum makan',1),
(9897,42753,'3x sehari 1 tablet','Sesudah makan',5),
(9897,62341,'3x sehari 1 tablet','Sesudah makan',2),
(9897,90402,'1x sehari 2 tablet','Sebelum makan',4);
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
(7,'RS (Persero) Tbk Batam','Riau','Lhokseumawe','Jl. Dipenogoro No. 70'),
(103,'RS Tbk Padang','Jawa Timur','Denpasar','Gg. Gegerkalong Hilir No. 2'),
(111,'RS Tbk Bau-Bau','DI Yogyakarta','Kota Administrasi Jakarta Selatan','Jalan M.H Thamrin No. 70'),
(177,'RS Tbk Kupang','Sulawesi Tengah','Semarang','Gg. Setiabudhi No. 3'),
(226,'RS Tbk Balikpapan','Kepulauan Riau','Subulussalam','Gang Wonoayu No. 99'),
(281,'RS Tbk Padang','Papua','Meulaboh','Gang Kendalsari No. 71'),
(324,'RS Tbk Jambi','Papua Barat','Jambi','Gg. Erlangga No. 759'),
(326,'RS Tbk Salatiga','Kepulauan Riau','Kendari','Gg. Ahmad Yani No. 69'),
(451,'RS (Persero) Tbk Sawahlunto','DI Yogyakarta','Kota Administrasi Jakarta Timur','Gang Waringin No. 37'),
(458,'RS Tbk Parepare','Jawa Timur','Kotamobagu','Jl. Ir. H. Djuanda No. 792'),
(471,'RS Tbk Batu','Maluku Utara','Kota Administrasi Jakarta Timur','Jl. Otto Iskandardinata No. 7'),
(632,'RS Tbk Semarang','Sumatera Selatan','Palembang','Jl. W.R. Supratman No. 128'),
(643,'RS Tbk Bontang','Jawa Tengah','Bandar Lampung','Gg. Peta No. 071'),
(654,'RS Tbk Bukittinggi','Aceh','Sukabumi','Jalan Surapati No. 0'),
(672,'RS Tbk Pagaralam','Jambi','Madiun','Jl. KH Amin Jasuta No. 892'),
(710,'RS Tbk Bekasi','Nusa Tenggara Timur','Jayapura','Jalan Raya Setiabudhi No. 007'),
(735,'RS (Persero) Tbk Ternate','Lampung','Banjarbaru','Gg. Wonoayu No. 67'),
(832,'RS (Persero) Tbk Kota Administrasi Jakarta Utara','DI Yogyakarta','Payakumbuh','Jalan Erlangga No. 1'),
(894,'RS (Persero) Tbk Surabaya','Papua Barat','Magelang','Gang Suniaraja No. 6'),
(991,'RS Tbk Balikpapan','Bengkulu','Tomohon','Jl. Kapten Muslihat No. 999');
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
  `status_baterai` enum('low','medium','full') NOT NULL DEFAULT 'full',
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
(10455,'low','Putih'),
(11443,'full','Hitam'),
(17227,'medium','Merah'),
(20030,'medium','Hitam'),
(21034,'full','Hitam'),
(21561,'low','Hijau'),
(22935,'low','Abu-abu'),
(25082,'low','Merah'),
(27236,'full','Biru'),
(27473,'full','Hijau'),
(30104,'full','Biru'),
(32232,'full','Kuning'),
(32392,'low','Hitam'),
(33123,'medium','Hitam'),
(33491,'medium','Merah'),
(35194,'full','Merah'),
(35661,'full','Putih'),
(36003,'medium','Biru'),
(37541,'full','Merah'),
(38953,'low','Putih'),
(42739,'low','Putih'),
(47258,'medium','Biru'),
(48511,'low','Hitam'),
(48675,'low','Kuning'),
(50626,'full','Merah'),
(51010,'low','Putih'),
(51739,'low','Biru'),
(52701,'low','Hijau'),
(53134,'medium','Merah'),
(53877,'full','Putih'),
(54769,'low','Hijau'),
(56975,'low','Abu-abu'),
(57654,'full','Hijau'),
(58419,'medium','Abu-abu'),
(58489,'medium','Merah'),
(60791,'full','Abu-abu'),
(62467,'full','Biru'),
(63585,'medium','Merah'),
(65387,'full','Putih'),
(67452,'full','Abu-abu'),
(68996,'medium','Biru'),
(69368,'full','Kuning'),
(76259,'medium','Hitam'),
(80947,'full','Abu-abu'),
(82903,'low','Kuning'),
(83262,'full','Kuning'),
(85180,'full','Merah'),
(87008,'medium','Abu-abu'),
(94463,'low','Merah'),
(96832,'full','Abu-abu');
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
('aditya94@example.org','+62-069-176-8329'),
('aditya94@example.org','+62-099-289-3588'),
('aditya94@example.org','+62-79-185-3983'),
('agnes55@example.com','+62 (039) 069-6161'),
('agnes55@example.com','+62 (410) 680 7868'),
('agnes55@example.com','+62-108-272-6687'),
('ajimansitompul@example.com','+62 (15) 983 0089'),
('ajimin91@example.com','+62 (766) 721-5494'),
('ajimin91@example.com','0873103738'),
('amandasari@example.net','0802324066'),
('amandasari@example.net','0822986505'),
('anggabayakurniawan@example.org','+62 (041) 927 2887'),
('apurnawati@example.net','(018) 749 5301'),
('apurnawati@example.net','+62 (0243) 717 0746'),
('apurnawati@example.net','+62-229-053-5612'),
('apurnawati@example.net','089 089 1926'),
('aryanibakidin@example.net','(0420) 643 7953'),
('aryanibakidin@example.net','+62-091-368-8827'),
('aryanigina@example.com','+62 (080) 904-9920'),
('aryanigina@example.com','+62 (86) 172-8971'),
('aryanijumari@example.org','(0724) 296 2987'),
('aryanijumari@example.org','(073) 141 6223'),
('asaputra@example.org','+62 (0173) 540-3104'),
('asmuni48@example.org','+62 (22) 113 6910'),
('asmuni48@example.org','+62 (75) 404-9488'),
('asmuni48@example.org','+62-88-681-3690'),
('aswani55@example.net','+62 (96) 225-8350'),
('aswani55@example.net','+62-833-133-7162'),
('atmamaulana@example.org','085 183 3146'),
('bahuwarnasirait@example.net','+62 (0532) 055 3319'),
('balidin94@example.com','(0120) 713 5145'),
('balidin94@example.com','+62 (851) 990-0638'),
('balidin94@example.com','0819699298'),
('balidin94@example.com','086 565 6194'),
('banawidabukke@example.org','+62 (064) 320-3769'),
('banawidabukke@example.org','+62 (32) 414 9429'),
('bgunarto@example.com','(0176) 863-6269'),
('bgunarto@example.com','(0736) 475 8664'),
('caket94@example.net','+62 (06) 518-4364'),
('caket94@example.net','+62-0529-801-1422'),
('cakrawalalatupono@example.org','+62-94-188-6435'),
('cakrawalalatupono@example.org','0869752058'),
('cawisadi07@example.com','+62 (303) 847 3752'),
('cawisonojailani@example.com','+62 (159) 946-6944'),
('cawisonojailani@example.com','+62-037-671-0537'),
('dagelmegantara@example.net','(069) 509-7666'),
('dagelmegantara@example.net','+62 (099) 932-8785'),
('dagelmegantara@example.net','+62-202-537-5152'),
('danu06@example.com','+62 (828) 716 4893'),
('dasa21@example.net','(040) 463 0683'),
('dasa21@example.net','+62 (0636) 570 6583'),
('dasa69@example.com','(049) 081-2977'),
('diansaputra@example.com','+62-284-951-0340'),
('dnarpati@example.net','(055) 599-2839'),
('dnarpati@example.net','(057) 737-3266'),
('dnarpati@example.net','+62 (0483) 469-7056'),
('dnarpati@example.net','+62 (30) 543-2162'),
('dongorangandi@example.org','+62 (0175) 749-7673'),
('dongorangandi@example.org','+62-004-584-2153'),
('dongorangandi@example.org','0839395448'),
('dutama@example.org','+62-078-479-3435'),
('edwarduyainah@example.net','(0116) 660-6710'),
('edwarduyainah@example.net','+62 (012) 435 4523'),
('edwarduyainah@example.net','+62 (089) 177 2606'),
('edwarduyainah@example.net','+62-28-041-8248'),
('edwarduyainah@example.net','0890452059'),
('elinainggolan@example.com','(044) 420-8739'),
('elinainggolan@example.com','+62-288-422-9629'),
('ellisfujiati@example.net','(0179) 182 5787'),
('ellisfujiati@example.net','+62 (032) 279-7359'),
('ellisfujiati@example.net','+62 (676) 601 8223'),
('ellisfujiati@example.net','+62-128-121-6692'),
('ellisfujiati@example.net','+62-56-515-4451'),
('emilsihotang@example.org','+62 (0607) 594-8120'),
('emilsihotang@example.org','+62-0428-735-6101'),
('emilsihotang@example.org','088 343 0087'),
('endrarajata@example.net','(0548) 790-6237'),
('endrarajata@example.net','+62 (0414) 010 2317'),
('endrarajata@example.net','+62-327-637-9091'),
('endrarajata@example.net','089 615 5579'),
('fandriani@example.com','+62 (004) 978 9019'),
('fandriani@example.com','+62 (44) 344 0556'),
('faridahamima@example.com','(0649) 496-7971'),
('faridahamima@example.com','+62-04-841-9580'),
('fhutapea@example.org','+62 (0622) 218 5432'),
('fhutapea@example.org','+62 (306) 890-6055'),
('fhutapea@example.org','+62 (353) 685-8011'),
('gaiman20@example.net','(0541) 350 3105'),
('gaiman20@example.net','+62-0660-776-5459'),
('gamblangramadan@example.org','+62 (040) 415 6714'),
('gamblangyulianti@example.net','+62 (996) 271-8749'),
('gamblangyulianti@example.net','+62-0064-231-4967'),
('ganggraini@example.net','+62 (572) 088 3397'),
('gara28@example.net','+62-01-476-0837'),
('ghani57@example.org','+62-034-505-6289'),
('ghani57@example.org','0889641979'),
('girawan@example.com','+62 (055) 544-9224'),
('gtamba@example.com','+62 (62) 715 9823'),
('hairyanto00@example.com','+62-583-639-2737'),
('hairyanto00@example.com','+62-92-190-9653'),
('hana80@example.org','+62 (0280) 545-0131'),
('hana80@example.org','085 101 8273'),
('hardiansyahsimon@example.net','(082) 597-7140'),
('hartanamanullang@example.net','+62 (0492) 976 9160'),
('hartanamanullang@example.net','+62-0341-717-0451'),
('hasimpranowo@example.org','+62 (0351) 874 0198'),
('hidayatgaran@example.org','(028) 806-2353'),
('hidayatgaran@example.org','(064) 309-0069'),
('imarbun@example.net','+62 (0093) 863 3508'),
('jabal27@example.com','+62 (0452) 140 1458'),
('jaemansuryono@example.org','(0370) 783-5750'),
('jaemansuryono@example.org','(0985) 282 1759'),
('janggraini@example.net','(0742) 806 3306'),
('janggraini@example.net','(090) 755 3984'),
('janggraini@example.net','+62 (0268) 848 7535'),
('janggraini@example.net','+62-0430-590-3585'),
('janggraini@example.net','+62-86-127-0231'),
('januarkalim@example.org','+62-0871-674-6602'),
('jfujiati@example.org','+62 (43) 462-1369'),
('jfujiati@example.org','+62 (851) 581-9844'),
('jfujiati@example.org','+62-25-221-8828'),
('jfujiati@example.org','0856666879'),
('jhutasoit@example.com','+62 (0039) 196 9123'),
('julialatupono@example.net','(071) 808 0483'),
('julialatupono@example.net','+62 (872) 004-0803'),
('jwibisono@example.com','(072) 580 6342'),
('jwibisono@example.com','+62-35-997-1606'),
('kamilanovitasari@example.com','(085) 841-5629'),
('karjaoktaviani@example.net','+62 (0895) 404 7209'),
('karjaoktaviani@example.net','+62-0893-668-0786'),
('karma52@example.net','+62 (187) 808-3722'),
('karma52@example.net','+62 (29) 033 8143'),
('karma52@example.net','+62-704-058-0970'),
('kfirgantoro@example.net','082 284 6848'),
('ksuryono@example.net','+62 (066) 999-9474'),
('kurniawanatmaja@example.net','+62 (007) 668 4408'),
('lailasarihartaka@example.org','(0941) 321-9214'),
('lailasarihartaka@example.org','+62-58-785-0820'),
('laksmiwatilegawa@example.net','+62 (0413) 680-7450'),
('lalahastuti@example.com','(034) 206-8187'),
('lalahastuti@example.com','+62-032-567-1228'),
('lalahastuti@example.com','087 864 1485'),
('lazuardigandi@example.org','+62-0582-918-7317'),
('luwarwahyuni@example.net','+62-0727-558-8675'),
('mandasarikurnia@example.org','+62 (046) 455-3815'),
('mandasarikurnia@example.org','+62 (223) 904 3938'),
('mandasaritedi@example.net','+62 (913) 081-2169'),
('mandasaritedi@example.net','+62-032-247-0076'),
('marbunwulan@example.org','+62 (057) 508-5384'),
('marbunwulan@example.org','+62 (093) 611 3404'),
('marbunwulan@example.org','+62-0462-006-0536'),
('margana69@example.net','+62 (561) 351-8109'),
('martana55@example.net','(0998) 064 2034'),
('martana55@example.net','+62 (34) 133 1061'),
('martaniwijaya@example.org','+62 (0233) 039-7592'),
('martaniwijaya@example.org','+62 (0442) 639-2532'),
('martaniwijaya@example.org','084 673 9922'),
('martaniwulandari@example.net','+62 (000) 419-6024'),
('martaniwulandari@example.net','+62-091-162-9405'),
('maryantoprabowo@example.com','+62 (074) 387-0655'),
('maryantoprabowo@example.com','+62 (317) 067 7554'),
('maryatijayeng@example.org','+62 (88) 918 3606'),
('mayasariganjaran@example.net','+62 (010) 280 7579'),
('mitradongoran@example.net','+62 (32) 516-6068'),
('mitradongoran@example.net','+62 (83) 478 1313'),
('mujur75@example.org','(0905) 023 0727'),
('mujur75@example.org','0874063964'),
('mulyonopuspasari@example.org','(028) 460-3442'),
('nalarutama@example.org','+62 (0730) 504 0865'),
('nalarutama@example.org','+62-0454-865-1738'),
('nalarutama@example.org','+62-69-165-4997'),
('natsirjabal@example.org','(062) 344-1944'),
('natsirjabal@example.org','+62 (0247) 585 2218'),
('natsirjabal@example.org','0898383929'),
('nilam04@example.org','(043) 769-0684'),
('nilam04@example.org','+62 (012) 778 7145'),
('nilam04@example.org','+62 (265) 459 5160'),
('olivia33@example.org','(0654) 150 0692'),
('oramadan@example.net','+62 (73) 876 7557'),
('paulin77@example.net','+62 (062) 875-0729'),
('pertiwivivi@example.org','(0959) 708-3816'),
('pertiwivivi@example.org','+62 (078) 292-1751'),
('pertiwivivi@example.org','0812525890'),
('pmustofa@example.net','0896398017'),
('prabawanamaga@example.com','+62 (725) 557 0053'),
('prabawanamaga@example.com','+62 (749) 238-7273'),
('prabowokurnia@example.net','+62 (36) 966 9961'),
('prabowokurnia@example.net','+62 (407) 784 2012'),
('prasetyafirmansyah@example.net','+62 (579) 624 3227'),
('prastutijamil@example.net','+62 (09) 990 2972'),
('prastutijamil@example.net','+62-0200-969-1353'),
('prastutijamil@example.net','+62-69-379-9087'),
('pratamaifa@example.org','(000) 714-0627'),
('pratamaifa@example.org','(046) 086-0435'),
('prayogamulyono@example.org','+62 (0482) 223-3022'),
('prayogamulyono@example.org','0812566907'),
('purwadipurwanti@example.org','+62 (273) 814 2480'),
('putrafitriani@example.org','+62 (40) 408 6452'),
('putri89@example.com','(0975) 947-6573'),
('putri89@example.com','(0980) 908-0585'),
('putri89@example.com','+62-437-338-7811'),
('qgunawan@example.net','+62-0258-774-0420'),
('qhakim@example.com','+62-047-899-5882'),
('qsitompul@example.com','+62 (149) 960-4632'),
('qsitompul@example.com','+62 (460) 034 0616'),
('qwaluyo@example.com','(016) 370 3705'),
('qwaluyo@example.com','(087) 827-6979'),
('qwaluyo@example.com','+62 (85) 025-2708'),
('radika64@example.com','+62 (047) 047 2848'),
('raditnainggolan@example.net','(087) 241 1099'),
('raditnainggolan@example.net','+62 (0634) 562-5336'),
('rafidkurniawan@example.org','(005) 544 3109'),
('raina87@example.com','(027) 465-8155'),
('raina87@example.com','+62 (071) 796-6471'),
('raina87@example.com','+62-012-767-8229'),
('raina87@example.com','0832929919'),
('raina87@example.com','087 731 1698'),
('ratihuyainah@example.com','(006) 957 9135'),
('ratihuyainah@example.com','+62 (348) 739 4778'),
('ratihuyainah@example.com','084 074 6802'),
('rhutapea@example.net','+62 (0529) 690 3934'),
('rina51@example.net','+62 (92) 587 6406'),
('rpranowo@example.net','(0558) 463 8076'),
('rpranowo@example.net','(083) 315 9916'),
('rpranowo@example.net','+62 (083) 627 4838'),
('rudikurniawan@example.com','+62-72-965-7766'),
('safinawahyuni@example.com','+62 (096) 137-4013'),
('safitrigadang@example.org','(032) 253 9548'),
('safitrigadang@example.org','+62 (62) 843-3582'),
('saktihutasoit@example.com','+62 (556) 939-8244'),
('salimah44@example.net','+62 (0565) 388-0177'),
('salimah44@example.net','+62 (0765) 535-1801'),
('salimah44@example.net','+62 (436) 086-5087'),
('salimah44@example.net','+62 (60) 702 5252'),
('salimah44@example.net','+62-46-874-4927'),
('salimah44@example.net','0874196965'),
('septipermadi@example.org','+62 (636) 041-0512'),
('septipermadi@example.org','+62-75-540-7959'),
('sfarida@example.net','+62 (030) 157 8066'),
('simboloneka@example.com','+62 (051) 913-5462'),
('simboloneka@example.com','+62 (32) 375-4277'),
('simboloneka@example.com','084 433 0108'),
('simbolonkayun@example.com','+62 (73) 585-0007'),
('simbolonkayun@example.com','0817940829'),
('siska63@example.org','(0703) 156 0481'),
('sitompulmujur@example.org','(0113) 140 2593'),
('sitompulmujur@example.org','+62-51-336-4440'),
('sprasetyo@example.org','+62 (486) 947 2841'),
('suryonogilda@example.org','+62 (0542) 543 0040'),
('suryonogilda@example.org','+62 (0567) 745 4242'),
('suryonogilda@example.org','+62 (071) 111-2841'),
('suryonogilda@example.org','+62 (11) 552-5949'),
('tania97@example.org','+62 (0042) 185-4393'),
('tania97@example.org','+62 (36) 391 5334'),
('taswir69@example.org','+62 (022) 033 8543'),
('taswir69@example.org','+62 (876) 660-3660'),
('taswir69@example.org','+62-204-816-0886'),
('usamahendra@example.org','+62 (094) 122-8355'),
('uyainahgamani@example.net','+62 (075) 039 6346'),
('uyainahlintang@example.org','(011) 127 3460'),
('uyainahlintang@example.org','(0501) 027-3485'),
('uyainahlintang@example.org','+62 (18) 220-9818'),
('vanya26@example.net','+62 (0053) 006 0083'),
('vanya26@example.net','+62 (062) 645-0926'),
('vanya26@example.net','+62 (95) 595 7264'),
('vickytamba@example.com','(0568) 443 6886'),
('vickytamba@example.com','+62 (002) 558 8850'),
('vickytamba@example.com','+62 (011) 827-5203'),
('vkusumo@example.net','+62 (77) 649-5271'),
('vmangunsong@example.org','(003) 129-3361'),
('vmangunsong@example.org','+62 (036) 709 1771'),
('vmangunsong@example.org','+62 (67) 205-8558'),
('vmangunsong@example.org','+62-020-337-7434'),
('vsantoso@example.com','+62 (041) 021-6666'),
('vsantoso@example.com','+62 (082) 487-2823'),
('wahyuniatmaja@example.org','+62 (111) 714 6725'),
('wahyuniatmaja@example.org','+62 (305) 737 0489'),
('wahyuniatmaja@example.org','+62 (532) 034-4292'),
('wahyuniatmaja@example.org','085 650 2390'),
('warjisusanti@example.com','+62 (0992) 784-5897'),
('widiastutidaryani@example.net','+62 (37) 682-6943'),
('widodofarhunnisa@example.org','+62 (018) 602 6833'),
('widodofarhunnisa@example.org','+62 (94) 908-5001'),
('widodofarhunnisa@example.org','082 017 0625'),
('winarsiheman@example.com','(031) 929 4272'),
('winarsiheman@example.com','(0491) 424 7208'),
('wprasetya@example.org','+62 (245) 240-6678'),
('wprasetya@example.org','+62-58-320-5077'),
('yhartati@example.com','+62-0465-433-5957'),
('yolandaismail@example.net','(0363) 067-6659'),
('yprabowo@example.net','+62 (0105) 274 3632'),
('yuliantibakiadi@example.net','(0658) 105-8379'),
('yuliantibakiadi@example.net','+62 (081) 399-4365'),
('ywasita@example.net','088 291 1365'),
('zadriansyah@example.net','+62 (0330) 819 9560'),
('zadriansyah@example.net','+62 (55) 519-8547'),
('zadriansyah@example.net','+62 (71) 389-0994'),
('zsaefullah@example.net','+62 (077) 143 2576'),
('zsaefullah@example.net','+62-015-851-9070'),
('zsaefullah@example.net','+62-183-553-5666');
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
(7,'(0818) 736-2234'),
(7,'(083) 653 4128'),
(7,'+62 (473) 114-0425'),
(7,'0837038472'),
(103,'084 683 7168'),
(111,'+62 (74) 408 6137'),
(111,'085 796 9304'),
(177,'(021) 762-3201'),
(177,'+62 (014) 375-7747'),
(177,'+62-0817-880-7409'),
(226,'+62 (30) 959 3862'),
(226,'+62 (449) 494-5777'),
(281,'+62 (953) 482 3336'),
(281,'+62-001-924-9867'),
(281,'082 741 4755'),
(324,'(099) 202 6093'),
(324,'+62 (054) 247 9093'),
(326,'(080) 467-0507'),
(326,'0832492259'),
(451,'(0526) 890 0152'),
(451,'+62 (34) 962-6268'),
(451,'+62-0257-503-1139'),
(458,'+62 (505) 592 3242'),
(471,'(0328) 854-9524'),
(471,'+62 (0490) 817-2042'),
(471,'+62 (25) 568-8075'),
(471,'+62-10-229-4009'),
(632,'+62 (0404) 133 8827'),
(632,'+62 (0671) 249-3251'),
(632,'+62 (12) 158 1558'),
(632,'+62-50-564-9750'),
(632,'+62-830-823-0238'),
(632,'0850178662'),
(643,'(024) 112-3249'),
(643,'+62 (090) 297-2729'),
(643,'+62 (33) 043 6304'),
(654,'+62 (01) 058-6416'),
(654,'+62 (0278) 209-1688'),
(672,'(017) 879 2249'),
(710,'(0993) 852-5786'),
(710,'+62-19-918-2137'),
(710,'+62-582-265-3845'),
(710,'+62-91-257-6877'),
(735,'(038) 349-5493'),
(735,'+62 (20) 212 7587'),
(832,'+62 (60) 431-0585'),
(894,'+62 (049) 070 9026'),
(894,'+62 (686) 602-8831'),
(991,'+62 (010) 982-6117'),
(991,'+62 (168) 465 1953');
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
('aditya94@example.org','Bedah',103,'5165926381475','Perawat'),
('agnes55@example.com','Umum',672,'0238204112773','Perawat'),
('ajimin91@example.com','Bedah',177,'9332228388778','Perawat'),
('anggabayakurniawan@example.org','Umum',471,'2895503051523','Perawat'),
('aryanigina@example.com','Umum',226,'8500424525421','Perawat'),
('aryanijumari@example.org','Anak',177,'6280212998546','Perawat'),
('asaputra@example.org','Kulit',710,'8819938991463','Dokter'),
('aswani55@example.net','Bedah',281,'5044837816781','Perawat'),
('atmamaulana@example.org','Gigi',632,'6430107197138','Dokter'),
('bahuwarnasirait@example.net','Umum',654,'6371672412304','Dokter'),
('balidin94@example.com','Kulit',226,'4792124062052','Perawat'),
('bgunarto@example.com','Bedah',177,'0863181619511','Dokter'),
('caket94@example.net','Kardiologi',654,'3172004289884','Dokter'),
('cakrawalalatupono@example.org','Gigi',103,'6573761975435','Perawat'),
('cawisadi07@example.com','Bedah',281,'9238603339680','Perawat'),
('dagelmegantara@example.net','Umum',451,'9490722564613','Perawat'),
('dasa69@example.com','Umum',672,'1786289344804','Perawat'),
('diansaputra@example.com','Bedah',281,'5896977815205','Perawat'),
('dnarpati@example.net','Bedah',177,'2802110459741','Dokter'),
('dongorangandi@example.org','Umum',832,'8558181764645','Dokter'),
('dutama@example.org','Kulit',226,'6142793047375','Dokter'),
('edwarduyainah@example.net','Gigi',326,'7127089373184','Perawat'),
('elinainggolan@example.com','Gigi',326,'4432382699057','Perawat'),
('ellisfujiati@example.net','Anak',177,'9503694125949','Dokter'),
('emilsihotang@example.org','Neurologi',710,'0309055559410','Dokter'),
('endrarajata@example.net','Umum',735,'6939492092993','Dokter'),
('fandriani@example.com','Bedah',111,'7899479985856','Dokter'),
('faridahamima@example.com','Umum',7,'6074646687943','Dokter'),
('fhutapea@example.org','Bedah',281,'6572371366077','Dokter'),
('gaiman20@example.net','Kardiologi',654,'4557830580760','Dokter'),
('gamblangramadan@example.org','Kardiologi',832,'9202149140376','Dokter'),
('gamblangyulianti@example.net','Kardiologi',281,'8525498505209','Perawat'),
('ganggraini@example.net','Kardiologi',672,'1882586221166','Dokter'),
('gara28@example.net','Bedah',894,'1206017474448','Dokter'),
('gtamba@example.com','Kardiologi',654,'1709095377804','Dokter'),
('hartanamanullang@example.net','Bedah',991,'7792039090017','Dokter'),
('hasimpranowo@example.org','Umum',471,'9576147302365','Dokter'),
('jabal27@example.com','Neurologi',710,'1811271850527','Perawat'),
('januarkalim@example.org','Bedah',103,'7237543104053','Perawat'),
('jfujiati@example.org','Gigi',326,'7969689345761','Dokter'),
('jhutasoit@example.com','Bedah',7,'2547031058177','Dokter'),
('julialatupono@example.net','Neurologi',710,'5139379228113','Perawat'),
('jwibisono@example.com','Umum',451,'1509235977235','Perawat'),
('karma52@example.net','Bedah',7,'0101448005456','Perawat'),
('kfirgantoro@example.net','Umum',643,'8572736190925','Dokter'),
('kurniawanatmaja@example.net','Gigi',471,'0536451469788','Dokter'),
('lailasarihartaka@example.org','Bedah',894,'7544986595417','Dokter'),
('laksmiwatilegawa@example.net','Gigi',281,'2578155258396','Perawat'),
('lazuardigandi@example.org','Gigi',735,'6778791889848','Dokter'),
('mandasaritedi@example.net','Kardiologi',672,'8026862168865','Dokter'),
('marbunwulan@example.org','Umum',7,'7364874822858','Dokter'),
('margana69@example.net','Umum',226,'8598586911664','Dokter'),
('martana55@example.net','Bedah',103,'1539561880411','Dokter'),
('martaniwijaya@example.org','Umum',832,'2276637769612','Dokter'),
('martaniwulandari@example.net','Kardiologi',7,'0712322140899','Dokter'),
('maryantoprabowo@example.com','Bedah',324,'5602434963859','Perawat'),
('maryatijayeng@example.org','Bedah',991,'1902793932676','Dokter'),
('mayasariganjaran@example.net','Bedah',991,'6988119981813','Dokter'),
('mitradongoran@example.net','Umum',735,'3742083741971','Dokter'),
('mulyonopuspasari@example.org','Gigi',326,'8850263827256','Dokter'),
('natsirjabal@example.org','Neurologi',632,'7154227437262','Dokter'),
('pertiwivivi@example.org','Neurologi',710,'9395619315647','Dokter'),
('pmustofa@example.net','Kardiologi',654,'1922715357486','Dokter'),
('prabawanamaga@example.com','Kulit',111,'1681203901906','Perawat'),
('prabowokurnia@example.net','Kardiologi',451,'3959993494266','Perawat'),
('prasetyafirmansyah@example.net','Bedah',103,'9471161891355','Dokter'),
('prastutijamil@example.net','Umum',710,'6893445950818','Perawat'),
('pratamaifa@example.org','Kardiologi',451,'0674673282522','Perawat'),
('prayogamulyono@example.org','Gigi',281,'5508312486239','Dokter'),
('purwadipurwanti@example.org','Umum',672,'9697453479333','Perawat'),
('putrafitriani@example.org','Kardiologi',654,'8747090525687','Dokter'),
('putri89@example.com','Neurologi',643,'5767100386704','Perawat'),
('qhakim@example.com','Gigi',471,'1409738995142','Perawat'),
('qsitompul@example.com','Kulit',111,'9383227211260','Perawat'),
('qwaluyo@example.com','Kardiologi',451,'0201417452172','Dokter'),
('raditnainggolan@example.net','Bedah',894,'3123792940341','Perawat'),
('ratihuyainah@example.com','Kardiologi',111,'5569456948847','Dokter'),
('rina51@example.net','Bedah',103,'4244026476029','Perawat'),
('safinawahyuni@example.com','Anak',324,'7155054914346','Perawat'),
('saktihutasoit@example.com','Kardiologi',281,'8254617894633','Perawat'),
('salimah44@example.net','Bedah',7,'5718013510359','Dokter'),
('septipermadi@example.org','Bedah',111,'8178254762073','Dokter'),
('sfarida@example.net','Gigi',281,'0140775205955','Dokter'),
('siska63@example.org','Bedah',324,'6362320854775','Dokter'),
('sprasetyo@example.org','Kardiologi',451,'9116741608021','Dokter'),
('tania97@example.org','Anak',991,'4667345120860','Dokter'),
('taswir69@example.org','Kardiologi',832,'3392525443477','Dokter'),
('usamahendra@example.org','Neurologi',458,'7141937293400','Perawat'),
('uyainahgamani@example.net','Umum',735,'7909377310886','Perawat'),
('vanya26@example.net','Umum',326,'5459411183065','Perawat'),
('vickytamba@example.com','Gigi',894,'9009644086266','Perawat'),
('vmangunsong@example.org','Gigi',632,'7577965120331','Perawat'),
('vsantoso@example.com','Bedah',281,'1736709713963','Perawat'),
('warjisusanti@example.com','Kulit',710,'3721228944248','Perawat'),
('widiastutidaryani@example.net','Kardiologi',654,'8928426917585','Dokter'),
('widodofarhunnisa@example.org','Kulit',710,'0158347090038','Perawat'),
('wprasetya@example.org','Gigi',894,'0548573706788','Perawat'),
('yhartati@example.com','Umum',226,'3668823687173','Perawat'),
('yolandaismail@example.net','Kardiologi',643,'1507728214249','Perawat'),
('ywasita@example.net','Umum',672,'0551643002949','Dokter');
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

-- Dump completed on 2025-05-31 18:04:01
