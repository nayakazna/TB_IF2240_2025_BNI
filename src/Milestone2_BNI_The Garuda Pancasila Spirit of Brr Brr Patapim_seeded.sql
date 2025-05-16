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
-- Current Database: `Halobot`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Halobot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `Halobot`;

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
INSERT INTO `alamat_pasien` (`email`, `provinsi`, `kota`, `jalan`) VALUES ('alika79@example.net','Bali','Medan','Gang Kutai No. 2'),
('alika79@example.net','Sulawesi Tenggara','Mojokerto','Jalan Bangka Raya No. 2'),
('amegantara@example.net','DKI Jakarta','Jayapura','Gg. Otto Iskandardinata No. 78'),
('amegantara@example.net','Maluku','Metro','Jalan Jakarta No. 0'),
('anggrainiumaya@example.net','Kepulauan Bangka Belitung','Pariaman','Jalan Lembong No. 344'),
('anggrainiumaya@example.net','Riau','Kota Administrasi Jakarta Utara','Jl. Ahmad Yani No. 38'),
('anggrainiumaya@example.net','Sulawesi Selatan','Bengkulu','Jalan M.T Haryono No. 053'),
('anggrainiumaya@example.net','Sumatera Selatan','Bitung','Jl. Cihampelas No. 19'),
('apuspita@example.org','Jambi','Serang','Jl. Otto Iskandardinata No. 45'),
('apuspita@example.org','Sulawesi Tengah','Tangerang Selatan','Jl. Suryakencana No. 255'),
('apuspita@example.org','Sulawesi Utara','Manado','Gg. Merdeka No. 2'),
('apuspita@example.org','Sumatera Utara','Cilegon','Gg. Ahmad Yani No. 52'),
('balidinanggraini@example.com','Gorontalo','Sukabumi','Gg. Rungkut Industri No. 72'),
('balidinanggraini@example.com','Kalimantan Selatan','Banjarbaru','Gg. R.E Martadinata No. 3'),
('banarawahyuni@example.net','Kalimantan Timur','Samarinda','Gang Wonoayu No. 66'),
('banarawahyuni@example.net','Sulawesi Utara','Kendari','Gang Gardujati No. 5'),
('bsaputra@example.net','Bengkulu','Yogyakarta','Gang Rajawali Timur No. 5'),
('bsaputra@example.net','Kalimantan Barat','Tomohon','Jalan HOS. Cokroaminoto No. 35'),
('charyanti@example.net','Maluku','Solok','Gg. Kendalsari No. 723'),
('charyanti@example.net','Sulawesi Selatan','Cirebon','Gg. Kutai No. 44'),
('danggraini@example.org','Jawa Timur','Palu','Gg. R.E Martadinata No. 5'),
('danggraini@example.org','Lampung','Lhokseumawe','Gang Ir. H. Djuanda No. 11'),
('donomardhiyah@example.com','DI Yogyakarta','Blitar','Gang R.E Martadinata No. 2'),
('donomardhiyah@example.com','Gorontalo','Solok','Gang Otto Iskandardinata No. 064'),
('donomardhiyah@example.com','Papua Barat','Manado','Gg. Kutisari Selatan No. 280'),
('dpratama@example.com','Kalimantan Barat','Bontang','Gang Ir. H. Djuanda No. 568'),
('dpratama@example.com','Lampung','Parepare','Jalan Cikutra Timur No. 04'),
('eli22@example.org','Gorontalo','Magelang','Jl. Jayawijaya No. 24'),
('eli22@example.org','Jawa Tengah','Sibolga','Gg. Yos Sudarso No. 202'),
('eli22@example.org','Kalimantan Barat','Palangkaraya','Gg. Dipatiukur No. 21'),
('eli22@example.org','Sulawesi Barat','Medan','Gg. Rungkut Industri No. 55'),
('eli22@example.org','Sumatera Selatan','Kotamobagu','Gg. Sentot Alibasa No. 372'),
('eli22@example.org','Sumatera Utara','Kota Administrasi Jakarta Selatan','Gg. Laswi No. 14'),
('emilmaheswara@example.org','DKI Jakarta','Binjai','Gg. Raya Ujungberung No. 622'),
('emilmaheswara@example.org','Kepulauan Bangka Belitung','Sawahlunto','Gg. Tubagus Ismail No. 076'),
('emilmaheswara@example.org','Papua Barat','Tidore Kepulauan','Gg. Sentot Alibasa No. 561'),
('fitrianinasyidah@example.org','Jambi','Blitar','Jalan Otto Iskandardinata No. 876'),
('fitrianinasyidah@example.org','Sulawesi Selatan','Kota Administrasi Jakarta Utara','Jl. Kutisari Selatan No. 1'),
('fitriawinarsih@example.com','Kepulauan Bangka Belitung','Tomohon','Gang Lembong No. 879'),
('fpertiwi@example.com','Sulawesi Tenggara','Blitar','Gg. Lembong No. 307'),
('gamanpermata@example.net','Jambi','Kota Administrasi Jakarta Timur','Gg. Waringin No. 1'),
('gamanpermata@example.net','Sulawesi Tengah','Banjarmasin','Jalan Pasteur No. 0'),
('garangpuspita@example.org','Jawa Tengah','Palu','Jalan Pacuan Kuda No. 88'),
('gawatimanullang@example.org','Kalimantan Utara','Semarang','Gg. Raya Ujungberung No. 487'),
('gawatimanullang@example.org','Nusa Tenggara Barat','Padang Sidempuan','Jalan Cikutra Barat No. 2'),
('gpermadi@example.com','Kalimantan Selatan','Batu','Gg. Cihampelas No. 8'),
('hakimluluh@example.org','Banten','Kota Administrasi Jakarta Pusat','Gang Pasirkoja No. 438'),
('hakimluluh@example.org','DI Yogyakarta','Tangerang','Gg. Dr. Djunjunan No. 54'),
('hakimluluh@example.org','Nusa Tenggara Timur','Bau-Bau','Gg. R.E Martadinata No. 9'),
('hartatiaslijan@example.com','Kalimantan Barat','Denpasar','Gg. Jend. Sudirman No. 626'),
('hmangunsong@example.org','Bengkulu','Pekalongan','Gang Rumah Sakit No. 0'),
('hmangunsong@example.org','Kepulauan Bangka Belitung','Makassar','Gang Rungkut Industri No. 360'),
('inuraini@example.net','Kalimantan Tengah','Tebingtinggi','Jl. Kendalsari No. 389'),
('inuraini@example.net','Maluku Utara','Purwokerto','Jalan Ronggowarsito No. 697'),
('inuraini@example.net','Nusa Tenggara Barat','Sibolga','Gang Wonoayu No. 60'),
('jais98@example.net','Banten','Pagaralam','Jl. Pacuan Kuda No. 4'),
('jais98@example.net','Kalimantan Tengah','Sibolga','Gang Ahmad Yani No. 8'),
('joko59@example.org','DI Yogyakarta','Padang Sidempuan','Gg. Rumah Sakit No. 8'),
('joko59@example.org','Nusa Tenggara Barat','Langsa','Gg. Ciwastra No. 3'),
('joko59@example.org','Sulawesi Barat','Tebingtinggi','Jalan Jend. A. Yani No. 2'),
('laksitadrajat@example.net','Kalimantan Barat','Ambon','Jalan Pelajar Pejuang No. 145'),
('laksitadrajat@example.net','Lampung','Pontianak','Gang Antapani Lama No. 2'),
('lfirmansyah@example.net','Kalimantan Barat','Medan','Gang Tebet Barat Dalam No. 4'),
('mardhiyahlatika@example.net','Jawa Timur','Sibolga','Gg. Tebet Barat Dalam No. 447'),
('mardhiyahlatika@example.net','Kalimantan Utara','Ternate','Gg. Rungkut Industri No. 521'),
('mardhiyahlatika@example.net','Papua Barat','Sukabumi','Gg. Antapani Lama No. 5'),
('martaniwacana@example.com','Kepulauan Bangka Belitung','Sibolga','Gg. Jend. Sudirman No. 1'),
('martaniwacana@example.com','Papua Barat','Pekanbaru','Gang Wonoayu No. 621'),
('mila18@example.com','Bali','Pariaman','Gang Kendalsari No. 7'),
('nababanbella@example.com','Lampung','Gorontalo','Jalan Astana Anyar No. 5'),
('nrimayuniar@example.org','Kalimantan Utara','Bogor','Jalan Erlangga No. 47'),
('nsetiawan@example.com','Gorontalo','Pagaralam','Jl. Jayawijaya No. 50'),
('nurdiyantivero@example.com','Bengkulu','Banda Aceh','Jalan Wonoayu No. 03'),
('nurdiyantivero@example.com','DI Yogyakarta','Semarang','Jalan Rumah Sakit No. 44'),
('nurdiyantivero@example.com','Kalimantan Selatan','Bitung','Jl. Siliwangi No. 209'),
('prasastasalman@example.net','Bali','Sukabumi','Jalan Kutisari Selatan No. 9'),
('prasastasalman@example.net','Sulawesi Selatan','Banda Aceh','Jalan Tubagus Ismail No. 5'),
('prasastawirda@example.com','Kalimantan Utara','Gorontalo','Jalan Gedebage Selatan No. 10'),
('prasastawirda@example.com','Sulawesi Selatan','Kota Administrasi Jakarta Timur','Jl. Waringin No. 2'),
('prayitna79@example.net','Bengkulu','Probolinggo','Jalan Peta No. 4'),
('ridwan86@example.net','Nusa Tenggara Barat','Kota Administrasi Jakarta Barat','Jl. KH Amin Jasuta No. 54'),
('santosoendah@example.com','Aceh','Bitung','Gang Astana Anyar No. 12'),
('santosoendah@example.com','Bengkulu','Tegal','Jalan Cihampelas No. 99'),
('simanjuntakparis@example.com','Jawa Barat','Kota Administrasi Jakarta Barat','Jl. Otto Iskandardinata No. 70'),
('simanjuntakparis@example.com','Sulawesi Tenggara','Palopo','Gang Cihampelas No. 71'),
('siregarintan@example.net','Jawa Timur','Bukittinggi','Gang Otto Iskandardinata No. 473'),
('siregarintan@example.net','Sulawesi Tengah','Subulussalam','Gg. Sukabumi No. 8'),
('siregarteddy@example.com','Sulawesi Tengah','Tangerang','Gang Joyoboyo No. 302'),
('tasnimwinarno@example.com','Kepulauan Bangka Belitung','Purwokerto','Gang Asia Afrika No. 7'),
('tasnimwinarno@example.com','Sumatera Utara','Kupang','Jl. Setiabudhi No. 392'),
('tedisaefullah@example.com','DI Yogyakarta','Sibolga','Gang Suniaraja No. 047'),
('tedisaefullah@example.com','Lampung','Balikpapan','Jl. Kiaracondong No. 64'),
('tedisaefullah@example.com','Lampung','Gorontalo','Gang Kebonjati No. 754'),
('uchita67@example.org','Banten','Tarakan','Gg. PHH. Mustofa No. 8'),
('vhardiansyah@example.com','Gorontalo','Tasikmalaya','Jl. Merdeka No. 3'),
('vhardiansyah@example.com','Kepulauan Bangka Belitung','Parepare','Gg. Waringin No. 5'),
('vprastuti@example.net','Maluku Utara','Jayapura','Jl. Ciumbuleuit No. 454'),
('waskitabelinda@example.org','Kepulauan Riau','Banjarbaru','Jl. W.R. Supratman No. 46'),
('xnarpati@example.net','Aceh','Banda Aceh','Jl. Pasirkoja No. 8'),
('xnarpati@example.net','Lampung','Jayapura','Gang Ronggowarsito No. 228');
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
INSERT INTO `departemen` (`nama_departemen`, `id_rumah_sakit`, `gedung`) VALUES ('Anak',72,'Gedung Timur'),
('Anak',100,'Gedung C'),
('Anak',121,'Gedung C'),
('Anak',178,'Gedung Timur'),
('Anak',285,'Gedung A'),
('Anak',342,'Gedung Timur'),
('Anak',473,'Gedung B'),
('Anak',508,'Gedung A'),
('Anak',571,'Gedung Timur'),
('Anak',648,'Gedung A'),
('Anak',669,'Gedung Timur'),
('Anak',891,'Gedung A'),
('Bedah',72,'Gedung A'),
('Bedah',121,'Gedung A'),
('Bedah',237,'Gedung Timur'),
('Bedah',285,'Gedung Timur'),
('Bedah',473,'Gedung B'),
('Bedah',648,'Gedung Utama'),
('Bedah',669,'Gedung B'),
('Bedah',930,'Gedung Timur'),
('Gigi',72,'Gedung Utama'),
('Gigi',100,'Gedung B'),
('Gigi',178,'Gedung Timur'),
('Gigi',325,'Gedung A'),
('Gigi',342,'Gedung Utama'),
('Gigi',473,'Gedung Timur'),
('Gigi',508,'Gedung B'),
('Gigi',571,'Gedung C'),
('Gigi',648,'Gedung Utama'),
('Gigi',669,'Gedung B'),
('Gigi',795,'Gedung B'),
('Gigi',876,'Gedung C'),
('Gigi',891,'Gedung Timur'),
('Kardiologi',100,'Gedung Utama'),
('Kardiologi',121,'Gedung A'),
('Kardiologi',178,'Gedung C'),
('Kardiologi',237,'Gedung A'),
('Kardiologi',473,'Gedung C'),
('Kardiologi',508,'Gedung B'),
('Kardiologi',594,'Gedung A'),
('Kardiologi',795,'Gedung Utama'),
('Kardiologi',909,'Gedung Utama'),
('Kardiologi',930,'Gedung A'),
('Kulit',72,'Gedung Timur'),
('Kulit',121,'Gedung Timur'),
('Kulit',178,'Gedung B'),
('Kulit',237,'Gedung Utama'),
('Kulit',285,'Gedung Utama'),
('Kulit',342,'Gedung A'),
('Kulit',508,'Gedung A'),
('Kulit',571,'Gedung A'),
('Kulit',594,'Gedung C'),
('Kulit',795,'Gedung C'),
('Neurologi',237,'Gedung B'),
('Neurologi',325,'Gedung C'),
('Neurologi',594,'Gedung B'),
('Neurologi',669,'Gedung C'),
('Neurologi',687,'Gedung Utama'),
('Neurologi',795,'Gedung A'),
('Neurologi',876,'Gedung A'),
('Neurologi',891,'Gedung Utama'),
('Neurologi',909,'Gedung B'),
('Umum',72,'Gedung Timur'),
('Umum',121,'Gedung Utama'),
('Umum',178,'Gedung C'),
('Umum',571,'Gedung C'),
('Umum',648,'Gedung Utama'),
('Umum',669,'Gedung Timur'),
('Umum',687,'Gedung C'),
('Umum',795,'Gedung A');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `janji_temu`
--

LOCK TABLES `janji_temu` WRITE;
/*!40000 ALTER TABLE `janji_temu` DISABLE KEYS */;
INSERT INTO `janji_temu` (`id_janji_temu`, `id_rumah_sakit`, `waktu_pelaksanaan`, `alasan`) VALUES (1,594,'2025-05-24 16:43:20','Deserunt quam facere suscipit numquam odio dolorum magnam eaque repellat consectetur odio pariatur.'),
(2,72,'2025-05-12 08:27:05','Quasi non similique asperiores vero dignissimos nostrum beatae temporibus asperiores magni necessitatibus.'),
(3,571,'2025-05-05 07:14:27','Fugit dolores delectus quibusdam aspernatur minus minus quam.'),
(4,342,'2025-05-26 16:51:21','Aperiam provident odit fugit velit saepe culpa doloremque consequatur tempora blanditiis eum blanditiis.'),
(5,909,'2025-04-24 16:36:15','Cum veniam praesentium alias veritatis quam minus vitae quisquam.'),
(6,100,'2025-05-31 17:53:33','Atque similique vel harum distinctio dolor iste.'),
(7,594,'2025-06-09 06:33:36','Saepe unde tempore voluptate explicabo nulla repellendus nihil occaecati odio a aliquid.'),
(8,121,'2025-06-02 13:47:00','Molestiae ullam excepturi earum illo numquam excepturi dolorum accusamus a quia labore.'),
(9,795,'2025-05-30 22:07:30','Ratione placeat quisquam modi maxime ab sit.'),
(10,648,'2025-06-02 19:43:01','Quas enim laboriosam nam delectus veniam quia quis at.'),
(11,178,'2025-05-24 04:27:00','Quisquam occaecati consequuntur aliquam dolorum corrupti nam quas id vero quis.'),
(12,72,'2025-05-11 21:29:05','Dolorem repellat laborum dicta possimus voluptatum blanditiis eius.'),
(13,669,'2025-06-03 02:13:32','Enim rerum cumque nostrum vel magnam rem commodi totam dolores minima id facere.'),
(14,72,'2025-05-20 18:09:45','Aspernatur reiciendis minus sequi accusantium ut nulla optio deleniti quo.'),
(15,342,'2025-05-06 18:00:58','Officia quisquam incidunt autem unde expedita vitae ut porro.'),
(16,121,'2025-05-16 14:48:05','Qui beatae voluptate autem culpa qui necessitatibus commodi praesentium.'),
(17,342,'2025-05-11 19:51:56','Soluta quos fugiat sapiente consectetur ipsa cupiditate quod laboriosam.'),
(18,571,'2025-05-09 07:41:04','Doloremque fugiat odio laborum dolore tempora.'),
(19,285,'2025-06-13 10:02:12','Repudiandae cumque libero ad tenetur voluptates illo.'),
(20,795,'2025-06-03 21:51:18','Consectetur officia eos architecto quae quos tenetur magni repellat inventore.'),
(21,508,'2025-04-20 16:38:24','Veniam maxime incidunt corporis consequuntur aspernatur quo velit cupiditate odio.'),
(22,72,'2025-05-02 10:33:22','Vero libero odit in blanditiis dolor vitae tempora necessitatibus nihil deleniti id.'),
(23,285,'2025-05-29 03:54:18','Fugiat voluptas velit aperiam laboriosam fuga laudantium.'),
(24,473,'2025-05-11 16:34:51','Beatae aperiam expedita quis esse aliquam aperiam corporis eaque deleniti aspernatur distinctio eaque.'),
(25,930,'2025-06-08 16:58:05','Expedita inventore adipisci animi consequuntur neque distinctio est excepturi quisquam voluptate.'),
(26,72,'2025-05-23 03:35:24','Id eius commodi delectus alias porro quia ad magnam vero.'),
(27,72,'2025-05-11 18:58:47','Nostrum nemo eius esse non officia assumenda nam nulla cupiditate reiciendis.'),
(28,473,'2025-04-23 05:01:02','Temporibus velit illum nobis nemo rem.'),
(29,669,'2025-05-10 21:52:51','Sapiente ad tempore harum officia labore eaque omnis error libero ea et.'),
(30,100,'2025-05-09 02:07:46','At eligendi mollitia maxime voluptate quidem iusto dolor cumque commodi distinctio.'),
(31,891,'2025-05-15 17:22:15','Sint consequuntur aperiam animi ullam vitae minima quibusdam magni alias consequatur accusantium illo.'),
(32,100,'2025-06-15 13:22:21','Nisi pariatur temporibus minus quia voluptates assumenda.'),
(33,178,'2025-06-05 21:20:29','Quis veritatis doloribus sed a mollitia incidunt.'),
(34,891,'2025-06-11 08:28:23','Quidem exercitationem quam aspernatur unde dicta delectus possimus vero voluptatem reprehenderit.'),
(35,891,'2025-06-09 12:27:54','Laboriosam nisi harum est facilis dolorum eligendi beatae officiis distinctio quo aperiam.'),
(36,930,'2025-05-20 01:59:07','Quo dolores ea a animi excepturi dolorum optio incidunt dolore ratione repellat sint.'),
(37,594,'2025-06-02 07:01:34','Laboriosam qui dolor enim aspernatur ad officiis quos qui minima.'),
(38,687,'2025-05-16 09:32:14','Distinctio aspernatur asperiores impedit maxime magnam molestias deleniti veritatis.'),
(39,100,'2025-04-26 15:25:02','Eaque error unde modi officia quis dolorem minima.'),
(40,508,'2025-05-02 06:03:24','Dolorum sunt alias molestias possimus nihil accusamus facere nisi itaque placeat recusandae.'),
(41,909,'2025-05-14 19:38:02','Quas veritatis occaecati sint aut aut velit commodi reiciendis.'),
(42,909,'2025-06-03 12:10:00','Voluptatum ratione magni velit aliquid ullam laboriosam accusantium.'),
(43,342,'2025-05-18 11:25:42','At consequatur natus alias quo placeat modi molestiae provident velit maxime laudantium voluptas.'),
(44,473,'2025-05-28 18:14:39','Voluptatum ratione beatae nisi corrupti neque cupiditate occaecati.'),
(45,571,'2025-05-12 13:48:01','Nam accusantium repudiandae nobis odio repudiandae voluptate eius quam saepe fugiat.'),
(46,508,'2025-05-30 11:02:18','Cum voluptatum fugit nisi quibusdam harum doloribus alias corrupti architecto.'),
(47,669,'2025-05-14 17:29:33','Adipisci quo alias odit molestias deleniti placeat deleniti nisi amet.'),
(48,100,'2025-05-06 17:04:40','Quaerat id est itaque non cupiditate labore itaque fugiat dolor perspiciatis.'),
(49,687,'2025-05-31 12:29:06','Eum voluptatibus tempore velit fugit magnam consequuntur.'),
(50,669,'2025-05-21 13:47:37','Ab culpa dolore pariatur occaecati odio consequuntur enim iusto nesciunt perferendis ab.');
/*!40000 ALTER TABLE `janji_temu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_medis`
--

DROP TABLE IF EXISTS `layanan_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
INSERT INTO `layanan_medis` (`id_rumah_sakit`, `id_layanan`, `nama_layanan`) VALUES (72,7,'vaksinasi'),
(72,8,'fisioterapi'),
(72,43,'fisioterapi'),
(100,1,'vaksinasi'),
(100,2,'fisioterapi'),
(121,17,'vaksinasi'),
(121,18,'fisioterapi'),
(121,47,'fisioterapi'),
(178,27,'fisioterapi'),
(178,28,'vaksinasi'),
(178,46,'fisioterapi'),
(237,31,'vaksinasi'),
(237,32,'fisioterapi'),
(285,37,'vaksinasi'),
(285,38,'fisioterapi'),
(325,9,'fisioterapi'),
(325,10,'vaksinasi'),
(342,29,'fisioterapi'),
(342,30,'vaksinasi'),
(342,44,'fisioterapi'),
(473,35,'vaksinasi'),
(473,36,'fisioterapi'),
(508,21,'fisioterapi'),
(508,22,'vaksinasi'),
(571,33,'vaksinasi'),
(571,34,'fisioterapi'),
(594,11,'fisioterapi'),
(594,12,'vaksinasi'),
(594,50,'vaksinasi'),
(648,15,'vaksinasi'),
(648,16,'fisioterapi'),
(648,41,'vaksinasi'),
(648,48,'vaksinasi'),
(669,3,'fisioterapi'),
(669,4,'vaksinasi'),
(687,13,'vaksinasi'),
(687,14,'fisioterapi'),
(687,45,'vaksinasi'),
(687,49,'fisioterapi'),
(795,5,'fisioterapi'),
(795,6,'vaksinasi'),
(876,23,'fisioterapi'),
(876,24,'vaksinasi'),
(891,39,'fisioterapi'),
(891,40,'vaksinasi'),
(909,19,'vaksinasi'),
(909,20,'fisioterapi'),
(909,42,'vaksinasi'),
(930,25,'fisioterapi'),
(930,26,'vaksinasi');
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
INSERT INTO `log_layanan` (`firmware_baymin`, `waktu_pengguna`, `jenis_tindakan`) VALUES (12726,'2025-02-03 06:10:56','incubate killer content'),
(12726,'2025-02-05 15:47:26','empower efficient markets'),
(12726,'2025-03-12 22:32:09','deliver collaborative relationships'),
(12726,'2025-04-26 14:38:11','innovate efficient action-items'),
(15414,'2025-02-11 21:36:45','transition intuitive bandwidth'),
(15414,'2025-03-20 04:20:37','incubate holistic paradigms'),
(15414,'2025-04-24 15:12:41','grow interactive architectures'),
(17542,'2025-02-09 15:50:19','empower integrated action-items'),
(17542,'2025-02-28 01:30:50','whiteboard ubiquitous mindshare'),
(17820,'2025-03-28 16:25:50','incentivize open-source info-mediaries'),
(17820,'2025-04-20 13:17:00','exploit efficient networks'),
(17820,'2025-05-06 02:02:22','engage compelling solutions'),
(25079,'2025-04-19 09:11:02','architect visionary users'),
(25079,'2025-05-09 02:37:36','generate dot-com ROI'),
(26393,'2025-01-25 13:12:10','generate viral technologies'),
(26393,'2025-01-31 04:59:17','re-contextualize wireless platforms'),
(26393,'2025-03-04 14:43:06','evolve proactive info-mediaries'),
(26921,'2025-02-21 13:59:22','engage efficient applications'),
(26921,'2025-03-28 18:26:18','synthesize vertical networks'),
(27127,'2025-02-27 16:15:18','incubate next-generation platforms'),
(27880,'2025-05-01 18:21:44','maximize wireless paradigms'),
(31618,'2025-01-31 20:55:55','redefine integrated action-items'),
(33345,'2025-01-04 21:21:48','exploit robust e-markets'),
(33345,'2025-05-05 10:22:16','utilize compelling niches'),
(35625,'2025-04-06 05:01:33','re-intermediate dot-com metrics'),
(35625,'2025-04-23 20:39:00','enable viral infrastructures'),
(36825,'2025-01-17 15:48:07','repurpose dot-com initiatives'),
(36825,'2025-02-04 15:15:41','engineer sticky platforms'),
(36825,'2025-05-11 14:12:57','synthesize synergistic e-business'),
(38410,'2025-01-03 15:11:56','scale efficient deliverables'),
(39976,'2025-04-04 04:09:20','exploit world-class functionalities'),
(39976,'2025-04-11 23:53:24','strategize plug-and-play architectures'),
(39976,'2025-04-23 22:32:08','scale wireless methodologies'),
(40542,'2025-02-01 05:26:37','target global applications'),
(40542,'2025-03-21 11:30:36','synergize user-centric platforms'),
(40542,'2025-04-20 13:05:58','transition revolutionary e-tailers'),
(41757,'2025-01-06 15:47:26','orchestrate viral models'),
(41757,'2025-04-11 23:47:52','e-enable e-business e-services'),
(44304,'2025-04-15 17:16:48','facilitate viral mindshare'),
(44601,'2025-05-11 00:12:53','generate killer portals'),
(44983,'2025-01-20 11:53:44','syndicate cross-platform channels'),
(44983,'2025-03-11 02:30:01','orchestrate leading-edge e-commerce'),
(44983,'2025-03-29 02:27:14','re-contextualize interactive channels'),
(47905,'2025-03-05 08:52:12','envisioneer virtual eyeballs'),
(47905,'2025-05-14 20:44:54','cultivate compelling e-business'),
(47925,'2025-02-21 05:53:07','mesh global networks'),
(47925,'2025-02-22 21:35:22','harness end-to-end synergies'),
(47925,'2025-03-07 06:58:18','mesh value-added web-readiness'),
(47925,'2025-03-17 01:15:42','implement next-generation infrastructures'),
(47967,'2025-01-04 05:13:46','enhance interactive technologies'),
(47967,'2025-01-11 11:12:56','e-enable best-of-breed portals'),
(47967,'2025-02-11 19:32:41','seize B2C action-items'),
(47967,'2025-03-15 10:22:32','maximize dynamic communities'),
(47967,'2025-03-28 11:39:34','orchestrate e-business mindshare'),
(47967,'2025-04-13 14:55:05','streamline vertical e-services'),
(49445,'2025-01-27 19:41:23','generate efficient communities'),
(49445,'2025-03-11 01:49:40','grow bleeding-edge relationships'),
(52462,'2025-04-13 02:56:45','facilitate B2C partnerships'),
(52462,'2025-05-06 05:35:07','empower proactive bandwidth'),
(52953,'2025-02-13 14:08:14','embrace mission-critical metrics'),
(52953,'2025-02-14 01:03:57','re-contextualize best-of-breed systems'),
(52953,'2025-04-10 15:18:56','innovate leading-edge action-items'),
(57965,'2025-03-16 11:59:12','deploy web-enabled metrics'),
(59487,'2025-04-30 21:46:48','exploit revolutionary relationships'),
(59520,'2025-01-09 13:09:12','monetize dot-com bandwidth'),
(59539,'2025-01-10 08:36:47','harness 24/7 metrics'),
(59539,'2025-02-04 14:39:20','envisioneer impactful ROI'),
(59539,'2025-02-27 07:20:21','revolutionize dot-com systems'),
(59539,'2025-04-02 14:20:15','generate viral mindshare'),
(59539,'2025-04-18 02:12:02','extend killer synergies'),
(62748,'2025-03-22 14:19:06','target leading-edge synergies'),
(62971,'2025-02-06 21:58:27','transition end-to-end relationships'),
(64593,'2025-03-10 14:55:49','evolve next-generation relationships'),
(68180,'2025-03-26 05:08:37','synthesize cross-platform partnerships'),
(71749,'2025-01-14 20:32:08','streamline robust action-items'),
(71749,'2025-04-14 17:16:18','orchestrate real-time info-mediaries'),
(71749,'2025-04-22 10:39:18','mesh out-of-the-box synergies'),
(71749,'2025-04-24 13:41:22','harness distributed convergence'),
(71749,'2025-05-01 01:32:14','brand vertical e-services'),
(73165,'2025-01-16 04:12:21','unleash mission-critical vortals'),
(73165,'2025-01-19 13:40:56','incubate cutting-edge convergence'),
(73165,'2025-02-11 00:09:55','revolutionize ubiquitous models'),
(79620,'2025-01-14 09:44:52','syndicate 24/7 methodologies'),
(82498,'2025-03-14 20:32:01','disintermediate magnetic e-markets'),
(82498,'2025-03-18 22:41:42','incubate plug-and-play e-business'),
(82498,'2025-03-27 05:29:56','deploy B2C e-business'),
(82498,'2025-04-10 01:47:51','envisioneer 24/7 niches'),
(82498,'2025-04-21 20:48:42','strategize back-end methodologies'),
(82498,'2025-05-06 01:35:40','enable revolutionary eyeballs'),
(86376,'2025-02-18 11:27:13','evolve global infrastructures'),
(86376,'2025-02-25 03:15:59','evolve synergistic infrastructures'),
(86376,'2025-03-05 04:24:45','drive synergistic e-markets'),
(86376,'2025-05-12 01:01:29','aggregate visionary e-services'),
(86376,'2025-05-16 03:24:23','morph web-enabled methodologies'),
(90551,'2025-03-28 09:54:05','strategize viral content'),
(93497,'2025-02-16 09:26:23','synthesize front-end models'),
(95975,'2025-01-11 03:04:42','aggregate interactive supply-chains'),
(95975,'2025-01-18 03:51:56','maximize vertical vortals'),
(95975,'2025-02-14 20:37:25','strategize e-business experiences'),
(95975,'2025-02-16 21:13:03','brand ubiquitous networks');
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
INSERT INTO `melakukan_janji` (`email_pasien`, `id_janji_temu`, `email_tenaga_medis`, `id_rumah_sakit`) VALUES ('amegantara@example.net',29,'widya82@example.net',669),
('amegantara@example.net',44,'bagyautami@example.net',473),
('anggrainiumaya@example.net',10,'pprakasa@example.net',648),
('anggrainiumaya@example.net',24,'emandala@example.org',473),
('anggrainiumaya@example.net',27,'kamal14@example.com',72),
('apuspita@example.org',22,'karna36@example.org',72),
('apuspita@example.org',24,'rangga83@example.com',473),
('apuspita@example.org',47,'wacanakarya@example.com',669),
('balidinanggraini@example.com',31,'hariyahcahyo@example.net',891),
('balidinanggraini@example.com',33,'usamahtugiman@example.net',178),
('banarawahyuni@example.net',27,'karna36@example.org',72),
('bsaputra@example.net',43,'darijanwijaya@example.net',342),
('charyanti@example.net',4,'mayasariganep@example.com',342),
('danggraini@example.org',27,'hassanahbahuraksa@example.com',72),
('donomardhiyah@example.com',29,'novitasariatma@example.com',669),
('donomardhiyah@example.com',35,'rajasarahmi@example.net',891),
('eli22@example.org',49,'oktowasita@example.org',687),
('emilmaheswara@example.org',12,'lsetiawan@example.net',72),
('fitrianinasyidah@example.org',47,'mahendramahfud@example.com',669),
('fitriawinarsih@example.com',10,'pudjiastutibaktiadi@example.org',648),
('gamanpermata@example.net',20,'haryantidian@example.org',795),
('garangpuspita@example.org',14,'rajasarahmi@example.net',72),
('garangpuspita@example.org',44,'nasyiahgamblang@example.net',473),
('gawatimanullang@example.org',3,'widya82@example.net',571),
('gawatimanullang@example.org',23,'caturwulandari@example.net',285),
('gpermadi@example.com',15,'lhidayat@example.org',342),
('gpermadi@example.com',46,'lwaluyo@example.org',508),
('hmangunsong@example.org',22,'cengkir55@example.com',72),
('jais98@example.net',29,'caturwulandari@example.net',669),
('joko59@example.org',14,'husamah@example.com',72),
('joko59@example.org',30,'darijanwijaya@example.net',100),
('nrimayuniar@example.org',19,'owahyuni@example.net',285),
('nrimayuniar@example.org',45,'agustinazalindra@example.org',571),
('prasastasalman@example.net',42,'kuswandariharja@example.net',909),
('prasastasalman@example.net',48,'swaskita@example.org',100),
('prasastawirda@example.com',20,'saputragatra@example.org',795),
('prasastawirda@example.com',22,'julia72@example.org',72),
('prasastawirda@example.com',42,'agustinazalindra@example.org',909),
('prayitna79@example.net',47,'agustinazalindra@example.org',669),
('simanjuntakparis@example.com',16,'maryadinajib@example.com',121),
('siregarteddy@example.com',10,'mayasariganep@example.com',648),
('siregarteddy@example.com',22,'dprakasa@example.org',72),
('tasnimwinarno@example.com',30,'haryantidian@example.org',100),
('vhardiansyah@example.com',25,'hassanahbahuraksa@example.com',930),
('vhardiansyah@example.com',25,'narjijanuar@example.com',930),
('vhardiansyah@example.com',38,'karimahusada@example.com',687),
('vprastuti@example.net',10,'pprakasa@example.net',648),
('waskitabelinda@example.org',14,'novitasariatma@example.com',72),
('waskitabelinda@example.org',30,'asirwandaprastuti@example.org',100),
('xnarpati@example.net',26,'wbudiyanto@example.net',72);
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
  PRIMARY KEY (`id_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat`
--

LOCK TABLES `obat` WRITE;
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
INSERT INTO `obat` (`id_obat`, `label`) VALUES (186,'antibiotik'),
(850,'obat herbal'),
(2649,'analgesik'),
(2877,'obat herbal'),
(3283,'antibiotik'),
(3897,'analgesik'),
(4286,'obat herbal'),
(4319,'antibiotik'),
(4350,'analgesik'),
(4758,'obat herbal'),
(5416,'antibiotik'),
(5631,'antibiotik'),
(5880,'obat herbal'),
(6736,'antibiotik'),
(7465,'analgesik'),
(8265,'obat herbal'),
(8401,'obat herbal'),
(9229,'analgesik'),
(9442,'obat herbal'),
(10000,'analgesik');
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
INSERT INTO `pasien` (`email`, `firmware_baymin`) VALUES ('alika79@example.net',64593),
('amegantara@example.net',80878),
('anggrainiumaya@example.net',34843),
('apuspita@example.org',25079),
('balidinanggraini@example.com',68180),
('banarawahyuni@example.net',52462),
('bsaputra@example.net',12726),
('charyanti@example.net',15414),
('danggraini@example.org',47905),
('donomardhiyah@example.com',95975),
('dpratama@example.com',49445),
('eli22@example.org',44103),
('emilmaheswara@example.org',59520),
('fitrianinasyidah@example.org',17542),
('fitriawinarsih@example.com',39976),
('fpertiwi@example.com',52953),
('gamanpermata@example.net',62971),
('garangpuspita@example.org',41757),
('gawatimanullang@example.org',79620),
('gpermadi@example.com',33345),
('hakimluluh@example.org',26921),
('hartatiaslijan@example.com',22176),
('hmangunsong@example.org',27880),
('inuraini@example.net',27127),
('jais98@example.net',86861),
('joko59@example.org',90551),
('laksitadrajat@example.net',44304),
('lfirmansyah@example.net',17820),
('mardhiyahlatika@example.net',40542),
('martaniwacana@example.com',26203),
('mila18@example.com',47967),
('nababanbella@example.com',47925),
('nrimayuniar@example.org',36825),
('nsetiawan@example.com',62748),
('nurdiyantivero@example.com',44601),
('prasastasalman@example.net',57965),
('prasastawirda@example.com',73165),
('prayitna79@example.net',93497),
('ridwan86@example.net',35625),
('santosoendah@example.com',38410),
('simanjuntakparis@example.com',44983),
('siregarintan@example.net',26393),
('siregarteddy@example.com',71749),
('tasnimwinarno@example.com',95586),
('tedisaefullah@example.com',59487),
('uchita67@example.org',82498),
('vhardiansyah@example.com',31618),
('vprastuti@example.net',59539),
('waskitabelinda@example.org',92695),
('xnarpati@example.net',86376);
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
INSERT INTO `pemesanan_layanan` (`id_pemesanan`, `id_rumah_sakit`, `id_layanan`, `email`, `jenis_layanan`, `jadwal_pelaksanaan`, `status_pemesanan`, `total_biaya`) VALUES (1,342,30,'fitrianinasyidah@example.org','tes radiologi','2025-07-12','dijadwalkan',530150),
(2,891,39,'anggrainiumaya@example.net','home care','2025-06-10','dibatalkan',552794),
(3,121,18,'joko59@example.org','tes radiologi','2025-05-23','belum dibayar',401588),
(4,687,14,'prasastawirda@example.com','tes laboratorium','2025-06-17','dibatalkan',741460),
(5,930,25,'dpratama@example.com','home care','2025-06-12','selesai',393803),
(6,795,5,'danggraini@example.org','konsultasi dokter','2025-07-09','dijadwalkan',701436),
(7,669,4,'laksitadrajat@example.net','tes radiologi','2025-06-19','sedang berlangsung',902934),
(8,508,22,'hartatiaslijan@example.com','tes laboratorium','2025-06-16','selesai',205553),
(9,508,22,'nababanbella@example.com','tes laboratorium','2025-06-06','dijadwalkan',637470),
(10,72,7,'balidinanggraini@example.com','tes radiologi','2025-06-05','dibatalkan',493427),
(11,687,14,'joko59@example.org','konsultasi dokter','2025-07-01','belum dibayar',934123),
(12,325,9,'inuraini@example.net','tes laboratorium','2025-05-31','sedang berlangsung',253065),
(13,100,1,'vprastuti@example.net','tes radiologi','2025-06-18','dijadwalkan',443589),
(14,342,44,'joko59@example.org','konsultasi dokter','2025-06-27','sedang berlangsung',720020),
(15,930,25,'prasastasalman@example.net','tes radiologi','2025-06-14','dijadwalkan',454247),
(16,121,47,'vprastuti@example.net','home care','2025-05-27','sedang berlangsung',207873),
(17,594,50,'siregarintan@example.net','tes radiologi','2025-05-21','selesai',581218),
(18,121,17,'hakimluluh@example.org','home care','2025-06-10','selesai',415534),
(19,178,28,'garangpuspita@example.org','home care','2025-07-01','dijadwalkan',545162),
(20,687,13,'danggraini@example.org','tes laboratorium','2025-06-12','sedang berlangsung',434259),
(21,342,29,'joko59@example.org','tes laboratorium','2025-07-02','dibatalkan',911542),
(22,669,3,'fitrianinasyidah@example.org','tes radiologi','2025-06-25','dijadwalkan',286873),
(23,121,47,'hmangunsong@example.org','tes laboratorium','2025-06-26','dijadwalkan',250421),
(24,285,38,'emilmaheswara@example.org','tes radiologi','2025-05-20','belum dibayar',466387),
(25,121,18,'dpratama@example.com','tes laboratorium','2025-06-20','dijadwalkan',453009),
(26,687,49,'balidinanggraini@example.com','home care','2025-07-06','sedang berlangsung',983704),
(27,100,2,'mila18@example.com','home care','2025-06-13','dibatalkan',584847),
(28,72,43,'hartatiaslijan@example.com','home care','2025-06-28','dijadwalkan',77522),
(29,342,30,'gamanpermata@example.net','konsultasi dokter','2025-06-17','dibatalkan',830900),
(30,687,14,'danggraini@example.org','tes radiologi','2025-07-13','dijadwalkan',139248),
(31,891,40,'alika79@example.net','home care','2025-06-01','selesai',910519),
(32,687,14,'gamanpermata@example.net','home care','2025-06-30','dijadwalkan',193583),
(33,669,4,'hmangunsong@example.org','home care','2025-07-13','dijadwalkan',642031),
(34,342,44,'prasastasalman@example.net','tes laboratorium','2025-06-05','sedang berlangsung',208638),
(35,648,15,'xnarpati@example.net','konsultasi dokter','2025-07-09','selesai',60215),
(36,648,16,'nurdiyantivero@example.com','tes laboratorium','2025-06-25','belum dibayar',274667),
(37,930,26,'fitriawinarsih@example.com','home care','2025-06-02','selesai',587174),
(38,72,8,'prasastasalman@example.net','tes radiologi','2025-06-10','dibatalkan',870346),
(39,72,43,'alika79@example.net','tes radiologi','2025-07-12','selesai',533636),
(40,72,7,'nsetiawan@example.com','home care','2025-05-17','dijadwalkan',341294),
(41,594,50,'prasastasalman@example.net','home care','2025-07-09','sedang berlangsung',902426),
(42,891,40,'prasastawirda@example.com','home care','2025-06-13','selesai',172306),
(43,891,40,'nurdiyantivero@example.com','home care','2025-06-23','selesai',358259),
(44,687,49,'hakimluluh@example.org','home care','2025-05-26','dijadwalkan',963563),
(45,325,9,'fitrianinasyidah@example.org','konsultasi dokter','2025-06-20','sedang berlangsung',702522),
(46,687,14,'siregarteddy@example.com','tes laboratorium','2025-06-06','sedang berlangsung',633251),
(47,795,5,'inuraini@example.net','home care','2025-07-04','dijadwalkan',954332),
(48,121,17,'vprastuti@example.net','tes laboratorium','2025-05-17','belum dibayar',307970),
(49,594,11,'anggrainiumaya@example.net','konsultasi dokter','2025-06-19','sedang berlangsung',930301),
(50,325,10,'fitrianinasyidah@example.org','home care','2025-05-17','selesai',932631),
(51,571,33,'fitrianinasyidah@example.org','home care','2025-07-07','sedang berlangsung',483573),
(52,325,10,'waskitabelinda@example.org','konsultasi dokter','2025-07-08','dijadwalkan',731725),
(53,121,17,'martaniwacana@example.com','konsultasi dokter','2025-06-27','belum dibayar',408609),
(54,121,18,'dpratama@example.com','tes radiologi','2025-05-17','dijadwalkan',383170),
(55,100,1,'apuspita@example.org','tes laboratorium','2025-05-25','selesai',95502),
(56,876,24,'uchita67@example.org','tes radiologi','2025-06-02','dibatalkan',518152),
(57,648,15,'prasastasalman@example.net','tes laboratorium','2025-06-20','selesai',350764),
(58,508,21,'prasastawirda@example.com','tes radiologi','2025-07-14','sedang berlangsung',406149),
(59,342,44,'eli22@example.org','tes radiologi','2025-05-25','dijadwalkan',394907),
(60,237,31,'emilmaheswara@example.org','tes radiologi','2025-07-03','dijadwalkan',393950),
(61,876,23,'joko59@example.org','tes laboratorium','2025-06-17','dijadwalkan',879298),
(62,687,49,'fpertiwi@example.com','konsultasi dokter','2025-06-27','dibatalkan',677908),
(63,648,15,'amegantara@example.net','tes laboratorium','2025-05-16','belum dibayar',898838),
(64,669,3,'joko59@example.org','home care','2025-06-13','dibatalkan',826629),
(65,285,37,'donomardhiyah@example.com','tes radiologi','2025-05-18','belum dibayar',324647),
(66,876,23,'nababanbella@example.com','tes laboratorium','2025-06-08','selesai',509813),
(67,909,20,'uchita67@example.org','tes laboratorium','2025-05-21','selesai',313658),
(68,325,10,'siregarteddy@example.com','home care','2025-06-03','dijadwalkan',464767),
(69,669,3,'joko59@example.org','konsultasi dokter','2025-07-09','dibatalkan',245473),
(70,795,6,'jais98@example.net','tes laboratorium','2025-06-05','selesai',959589),
(71,473,36,'fitriawinarsih@example.com','home care','2025-06-15','belum dibayar',72182),
(72,342,29,'uchita67@example.org','konsultasi dokter','2025-06-15','sedang berlangsung',835474),
(73,648,41,'bsaputra@example.net','konsultasi dokter','2025-06-21','sedang berlangsung',152621),
(74,285,38,'gawatimanullang@example.org','tes radiologi','2025-07-06','dijadwalkan',176868),
(75,571,34,'banarawahyuni@example.net','tes laboratorium','2025-05-31','selesai',550468),
(76,795,6,'uchita67@example.org','tes laboratorium','2025-05-21','dijadwalkan',181469),
(77,121,47,'xnarpati@example.net','home care','2025-05-18','dibatalkan',161401),
(78,930,25,'gpermadi@example.com','konsultasi dokter','2025-07-02','belum dibayar',641284),
(79,237,31,'tedisaefullah@example.com','tes radiologi','2025-05-26','selesai',226389),
(80,594,12,'balidinanggraini@example.com','tes laboratorium','2025-05-16','dijadwalkan',678216),
(81,508,22,'balidinanggraini@example.com','tes laboratorium','2025-06-29','dijadwalkan',300335),
(82,508,22,'waskitabelinda@example.org','konsultasi dokter','2025-06-14','sedang berlangsung',334087),
(83,687,14,'nababanbella@example.com','konsultasi dokter','2025-06-08','selesai',506522),
(84,930,26,'lfirmansyah@example.net','konsultasi dokter','2025-05-26','selesai',489305),
(85,178,46,'nababanbella@example.com','home care','2025-07-07','belum dibayar',835188),
(86,342,29,'fpertiwi@example.com','tes laboratorium','2025-05-23','dibatalkan',212096),
(87,342,44,'danggraini@example.org','home care','2025-06-05','dibatalkan',659813),
(88,648,48,'danggraini@example.org','home care','2025-06-28','belum dibayar',644195),
(89,876,23,'banarawahyuni@example.net','tes laboratorium','2025-06-13','dibatalkan',660688),
(90,72,43,'tedisaefullah@example.com','tes laboratorium','2025-06-17','selesai',469940),
(91,508,22,'joko59@example.org','konsultasi dokter','2025-06-29','dibatalkan',724253),
(92,648,15,'nrimayuniar@example.org','home care','2025-06-28','sedang berlangsung',595889),
(93,594,12,'nababanbella@example.com','tes radiologi','2025-06-22','dijadwalkan',699733),
(94,891,40,'fpertiwi@example.com','home care','2025-05-30','belum dibayar',677485),
(95,178,46,'amegantara@example.net','tes laboratorium','2025-06-11','dijadwalkan',984885),
(96,285,38,'laksitadrajat@example.net','tes radiologi','2025-05-25','belum dibayar',649436),
(97,594,12,'banarawahyuni@example.net','konsultasi dokter','2025-05-28','belum dibayar',65073),
(98,594,11,'mardhiyahlatika@example.net','tes radiologi','2025-05-21','dijadwalkan',768935),
(99,178,27,'amegantara@example.net','konsultasi dokter','2025-05-26','sedang berlangsung',280613),
(100,795,6,'prasastasalman@example.net','home care','2025-07-13','dibatalkan',485428);
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
INSERT INTO `pemesanan_obat` (`email`, `waktu_pemesanan`, `alamat_pengiriman`, `status_pemesanan`, `total_biaya`) VALUES ('balidinanggraini@example.com','2025-05-06 21:20:25','Jalan Yos Sudarso No. 085, Palembang, KT 91615','belum dibayar',353974),
('balidinanggraini@example.com','2025-05-07 12:52:17','Gang Suniaraja No. 835, Salatiga, NB 07969','dibatalkan',425195),
('balidinanggraini@example.com','2025-05-10 06:36:37','Gang Kutai No. 8, Kediri, BB 20779','dijadwalkan',190146),
('banarawahyuni@example.net','2025-05-01 06:56:17','Gg. Monginsidi No. 24, Surakarta, AC 12821','belum dibayar',243561),
('banarawahyuni@example.net','2025-05-13 02:40:55','Jl. Dipatiukur No. 7, Jambi, BA 31415','belum dibayar',351675),
('danggraini@example.org','2025-05-10 20:52:26','Gang Gedebage Selatan No. 18, Kediri, MU 31588','belum dibayar',68501),
('danggraini@example.org','2025-05-11 07:24:28','Jalan H.J Maemunah No. 624, Pagaralam, Jambi 75265','selesai',461452),
('donomardhiyah@example.com','2025-05-01 08:16:07','Jalan Yos Sudarso No. 0, Pagaralam, LA 92346','selesai',126860),
('donomardhiyah@example.com','2025-05-15 03:28:50','Jl. Rajawali Barat No. 29, Batam, Kepulauan Riau 01816','dibatalkan',32197),
('dpratama@example.com','2025-05-05 22:23:12','Jalan Lembong No. 261, Kupang, Gorontalo 02991','dijadwalkan',150027),
('dpratama@example.com','2025-05-06 05:26:53','Jalan Jamika No. 997, Cimahi, KR 04385','dibatalkan',120724),
('eli22@example.org','2025-05-15 18:33:38','Jl. PHH. Mustofa No. 29, Medan, BT 80206','dibatalkan',362594),
('emilmaheswara@example.org','2025-05-03 11:36:36','Jalan Cikapayang No. 4, Bitung, Bali 80865','selesai',339065),
('fitrianinasyidah@example.org','2025-05-01 14:55:22','Jalan Antapani Lama No. 083, Kupang, SU 65217','sedang berlangsung',289278),
('fitrianinasyidah@example.org','2025-05-12 02:34:35','Jalan Moch. Ramdan No. 9, Yogyakarta, JT 78563','dijadwalkan',461271),
('fitriawinarsih@example.com','2025-05-13 14:05:07','Jl. Asia Afrika No. 2, Tangerang, KB 23467','sedang berlangsung',189337),
('fpertiwi@example.com','2025-05-07 05:46:48','Jalan Raya Ujungberung No. 255, Bima, SG 07435','dijadwalkan',373200),
('fpertiwi@example.com','2025-05-15 02:49:11','Gg. Sukabumi No. 535, Tangerang Selatan, JA 49208','belum dibayar',108989),
('garangpuspita@example.org','2025-05-07 06:01:12','Gang Pasirkoja No. 91, Kotamobagu, YO 87914','dijadwalkan',461458),
('gawatimanullang@example.org','2025-05-01 16:07:04','Gg. BKR No. 93, Gorontalo, Kalimantan Timur 29836','sedang berlangsung',150042),
('gawatimanullang@example.org','2025-05-02 01:58:47','Jalan Laswi No. 4, Cilegon, Sumatera Barat 13958','dijadwalkan',274267),
('gawatimanullang@example.org','2025-05-12 19:10:51','Gg. Moch. Ramdan No. 2, Bima, JK 80321','belum dibayar',147180),
('gpermadi@example.com','2025-05-14 12:45:36','Gg. Gedebage Selatan No. 8, Pekalongan, AC 78719','dibatalkan',470425),
('gpermadi@example.com','2025-05-15 09:17:51','Gg. Cempaka No. 624, Sibolga, Sumatera Utara 17005','selesai',345745),
('hakimluluh@example.org','2025-05-09 14:37:03','Jalan Moch. Toha No. 046, Tanjungbalai, KU 11479','belum dibayar',433323),
('hakimluluh@example.org','2025-05-15 05:04:37','Jl. Sentot Alibasa No. 59, Pagaralam, Kalimantan Selatan 43081','sedang berlangsung',111429),
('hmangunsong@example.org','2025-05-01 09:42:55','Jl. R.E Martadinata No. 9, Kota Administrasi Jakarta Timur, Sumatera Utara 09912','sedang berlangsung',342058),
('inuraini@example.net','2025-05-05 03:06:30','Jalan Ciwastra No. 7, Singkawang, SU 91425','dibatalkan',395015),
('inuraini@example.net','2025-05-07 02:01:22','Gang Monginsidi No. 64, Serang, PB 54240','sedang berlangsung',444409),
('inuraini@example.net','2025-05-09 11:49:03','Jalan Jamika No. 47, Sawahlunto, Banten 19124','sedang berlangsung',180231),
('joko59@example.org','2025-05-07 12:08:46','Jalan Raya Ujungberung No. 80, Medan, JA 03430','belum dibayar',430417),
('joko59@example.org','2025-05-13 09:46:11','Jalan Jayawijaya No. 04, Mataram, Jawa Barat 10073','belum dibayar',484246),
('joko59@example.org','2025-05-14 17:05:13','Jalan Cihampelas No. 2, Pagaralam, PB 74511','dijadwalkan',476986),
('laksitadrajat@example.net','2025-05-12 02:59:36','Gang Lembong No. 71, Mataram, KS 17729','belum dibayar',261132),
('laksitadrajat@example.net','2025-05-15 21:44:23','Jl. Otto Iskandardinata No. 66, Pematangsiantar, Maluku Utara 78533','dijadwalkan',35243),
('lfirmansyah@example.net','2025-05-06 07:20:19','Gang Wonoayu No. 715, Lhokseumawe, MA 99478','selesai',420894),
('mardhiyahlatika@example.net','2025-05-02 18:08:03','Gg. Cikutra Barat No. 4, Bima, PB 10655','dijadwalkan',428820),
('nababanbella@example.com','2025-05-14 21:18:14','Gang Setiabudhi No. 577, Bekasi, SS 08721','dijadwalkan',398894),
('nababanbella@example.com','2025-05-16 12:11:21','Gang K.H. Wahid Hasyim No. 7, Madiun, PA 20335','selesai',328345),
('nrimayuniar@example.org','2025-05-01 13:36:38','Gang Cikutra Barat No. 88, Bekasi, Sulawesi Tengah 01131','dijadwalkan',286894),
('nsetiawan@example.com','2025-05-08 05:28:52','Gang Ahmad Dahlan No. 46, Yogyakarta, Kalimantan Timur 97996','selesai',379192),
('nurdiyantivero@example.com','2025-05-09 16:27:12','Jalan Waringin No. 4, Tegal, Sumatera Selatan 35508','dijadwalkan',141335),
('prasastawirda@example.com','2025-05-11 11:24:52','Gg. Kutai No. 54, Batam, Aceh 79430','dijadwalkan',34656),
('prayitna79@example.net','2025-05-03 00:30:06','Gang Monginsidi No. 15, Kota Administrasi Jakarta Utara, Sulawesi Barat 26079','dijadwalkan',484596),
('simanjuntakparis@example.com','2025-05-07 10:24:32','Jl. Kendalsari No. 212, Ternate, Jawa Tengah 14426','sedang berlangsung',219349),
('siregarintan@example.net','2025-05-02 13:00:22','Jalan Kapten Muslihat No. 350, Tual, KR 99124','dibatalkan',29775),
('siregarteddy@example.com','2025-05-10 13:34:38','Gg. Kebonjati No. 8, Sungai Penuh, Jawa Timur 20887','selesai',203532),
('uchita67@example.org','2025-05-14 12:34:42','Jl. Cikapayang No. 7, Serang, JB 85090','dibatalkan',79061),
('waskitabelinda@example.org','2025-05-04 14:23:03','Gang Jend. Sudirman No. 77, Parepare, SU 07218','sedang berlangsung',319023),
('xnarpati@example.net','2025-05-01 08:55:04','Gg. Gedebage Selatan No. 796, Tangerang, Sumatera Utara 12821','dibatalkan',364641);
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
INSERT INTO `pemesanan_obat_obat` (`email`, `waktu_pemesanan`, `alamat_pengiriman`, `id_obat`) VALUES ('balidinanggraini@example.com','2025-05-06 21:20:25','Jalan Yos Sudarso No. 085, Palembang, KT 91615',186),
('balidinanggraini@example.com','2025-05-06 21:20:25','Jalan Yos Sudarso No. 085, Palembang, KT 91615',9229),
('balidinanggraini@example.com','2025-05-07 12:52:17','Gang Suniaraja No. 835, Salatiga, NB 07969',186),
('balidinanggraini@example.com','2025-05-07 12:52:17','Gang Suniaraja No. 835, Salatiga, NB 07969',4350),
('balidinanggraini@example.com','2025-05-10 06:36:37','Gang Kutai No. 8, Kediri, BB 20779',3897),
('balidinanggraini@example.com','2025-05-10 06:36:37','Gang Kutai No. 8, Kediri, BB 20779',4758),
('banarawahyuni@example.net','2025-05-01 06:56:17','Gg. Monginsidi No. 24, Surakarta, AC 12821',4319),
('banarawahyuni@example.net','2025-05-01 06:56:17','Gg. Monginsidi No. 24, Surakarta, AC 12821',9229),
('banarawahyuni@example.net','2025-05-13 02:40:55','Jl. Dipatiukur No. 7, Jambi, BA 31415',850),
('banarawahyuni@example.net','2025-05-13 02:40:55','Jl. Dipatiukur No. 7, Jambi, BA 31415',6736),
('danggraini@example.org','2025-05-10 20:52:26','Gang Gedebage Selatan No. 18, Kediri, MU 31588',4286),
('danggraini@example.org','2025-05-10 20:52:26','Gang Gedebage Selatan No. 18, Kediri, MU 31588',6736),
('danggraini@example.org','2025-05-11 07:24:28','Jalan H.J Maemunah No. 624, Pagaralam, Jambi 75265',186),
('donomardhiyah@example.com','2025-05-01 08:16:07','Jalan Yos Sudarso No. 0, Pagaralam, LA 92346',5880),
('donomardhiyah@example.com','2025-05-01 08:16:07','Jalan Yos Sudarso No. 0, Pagaralam, LA 92346',7465),
('donomardhiyah@example.com','2025-05-15 03:28:50','Jl. Rajawali Barat No. 29, Batam, Kepulauan Riau 01816',4286),
('donomardhiyah@example.com','2025-05-15 03:28:50','Jl. Rajawali Barat No. 29, Batam, Kepulauan Riau 01816',5416),
('dpratama@example.com','2025-05-05 22:23:12','Jalan Lembong No. 261, Kupang, Gorontalo 02991',3283),
('dpratama@example.com','2025-05-05 22:23:12','Jalan Lembong No. 261, Kupang, Gorontalo 02991',5631),
('dpratama@example.com','2025-05-06 05:26:53','Jalan Jamika No. 997, Cimahi, KR 04385',4286),
('dpratama@example.com','2025-05-06 05:26:53','Jalan Jamika No. 997, Cimahi, KR 04385',5416),
('eli22@example.org','2025-05-15 18:33:38','Jl. PHH. Mustofa No. 29, Medan, BT 80206',4758),
('eli22@example.org','2025-05-15 18:33:38','Jl. PHH. Mustofa No. 29, Medan, BT 80206',8401),
('emilmaheswara@example.org','2025-05-03 11:36:36','Jalan Cikapayang No. 4, Bitung, Bali 80865',850),
('emilmaheswara@example.org','2025-05-03 11:36:36','Jalan Cikapayang No. 4, Bitung, Bali 80865',4758),
('fitrianinasyidah@example.org','2025-05-01 14:55:22','Jalan Antapani Lama No. 083, Kupang, SU 65217',8265),
('fitrianinasyidah@example.org','2025-05-01 14:55:22','Jalan Antapani Lama No. 083, Kupang, SU 65217',9442),
('fitrianinasyidah@example.org','2025-05-12 02:34:35','Jalan Moch. Ramdan No. 9, Yogyakarta, JT 78563',2649),
('fitrianinasyidah@example.org','2025-05-12 02:34:35','Jalan Moch. Ramdan No. 9, Yogyakarta, JT 78563',5416),
('fitriawinarsih@example.com','2025-05-13 14:05:07','Jl. Asia Afrika No. 2, Tangerang, KB 23467',186),
('fitriawinarsih@example.com','2025-05-13 14:05:07','Jl. Asia Afrika No. 2, Tangerang, KB 23467',5880),
('fpertiwi@example.com','2025-05-07 05:46:48','Jalan Raya Ujungberung No. 255, Bima, SG 07435',9229),
('fpertiwi@example.com','2025-05-15 02:49:11','Gg. Sukabumi No. 535, Tangerang Selatan, JA 49208',3283),
('fpertiwi@example.com','2025-05-15 02:49:11','Gg. Sukabumi No. 535, Tangerang Selatan, JA 49208',9442),
('garangpuspita@example.org','2025-05-07 06:01:12','Gang Pasirkoja No. 91, Kotamobagu, YO 87914',850),
('garangpuspita@example.org','2025-05-07 06:01:12','Gang Pasirkoja No. 91, Kotamobagu, YO 87914',3897),
('gawatimanullang@example.org','2025-05-01 16:07:04','Gg. BKR No. 93, Gorontalo, Kalimantan Timur 29836',4286),
('gawatimanullang@example.org','2025-05-01 16:07:04','Gg. BKR No. 93, Gorontalo, Kalimantan Timur 29836',6736),
('gawatimanullang@example.org','2025-05-02 01:58:47','Jalan Laswi No. 4, Cilegon, Sumatera Barat 13958',850),
('gawatimanullang@example.org','2025-05-02 01:58:47','Jalan Laswi No. 4, Cilegon, Sumatera Barat 13958',3897),
('gawatimanullang@example.org','2025-05-12 19:10:51','Gg. Moch. Ramdan No. 2, Bima, JK 80321',3283),
('gawatimanullang@example.org','2025-05-12 19:10:51','Gg. Moch. Ramdan No. 2, Bima, JK 80321',7465),
('gpermadi@example.com','2025-05-14 12:45:36','Gg. Gedebage Selatan No. 8, Pekalongan, AC 78719',5631),
('gpermadi@example.com','2025-05-14 12:45:36','Gg. Gedebage Selatan No. 8, Pekalongan, AC 78719',8265),
('gpermadi@example.com','2025-05-15 09:17:51','Gg. Cempaka No. 624, Sibolga, Sumatera Utara 17005',4350),
('gpermadi@example.com','2025-05-15 09:17:51','Gg. Cempaka No. 624, Sibolga, Sumatera Utara 17005',5880),
('hakimluluh@example.org','2025-05-09 14:37:03','Jalan Moch. Toha No. 046, Tanjungbalai, KU 11479',4319),
('hakimluluh@example.org','2025-05-09 14:37:03','Jalan Moch. Toha No. 046, Tanjungbalai, KU 11479',7465),
('hakimluluh@example.org','2025-05-15 05:04:37','Jl. Sentot Alibasa No. 59, Pagaralam, Kalimantan Selatan 43081',4286),
('hakimluluh@example.org','2025-05-15 05:04:37','Jl. Sentot Alibasa No. 59, Pagaralam, Kalimantan Selatan 43081',9229),
('hmangunsong@example.org','2025-05-01 09:42:55','Jl. R.E Martadinata No. 9, Kota Administrasi Jakarta Timur, Sumatera Utara 09912',4319),
('hmangunsong@example.org','2025-05-01 09:42:55','Jl. R.E Martadinata No. 9, Kota Administrasi Jakarta Timur, Sumatera Utara 09912',6736),
('inuraini@example.net','2025-05-05 03:06:30','Jalan Ciwastra No. 7, Singkawang, SU 91425',2877),
('inuraini@example.net','2025-05-05 03:06:30','Jalan Ciwastra No. 7, Singkawang, SU 91425',8401),
('inuraini@example.net','2025-05-07 02:01:22','Gang Monginsidi No. 64, Serang, PB 54240',2877),
('inuraini@example.net','2025-05-07 02:01:22','Gang Monginsidi No. 64, Serang, PB 54240',5880),
('inuraini@example.net','2025-05-09 11:49:03','Jalan Jamika No. 47, Sawahlunto, Banten 19124',186),
('inuraini@example.net','2025-05-09 11:49:03','Jalan Jamika No. 47, Sawahlunto, Banten 19124',7465),
('joko59@example.org','2025-05-07 12:08:46','Jalan Raya Ujungberung No. 80, Medan, JA 03430',2649),
('joko59@example.org','2025-05-07 12:08:46','Jalan Raya Ujungberung No. 80, Medan, JA 03430',9442),
('joko59@example.org','2025-05-13 09:46:11','Jalan Jayawijaya No. 04, Mataram, Jawa Barat 10073',186),
('joko59@example.org','2025-05-13 09:46:11','Jalan Jayawijaya No. 04, Mataram, Jawa Barat 10073',8401),
('joko59@example.org','2025-05-14 17:05:13','Jalan Cihampelas No. 2, Pagaralam, PB 74511',2649),
('joko59@example.org','2025-05-14 17:05:13','Jalan Cihampelas No. 2, Pagaralam, PB 74511',6736),
('laksitadrajat@example.net','2025-05-12 02:59:36','Gang Lembong No. 71, Mataram, KS 17729',3283),
('laksitadrajat@example.net','2025-05-12 02:59:36','Gang Lembong No. 71, Mataram, KS 17729',5416),
('laksitadrajat@example.net','2025-05-15 21:44:23','Jl. Otto Iskandardinata No. 66, Pematangsiantar, Maluku Utara 78533',186),
('laksitadrajat@example.net','2025-05-15 21:44:23','Jl. Otto Iskandardinata No. 66, Pematangsiantar, Maluku Utara 78533',850),
('lfirmansyah@example.net','2025-05-06 07:20:19','Gang Wonoayu No. 715, Lhokseumawe, MA 99478',2649),
('lfirmansyah@example.net','2025-05-06 07:20:19','Gang Wonoayu No. 715, Lhokseumawe, MA 99478',5880),
('mardhiyahlatika@example.net','2025-05-02 18:08:03','Gg. Cikutra Barat No. 4, Bima, PB 10655',4758),
('mardhiyahlatika@example.net','2025-05-02 18:08:03','Gg. Cikutra Barat No. 4, Bima, PB 10655',7465),
('nababanbella@example.com','2025-05-14 21:18:14','Gang Setiabudhi No. 577, Bekasi, SS 08721',850),
('nababanbella@example.com','2025-05-14 21:18:14','Gang Setiabudhi No. 577, Bekasi, SS 08721',8265),
('nababanbella@example.com','2025-05-16 12:11:21','Gang K.H. Wahid Hasyim No. 7, Madiun, PA 20335',5880),
('nababanbella@example.com','2025-05-16 12:11:21','Gang K.H. Wahid Hasyim No. 7, Madiun, PA 20335',6736),
('nrimayuniar@example.org','2025-05-01 13:36:38','Gang Cikutra Barat No. 88, Bekasi, Sulawesi Tengah 01131',4286),
('nrimayuniar@example.org','2025-05-01 13:36:38','Gang Cikutra Barat No. 88, Bekasi, Sulawesi Tengah 01131',5416),
('nsetiawan@example.com','2025-05-08 05:28:52','Gang Ahmad Dahlan No. 46, Yogyakarta, Kalimantan Timur 97996',850),
('nsetiawan@example.com','2025-05-08 05:28:52','Gang Ahmad Dahlan No. 46, Yogyakarta, Kalimantan Timur 97996',3897),
('nurdiyantivero@example.com','2025-05-09 16:27:12','Jalan Waringin No. 4, Tegal, Sumatera Selatan 35508',8401),
('nurdiyantivero@example.com','2025-05-09 16:27:12','Jalan Waringin No. 4, Tegal, Sumatera Selatan 35508',9229),
('prasastawirda@example.com','2025-05-11 11:24:52','Gg. Kutai No. 54, Batam, Aceh 79430',850),
('prasastawirda@example.com','2025-05-11 11:24:52','Gg. Kutai No. 54, Batam, Aceh 79430',6736),
('prayitna79@example.net','2025-05-03 00:30:06','Gang Monginsidi No. 15, Kota Administrasi Jakarta Utara, Sulawesi Barat 26079',4350),
('prayitna79@example.net','2025-05-03 00:30:06','Gang Monginsidi No. 15, Kota Administrasi Jakarta Utara, Sulawesi Barat 26079',9442),
('simanjuntakparis@example.com','2025-05-07 10:24:32','Jl. Kendalsari No. 212, Ternate, Jawa Tengah 14426',850),
('simanjuntakparis@example.com','2025-05-07 10:24:32','Jl. Kendalsari No. 212, Ternate, Jawa Tengah 14426',10000),
('siregarintan@example.net','2025-05-02 13:00:22','Jalan Kapten Muslihat No. 350, Tual, KR 99124',3897),
('siregarintan@example.net','2025-05-02 13:00:22','Jalan Kapten Muslihat No. 350, Tual, KR 99124',4286),
('siregarteddy@example.com','2025-05-10 13:34:38','Gg. Kebonjati No. 8, Sungai Penuh, Jawa Timur 20887',4319),
('siregarteddy@example.com','2025-05-10 13:34:38','Gg. Kebonjati No. 8, Sungai Penuh, Jawa Timur 20887',9442),
('uchita67@example.org','2025-05-14 12:34:42','Jl. Cikapayang No. 7, Serang, JB 85090',5631),
('uchita67@example.org','2025-05-14 12:34:42','Jl. Cikapayang No. 7, Serang, JB 85090',8265),
('waskitabelinda@example.org','2025-05-04 14:23:03','Gang Jend. Sudirman No. 77, Parepare, SU 07218',3283),
('waskitabelinda@example.org','2025-05-04 14:23:03','Gang Jend. Sudirman No. 77, Parepare, SU 07218',8401),
('xnarpati@example.net','2025-05-01 08:55:04','Gg. Gedebage Selatan No. 796, Tangerang, Sumatera Utara 12821',4758),
('xnarpati@example.net','2025-05-01 08:55:04','Gg. Gedebage Selatan No. 796, Tangerang, Sumatera Utara 12821',9442);
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
INSERT INTO `pengeluaran_resep` (`id_janji_temu`, `id_rumah_sakit`, `id_resep`) VALUES (1,594,4361),
(2,72,46549),
(3,571,7098),
(9,795,49577),
(10,648,18058),
(11,178,13833),
(12,72,48385),
(16,121,23866),
(17,342,49431),
(18,571,45118),
(19,285,37059),
(21,508,22662),
(23,285,35476),
(24,473,5865),
(25,930,43133),
(26,72,10607),
(27,72,11208),
(28,473,18974),
(29,669,45967),
(31,891,589),
(32,100,7571),
(34,891,34276),
(35,891,23361),
(40,508,46143),
(42,909,36005),
(43,342,43147),
(44,473,10744),
(46,508,20304),
(50,669,9684);
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
INSERT INTO `pengguna` (`email`, `kata_sandi`, `nama_lengkap`, `tanggal_lahir`, `usia`) VALUES ('agustinazalindra@example.org','s+_8wV4rzB+S','Unjani Utama','1981-06-16',43),
('alika79@example.net','GpoF43SsLCC_','Purwanto Yuniar, S.T.','1992-11-01',32),
('amegantara@example.net','RYIR$5cOO+6u','Najwa Damanik','1965-01-31',60),
('anggrainiumaya@example.net','K7GFZxCp*Q@@','Anita Zulkarnain, M.Kom.','1973-07-06',51),
('apuspita@example.org',')Yx8F+Mnpj#C','Ellis Wastuti, M.Pd','1997-12-21',27),
('asirwandaprastuti@example.org','941eXqtP&EUF','Putri Jailani','1966-01-18',59),
('bagyautami@example.net','$#&RLGxdA59(','Erik Utami','1959-12-28',65),
('balidinanggraini@example.com','0n3shW28)!*c','Emong Maheswara, S.Psi','2003-07-24',21),
('banarawahyuni@example.net',')PWDjqP*ld6W','Gaman Simanjuntak','2004-07-29',20),
('bsaputra@example.net','7UvPOJVK!UIt','Cut Mala Mandasari','1993-04-27',32),
('caturwulandari@example.net','s!u1HtUu8%fE','R. Ajiono Wasita','1960-12-25',64),
('cengkir55@example.com','H8NU*fGq$07j','Almira Wulandari, S.Pt','1979-12-06',45),
('charyanti@example.net','261Ich6FZ@qA','Galiono Wijayanti','1972-06-30',52),
('dabukkelintang@example.net','r_5AAo(lo_4a','Zalindra Usamah','2002-06-18',22),
('danggraini@example.org','0)3QNCFysa4o','Shakila Mansur','1988-11-20',36),
('darijanwijaya@example.net','7gWWDxxN&st+','Drs. Karma Kuswoyo, S.Farm','1988-04-20',37),
('donomardhiyah@example.com','RasC*O6q9^0l','R.M. Dwi Marpaung, M.Farm','1958-10-02',66),
('dprakasa@example.org','UQ!Flzw_p3E&','Maryanto Fujiati, S.Kom','1997-12-22',27),
('dpratama@example.com','_8j^Or*I@%IH','drg. Ani Prayoga','2005-12-18',19),
('eli22@example.org','Du4!6vzfb$3E','Cemeti Yuniar','1978-09-11',46),
('emandala@example.org','S_$pHdlp%Yk9','Leo Suwarno','1961-11-15',63),
('emilmaheswara@example.org','(g3R&FPzq1NI','Ade Pradipta','1966-12-12',58),
('fitrianinasyidah@example.org','(lqrOAnN&0iN','Wani Winarno','1969-05-15',56),
('fitriawinarsih@example.com','r*04DcLh%oZM','Latika Sirait','1994-08-14',30),
('fpertiwi@example.com','(8u#8)th*%Tl','drg. Elma Pertiwi, S.Ked','1963-08-18',61),
('gamanpermata@example.net','@tbA!Sff)8Kc','Tgk. Vanya Tarihoran, S.T.','1986-05-22',39),
('garangpuspita@example.org','rmEEnl1YCR6_','R.M. Jagapati Yolanda','1982-07-03',42),
('gawatimanullang@example.org','JZ6IQv05&3cV','Hasna Thamrin','1973-02-09',52),
('gpermadi@example.com','b28Gc9KS#*(I','R.M. Umaya Nurdiyanti','2001-06-05',23),
('hakimluluh@example.org','7+rsz^6+#LiU','Wardi Melani','1962-04-22',63),
('hariyahcahyo@example.net','%Xr3%BcMHmUI','Kanda Kusmawati, S.T.','1972-04-05',53),
('hartatiaslijan@example.com','zY5*SQvlFB^5','Tgk. Agnes Simbolon, S.Farm','1958-06-20',66),
('haryantidian@example.org','ivj8DAVB_3C#','Puti Zulaikha Utami','1990-06-19',34),
('hassanahbahuraksa@example.com','E^O)0BqlQIlA','Cut Paris Pertiwi, M.TI.','2006-10-01',18),
('hmangunsong@example.org','zRMM)7SnD2Y4','Karsana Wastuti','2002-06-25',22),
('htamba@example.net','@J)$!9Zx8mVr','Cinthia Kusmawati','1974-12-18',50),
('husamah@example.com','J55QKyFi_FzB','Puti Febi Samosir','1976-06-05',48),
('inuraini@example.net','K2^gEpS4!VY(','R. Ghaliyati Damanik','2002-03-28',23),
('jais98@example.net','M4c8Chx7!amm','Maida Irawan','2005-04-09',20),
('jnainggolan@example.org','5%9FLZOvijvm','Uli Pratama, S.I.Kom','1955-05-27',70),
('joko59@example.org','e7IKNlOR#&nc','Lalita Firmansyah, M.TI.','1983-11-26',41),
('julia72@example.org','fnHzoUZ&)IN4','Lalita Utama','1987-07-02',37),
('kamal14@example.com','s)1!IeXo+P04','Paiman Hariyah','1990-10-12',34),
('karimahusada@example.com','j9lcwIfO#VcM','Paris Permadi','1957-03-27',68),
('karna36@example.org','UVBK^gdb@9JK','Indra Simanjuntak','1988-03-09',37),
('kuswandariharja@example.net','tWR4ECnVz^8@','Tgk. Kasiyah Anggraini, M.Kom.','1958-03-26',67),
('laksitadrajat@example.net','am8Mzk4He+@c','Drs. Ika Hartati, M.Kom.','1982-03-28',43),
('lfirmansyah@example.net','LG&&3Jw1M$w#','Cahyo Firgantoro','1973-01-02',52),
('lhidayat@example.org','(@dmGtgD_3NV','Novi Mansur','1963-07-23',61),
('lsetiawan@example.net','#5(00S#lf0&%','Cemeti Samosir','1998-05-01',27),
('lwaluyo@example.org','xu5E4yLho#8#','Dr. Nova Permadi, S.Gz','2001-05-20',24),
('mahendramahfud@example.com','9&THIwk9+kvN','Faizah Setiawan','1974-12-21',50),
('mardhiyahlatika@example.net','8g)XHJ$v(x!E','Yunita Sitompul','1986-11-25',38),
('martaniwacana@example.com','H6Uc#Tqhz36#','Ratna Latupono','1963-12-30',61),
('maryadinajib@example.com','0#$nZrIZ1Nd5','Drs. Banawa Rahayu, M.Farm','1969-09-15',55),
('mayasariganep@example.com',')_6IWgOwIq1F','Hj. Ani Januar','1985-01-02',40),
('mila18@example.com','7SA@9&+9%T^e','Artanto Astuti','1961-04-01',64),
('mitra10@example.net',')fWa)yWrC^)1','Titin Uyainah','1996-06-21',28),
('mkusumo@example.net','7qI@MD3f@6gD','Adinata Januar','1995-03-01',30),
('nababanbella@example.com','#ZPci8Lo^Ao6','Mutia Hartati','1996-03-01',29),
('narjijanuar@example.com','xk2tEAj#$xQO','Sadina Adriansyah','1984-05-26',41),
('nasyiahgamblang@example.net','v^6a6Uuj#&6%','R. Ida Prasasta','2001-05-16',24),
('novitasariatma@example.com','m&9Lxn%p+)K9','Wasis Zulkarnain','1957-02-24',68),
('nrimayuniar@example.org','3hB&H3Gw#$_f','Putu Maheswara','1957-02-09',68),
('nsetiawan@example.com','3*N($vao$TJX','Raisa Permadi','1986-08-09',38),
('nurdiyantivero@example.com','7pPgS#8w*QX4','Maimunah Marpaung','2004-04-24',21),
('oktowasita@example.org','t68xnYKv)PDk','Jaya Simbolon','1989-07-17',35),
('owahyuni@example.net','_2aKuh4QVip)','Hamima Novitasari','1968-01-30',57),
('panji19@example.com','(mXXchl60QRT','Puti Tiara Ramadan, S.Gz','1991-06-24',33),
('pprakasa@example.net','$@&qXRplbpK8','Ajimin Nababan','1996-09-15',28),
('prasastasalman@example.net','&x_Lsfsbh2Y1','dr. Cengkal Winarno','1977-04-08',48),
('prasastawirda@example.com','#36U^Nlt+BXA','Usyi Nurdiyanti','1970-03-21',55),
('prayitna79@example.net','oBNU#jc_E!4d','Lili Marbun','1983-05-30',41),
('pudjiastutibaktiadi@example.org','F%Z4TGrtop@i','Darijan Halim','1997-03-25',28),
('rajasarahmi@example.net','bz2ZyA_(5@vK','Wulan Maryati','1988-08-05',36),
('rangga83@example.com','7L2)Oee^#TNm','Purwanto Hutasoit','1970-03-28',55),
('restu31@example.com','TE3%Mdjvz^%7','Janet Santoso','1979-12-22',45),
('ridwan86@example.net','ToBuGW)$UP%8','Amelia Pangestu','1967-04-19',58),
('rramadan@example.com','%i5xF2nSQkic','Mursita Rajata','2005-02-15',20),
('santosoendah@example.com','B$29wS44G(dT','Restu Saptono','1954-09-19',70),
('saputragatra@example.org','D!h2kWo*+9nZ','Atmaja Marbun','2000-04-13',25),
('simanjuntakparis@example.com','^+APnyUu3js@','Elvin Suartini','1958-05-03',67),
('siregarintan@example.net','X0^J50l(!n6x','Zulaikha Prabowo','1989-05-03',36),
('siregarteddy@example.com','N8sMLsbo(^0!','Ratna Nababan','1971-06-06',53),
('suryononalar@example.net','V*j1X_Gq_RVV','Drs. Balidin Pratiwi, S.Pd','1968-10-05',56),
('swaskita@example.org','_@5MjdEhOslM','Elisa Mayasari, M.Ak','1971-08-16',53),
('tasnimwinarno@example.com','$5QRm&sZQH35','Rizki Zulaika','1988-06-25',36),
('tedisaefullah@example.com','W6UDzfS^*@4W','Catur Yulianti, M.Pd','1967-11-07',57),
('uchita67@example.org','dl4UBTln)SV5','R.M. Dadap Nugroho','2005-12-29',19),
('uda08@example.com','Rw0IaEGb(3Gz','Ghaliyati Simbolon','1979-08-19',45),
('usamahtugiman@example.net','6Qj$%Mv($_bR','Dwi Saptono','1976-03-23',49),
('vhardiansyah@example.com','O*KMyqWTRZ8K','Edi Sihombing','1996-08-27',28),
('vprastuti@example.net','ylH0nUNk)8Sm','Ir. Mila Saputra','1996-07-31',28),
('wacanakarya@example.com','*V4S0DpgH90a','Putri Nasyiah','1998-11-19',26),
('waskitabelinda@example.org','s&46cT$gq&oV','Dewi Natsir','1980-08-25',44),
('wbudiyanto@example.net','1y9l2GOoQ$KX','Daniswara Prayoga','1999-05-31',25),
('widya82@example.net','@QznIIl__5mT','dr. Kamaria Dongoran','2000-12-05',24),
('xnarpati@example.net','hI+J2zz%l+2$','R.A. Ade Manullang','1955-01-22',70),
('yoga61@example.org','laU$khfWJb0M','Dimaz Hardiansyah','1997-04-11',28),
('zsaputra@example.com','e%_1Bpr3JF@T','Sabrina Pudjiastuti','1956-05-07',69);
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
INSERT INTO `resep_obat` (`id_obat`, `id_resep`, `dosis`, `cara_pakai`) VALUES (186,11208,'3x sehari 2 tablet','Sebelum makan'),
(186,23866,'3x sehari 1 tablet','Saat makan'),
(850,43147,'1x sehari 1 tablet','Sebelum makan'),
(2649,5865,'3x sehari 2 tablet','Saat makan'),
(2649,11208,'2x sehari 2 tablet','Sesudah makan'),
(2649,23361,'1x sehari 2 tablet','Sesudah makan'),
(2649,37059,'2x sehari 1 tablet','Saat makan'),
(2877,9684,'2x sehari 1 tablet','Sebelum makan'),
(2877,13833,'2x sehari 1 tablet','Saat makan'),
(2877,18058,'1x sehari 1 tablet','Sesudah makan'),
(2877,22662,'2x sehari 2 tablet','Sesudah makan'),
(2877,34276,'3x sehari 2 tablet','Saat makan'),
(2877,37059,'2x sehari 2 tablet','Sesudah makan'),
(2877,45118,'1x sehari 2 tablet','Sebelum makan'),
(3283,589,'1x sehari 2 tablet','Saat makan'),
(3283,4361,'2x sehari 2 tablet','Sesudah makan'),
(3283,7098,'2x sehari 1 tablet','Sebelum makan'),
(3283,9684,'1x sehari 1 tablet','Sesudah makan'),
(3283,10607,'3x sehari 1 tablet','Sebelum makan'),
(3283,10744,'1x sehari 1 tablet','Sesudah makan'),
(3283,18058,'3x sehari 2 tablet','Sebelum makan'),
(3283,35476,'3x sehari 1 tablet','Sebelum makan'),
(3283,37059,'2x sehari 2 tablet','Saat makan'),
(3283,46143,'2x sehari 1 tablet','Saat makan'),
(3283,46549,'3x sehari 2 tablet','Saat makan'),
(3897,589,'2x sehari 1 tablet','Sebelum makan'),
(3897,7571,'2x sehari 2 tablet','Saat makan'),
(3897,23361,'2x sehari 2 tablet','Sesudah makan'),
(3897,35476,'1x sehari 1 tablet','Sesudah makan'),
(3897,43133,'3x sehari 1 tablet','Sebelum makan'),
(4286,589,'1x sehari 1 tablet','Sesudah makan'),
(4286,46549,'3x sehari 2 tablet','Sebelum makan'),
(4319,18974,'3x sehari 1 tablet','Saat makan'),
(4319,20304,'1x sehari 2 tablet','Saat makan'),
(4319,34276,'1x sehari 1 tablet','Sebelum makan'),
(4319,48385,'3x sehari 1 tablet','Saat makan'),
(4319,49431,'3x sehari 2 tablet','Sesudah makan'),
(4350,5865,'2x sehari 1 tablet','Sebelum makan'),
(4350,7571,'1x sehari 1 tablet','Sebelum makan'),
(4350,10607,'2x sehari 2 tablet','Sesudah makan'),
(4350,18058,'2x sehari 2 tablet','Saat makan'),
(4350,20304,'3x sehari 1 tablet','Sebelum makan'),
(4350,34276,'3x sehari 1 tablet','Saat makan'),
(4350,43147,'1x sehari 2 tablet','Sesudah makan'),
(4350,48385,'2x sehari 1 tablet','Saat makan'),
(4350,49577,'2x sehari 2 tablet','Saat makan'),
(4758,22662,'2x sehari 1 tablet','Sesudah makan'),
(4758,34276,'3x sehari 2 tablet','Sebelum makan'),
(4758,45118,'2x sehari 2 tablet','Sesudah makan'),
(5416,5865,'3x sehari 2 tablet','Sesudah makan'),
(5416,43147,'2x sehari 1 tablet','Sebelum makan'),
(5416,46549,'3x sehari 1 tablet','Sesudah makan'),
(5416,48385,'2x sehari 1 tablet','Saat makan'),
(5631,4361,'1x sehari 2 tablet','Saat makan'),
(5631,45118,'1x sehari 2 tablet','Sebelum makan'),
(5631,49577,'2x sehari 2 tablet','Saat makan'),
(5880,5865,'2x sehari 1 tablet','Saat makan'),
(5880,43133,'1x sehari 1 tablet','Saat makan'),
(5880,48385,'3x sehari 1 tablet','Sesudah makan'),
(5880,49431,'2x sehari 2 tablet','Saat makan'),
(6736,7098,'3x sehari 2 tablet','Saat makan'),
(6736,9684,'3x sehari 1 tablet','Sesudah makan'),
(6736,13833,'3x sehari 2 tablet','Sesudah makan'),
(6736,18058,'2x sehari 1 tablet','Saat makan'),
(6736,46549,'3x sehari 2 tablet','Sesudah makan'),
(7465,9684,'2x sehari 1 tablet','Sesudah makan'),
(7465,10744,'2x sehari 1 tablet','Saat makan'),
(7465,34276,'3x sehari 1 tablet','Sesudah makan'),
(7465,36005,'3x sehari 1 tablet','Sebelum makan'),
(7465,49577,'3x sehari 1 tablet','Saat makan'),
(8265,5865,'2x sehari 2 tablet','Saat makan'),
(8265,7571,'2x sehari 2 tablet','Sesudah makan'),
(8265,11208,'2x sehari 1 tablet','Saat makan'),
(8265,13833,'3x sehari 1 tablet','Saat makan'),
(8265,45118,'3x sehari 2 tablet','Sesudah makan'),
(8265,46143,'1x sehari 1 tablet','Saat makan'),
(8265,48385,'1x sehari 1 tablet','Sebelum makan'),
(8401,5865,'3x sehari 1 tablet','Sesudah makan'),
(8401,10607,'1x sehari 1 tablet','Sebelum makan'),
(8401,18058,'3x sehari 2 tablet','Saat makan'),
(8401,36005,'1x sehari 1 tablet','Sesudah makan'),
(8401,45967,'1x sehari 2 tablet','Saat makan'),
(9229,589,'1x sehari 1 tablet','Sebelum makan'),
(9229,4361,'2x sehari 1 tablet','Sesudah makan'),
(9229,22662,'2x sehari 2 tablet','Saat makan'),
(9229,45967,'3x sehari 1 tablet','Sebelum makan'),
(9442,11208,'2x sehari 1 tablet','Sebelum makan'),
(9442,20304,'1x sehari 1 tablet','Sebelum makan'),
(9442,23361,'3x sehari 2 tablet','Sesudah makan'),
(9442,34276,'1x sehari 1 tablet','Sesudah makan'),
(9442,46143,'2x sehari 1 tablet','Sebelum makan'),
(10000,18974,'1x sehari 1 tablet','Sesudah makan'),
(10000,23361,'3x sehari 1 tablet','Sesudah makan'),
(10000,36005,'3x sehari 2 tablet','Sebelum makan'),
(10000,43133,'1x sehari 2 tablet','Sesudah makan'),
(10000,43147,'3x sehari 2 tablet','Sebelum makan');
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
INSERT INTO `rumah_sakit` (`id_rumah_sakit`, `nama_rumah_sakit`, `provinsi`, `kota`, `jalan`) VALUES (72,'RS Tbk Manado','Sulawesi Tengah','Kota Administrasi Jakarta Selatan','Jl. PHH. Mustofa No. 4'),
(100,'RS Tbk Pontianak','DI Yogyakarta','Probolinggo','Gang Jamika No. 728'),
(121,'RS Tbk Mojokerto','Nusa Tenggara Timur','Gorontalo','Gg. Cihampelas No. 46'),
(178,'RS (Persero) Tbk Probolinggo','Kalimantan Utara','Mojokerto','Gang Tubagus Ismail No. 3'),
(237,'RS Tbk Langsa','Aceh','Langsa','Gg. R.E Martadinata No. 920'),
(285,'RS (Persero) Tbk Lubuklinggau','Nusa Tenggara Barat','Kota Administrasi Jakarta Timur','Gang Ir. H. Djuanda No. 73'),
(325,'RS Tbk Probolinggo','Sumatera Selatan','Salatiga','Gg. Rajawali Barat No. 17'),
(342,'RS Tbk Bengkulu','Sumatera Barat','Magelang','Jl. HOS. Cokroaminoto No. 372'),
(473,'RS Tbk Bitung','Kalimantan Tengah','Bima','Jalan Kiaracondong No. 9'),
(508,'RS (Persero) Tbk Padangpanjang','Sulawesi Tengah','Sungai Penuh','Jl. Laswi No. 0'),
(571,'RS (Persero) Tbk Gorontalo','Jawa Timur','Tidore Kepulauan','Gg. Laswi No. 1'),
(594,'RS Tbk Salatiga','Sulawesi Tenggara','Binjai','Gang Monginsidi No. 906'),
(648,'RS Tbk Sawahlunto','Jawa Tengah','Bandar Lampung','Jalan Suryakencana No. 553'),
(669,'RS (Persero) Tbk Bau-Bau','Nusa Tenggara Timur','Tangerang Selatan','Gg. Sukabumi No. 7'),
(687,'RS Tbk Samarinda','Sumatera Selatan','Sibolga','Jl. Rajawali Timur No. 60'),
(795,'RS Tbk Palembang','Sulawesi Barat','Mataram','Jl. Ciumbuleuit No. 0'),
(876,'RS (Persero) Tbk Probolinggo','DI Yogyakarta','Pasuruan','Gang H.J Maemunah No. 6'),
(891,'RS Tbk Kotamobagu','Papua Barat','Dumai','Gang Dipenogoro No. 28'),
(909,'RS Tbk Sungai Penuh','Lampung','Subulussalam','Gg. Jamika No. 8'),
(930,'RS Tbk Bengkulu','Jambi','Padang','Gg. Veteran No. 9');
/*!40000 ALTER TABLE `rumah_sakit` ENABLE KEYS */;
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
INSERT INTO `telepon_pengguna` (`email`, `no_telepon`) VALUES ('agustinazalindra@example.org','+62 (059) 000 1885'),
('alika79@example.net','+62 (020) 091 2811'),
('amegantara@example.net','+62-167-738-1187'),
('anggrainiumaya@example.net','+62 (015) 765-7969'),
('apuspita@example.org','+62 (523) 998-2016'),
('asirwandaprastuti@example.org','+62 (000) 733-2882'),
('bagyautami@example.net','+62 (600) 842 3434'),
('balidinanggraini@example.com','+62 (076) 376 9539'),
('banarawahyuni@example.net','+62-83-565-2798'),
('bsaputra@example.net','+62-031-140-2964'),
('caturwulandari@example.net','0852456907'),
('cengkir55@example.com','+62 (79) 034-6729'),
('charyanti@example.net','+62-046-427-6875'),
('dabukkelintang@example.net','0837573714'),
('danggraini@example.org','(0922) 849 7789'),
('darijanwijaya@example.net','+62 (034) 403 3512'),
('donomardhiyah@example.com','+62-0385-383-6223'),
('dprakasa@example.org','(065) 660-1745'),
('dpratama@example.com','+62-62-669-6317'),
('eli22@example.org','0836546182'),
('emandala@example.org','+62 (052) 678 0192'),
('emilmaheswara@example.org','0884882929'),
('fitrianinasyidah@example.org','(056) 509-9302'),
('fitriawinarsih@example.com','082 454 4152'),
('fpertiwi@example.com','+62 (017) 259 6763'),
('gamanpermata@example.net','(094) 009 3473'),
('garangpuspita@example.org','+62 (0848) 337 9851'),
('gawatimanullang@example.org','+62-041-013-1430'),
('gpermadi@example.com','+62 (342) 030-0508'),
('hakimluluh@example.org','+62 (0476) 949-8396'),
('hariyahcahyo@example.net','+62-0257-286-1460'),
('hartatiaslijan@example.com','+62-0674-601-6923'),
('haryantidian@example.org','(0796) 643-7267'),
('hassanahbahuraksa@example.com','+62-834-715-7821'),
('hmangunsong@example.org','(061) 428 2084'),
('htamba@example.net','+62 (060) 495 9363'),
('husamah@example.com','+62-166-323-2585'),
('inuraini@example.net','+62 (40) 150 7579'),
('jais98@example.net','+62 (056) 049 1904'),
('jnainggolan@example.org','+62 (86) 937 5317'),
('joko59@example.org','(071) 329-4680'),
('julia72@example.org','+62-060-627-7813'),
('kamal14@example.com','+62 (679) 184-4019'),
('karimahusada@example.com','+62 (0802) 516-8951'),
('karna36@example.org','086 439 5729'),
('kuswandariharja@example.net','+62 (91) 627-7240'),
('laksitadrajat@example.net','+62 (0090) 974 9839'),
('lfirmansyah@example.net','+62 (34) 312 4311'),
('lhidayat@example.org','(020) 965 9573'),
('lsetiawan@example.net','+62-19-476-5872'),
('lwaluyo@example.org','+62 (53) 854-5621'),
('mahendramahfud@example.com','+62-332-736-1898'),
('mardhiyahlatika@example.net','(005) 061-5636'),
('martaniwacana@example.com','+62-076-729-7981'),
('maryadinajib@example.com','084 621 5307'),
('mayasariganep@example.com','+62-036-687-2861'),
('mila18@example.com','+62 (974) 467-8906'),
('mitra10@example.net','(0726) 220-1036'),
('mkusumo@example.net','+62 (34) 282 4022'),
('nababanbella@example.com','(094) 303-4673'),
('narjijanuar@example.com','(010) 886-5405'),
('nasyiahgamblang@example.net','+62 (0005) 276 5101'),
('novitasariatma@example.com','+62 (0836) 551-2649'),
('nrimayuniar@example.org','+62-002-751-4064'),
('nsetiawan@example.com','(041) 643 6833'),
('nurdiyantivero@example.com','+62 (910) 078 2044'),
('oktowasita@example.org','+62 (17) 627 3445'),
('owahyuni@example.net','+62 (023) 810-8078'),
('panji19@example.com','(038) 925-7819'),
('pprakasa@example.net','(0512) 595-2979'),
('prasastasalman@example.net','(0261) 016 2476'),
('prasastawirda@example.com','+62 (29) 802-5240'),
('prayitna79@example.net','+62 (0294) 530 1832'),
('pudjiastutibaktiadi@example.org','(061) 798-9638'),
('rajasarahmi@example.net','+62-063-833-5896'),
('rangga83@example.com','+62 (050) 493 2234'),
('restu31@example.com','+62-041-275-5343'),
('ridwan86@example.net','089 738 9585'),
('rramadan@example.com','(050) 924 7730'),
('santosoendah@example.com','+62 (0776) 344-5833'),
('saputragatra@example.org','(017) 475-3759'),
('simanjuntakparis@example.com','+62 (092) 318 7397'),
('siregarintan@example.net','(0490) 071 5573'),
('siregarteddy@example.com','+62 (871) 584-3341'),
('suryononalar@example.net','+62 (01) 398-7071'),
('swaskita@example.org','(056) 611 5826'),
('tasnimwinarno@example.com','083 766 2035'),
('tedisaefullah@example.com','+62 (05) 350-2481'),
('uchita67@example.org','(0388) 736-0605'),
('uda08@example.com','0882243104'),
('usamahtugiman@example.net','+62 (0606) 208 8579'),
('vhardiansyah@example.com','(0756) 624-8861'),
('vprastuti@example.net','+62-39-686-5281'),
('wacanakarya@example.com','084 592 5487'),
('waskitabelinda@example.org','+62 (338) 834 2615'),
('wbudiyanto@example.net','+62 (819) 498-6681'),
('widya82@example.net','+62 (076) 181 2853'),
('xnarpati@example.net','+62 (441) 283-0663'),
('yoga61@example.org','(047) 768-7896'),
('zsaputra@example.com','089 454 8408');
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
INSERT INTO `telepon_rumah_sakit` (`id_rumah_sakit`, `no_telepon`) VALUES (72,'+62 (054) 458-8808'),
(100,'+62 (008) 212-8359'),
(121,'+62 (0784) 521 6536'),
(178,'(098) 831-8669'),
(237,'+62 (397) 343-9121'),
(285,'+62 (0519) 808 4213'),
(325,'+62 (27) 212 1915'),
(342,'+62-041-710-2973'),
(473,'+62 (63) 042-3832'),
(508,'+62-0050-037-0857'),
(571,'+62 (42) 108 9781'),
(594,'+62 (879) 488 1318'),
(648,'+62-850-321-8822'),
(669,'0882876458'),
(687,'+62 (051) 524-5413'),
(795,'+62-0083-950-9844'),
(876,'0850211457'),
(891,'(0135) 422-4415'),
(891,'(024) 853 8464'),
(891,'(035) 483-7907'),
(891,'(053) 832-7390'),
(891,'(0632) 662 9138'),
(891,'(076) 266 5152'),
(891,'(0784) 228-3438'),
(891,'(099) 383-2224'),
(891,'+62 (011) 767 3458'),
(891,'+62 (016) 660 0299'),
(891,'+62 (027) 854 5576'),
(891,'+62 (0477) 713 7411'),
(891,'+62 (059) 185 7118'),
(891,'+62 (062) 571-1977'),
(891,'+62 (072) 172-4964'),
(891,'+62 (0891) 426 2021'),
(891,'+62 (29) 702 8531'),
(891,'+62 (449) 401 7820'),
(891,'+62 (45) 278-9103'),
(891,'+62 (523) 037-2506'),
(891,'+62 (598) 175-8793'),
(891,'+62 (71) 226 5315'),
(891,'+62 (83) 757-1655'),
(891,'+62 (928) 969 5295'),
(891,'+62 (937) 700-4887'),
(891,'+62-041-556-0658'),
(891,'+62-25-298-1510'),
(891,'+62-601-050-6064'),
(891,'083 573 9670'),
(891,'0857087341'),
(891,'086 480 9270'),
(909,'+62-052-525-0796'),
(930,'+62 (090) 890-6262');
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
INSERT INTO `tenaga_medis` (`email`, `nama_departemen`, `id_rumah_sakit`, `NIKes`, `jenis_profesi`) VALUES ('agustinazalindra@example.org','Anak',100,'4428093230221','Bidan'),
('asirwandaprastuti@example.org','Gigi',508,'5812620681133','Bidan'),
('bagyautami@example.net','Gigi',178,'3978592318414','Perawat'),
('caturwulandari@example.net','Kulit',178,'5118171076382','Dokter Spesialis'),
('cengkir55@example.com','Bedah',121,'9446894180274','Dokter Umum'),
('dabukkelintang@example.net','Anak',285,'0957569024223','Bidan'),
('darijanwijaya@example.net','Neurologi',237,'9632671779933','Perawat'),
('dprakasa@example.org','Umum',72,'7342179025358','Dokter Umum'),
('emandala@example.org','Anak',571,'1087390767002','Perawat'),
('hariyahcahyo@example.net','Umum',571,'1816954305974','Dokter Spesialis'),
('haryantidian@example.org','Umum',72,'9666161027136','Dokter Umum'),
('hassanahbahuraksa@example.com','Umum',178,'5329696917467','Dokter Umum'),
('htamba@example.net','Anak',891,'2426939079197','Dokter Spesialis'),
('husamah@example.com','Anak',342,'2460459606396','Bidan'),
('jnainggolan@example.org','Kardiologi',508,'7174207174130','Bidan'),
('julia72@example.org','Anak',669,'2226131295414','Perawat'),
('kamal14@example.com','Gigi',473,'1583956808382','Perawat'),
('karimahusada@example.com','Gigi',508,'0200792048468','Perawat'),
('karna36@example.org','Anak',285,'8993816568647','Bidan'),
('kuswandariharja@example.net','Anak',342,'3984705718583','Perawat'),
('lhidayat@example.org','Umum',121,'5499115763132','Bidan'),
('lsetiawan@example.net','Bedah',121,'8570331308806','Dokter Spesialis'),
('lwaluyo@example.org','Umum',648,'5066759892100','Dokter Spesialis'),
('mahendramahfud@example.com','Gigi',571,'3929444396616','Perawat'),
('maryadinajib@example.com','Gigi',648,'8143139871027','Dokter Umum'),
('mayasariganep@example.com','Kardiologi',594,'9298003487329','Dokter Spesialis'),
('mitra10@example.net','Kulit',571,'8214863480738','Dokter Spesialis'),
('mkusumo@example.net','Gigi',669,'3423779562024','Dokter Spesialis'),
('narjijanuar@example.com','Gigi',342,'6426538253710','Bidan'),
('nasyiahgamblang@example.net','Anak',121,'6260137044405','Dokter Umum'),
('novitasariatma@example.com','Bedah',473,'4802260811664','Perawat'),
('oktowasita@example.org','Gigi',325,'0862388623512','Bidan'),
('owahyuni@example.net','Neurologi',909,'5699796907263','Perawat'),
('panji19@example.com','Anak',669,'7315423580774','Perawat'),
('pprakasa@example.net','Gigi',571,'0576091286048','Perawat'),
('pudjiastutibaktiadi@example.org','Neurologi',687,'1318622580954','Bidan'),
('rajasarahmi@example.net','Kardiologi',909,'8857223177604','Dokter Spesialis'),
('rangga83@example.com','Umum',687,'8719487557984','Bidan'),
('restu31@example.com','Anak',891,'0089145444054','Perawat'),
('rramadan@example.com','Anak',342,'8405088053917','Bidan'),
('saputragatra@example.org','Bedah',648,'2819113999679','Perawat'),
('suryononalar@example.net','Neurologi',909,'6350779734380','Dokter Umum'),
('swaskita@example.org','Gigi',669,'1339749762801','Dokter Umum'),
('uda08@example.com','Anak',648,'9290898526008','Dokter Umum'),
('usamahtugiman@example.net','Umum',669,'7206320675772','Perawat'),
('wacanakarya@example.com','Neurologi',325,'5347120292287','Perawat'),
('wbudiyanto@example.net','Gigi',325,'1358661978282','Bidan'),
('widya82@example.net','Neurologi',909,'1268799922852','Perawat'),
('yoga61@example.org','Gigi',669,'2449248624322','Bidan'),
('zsaputra@example.com','Anak',72,'8162309303229','Perawat');
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

-- Dump completed on 2025-05-16 15:44:12
