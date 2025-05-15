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
INSERT INTO `alamat_pasien` (`email`, `provinsi`, `kota`, `jalan`) VALUES ('ckuswandari@example.com','Jawa Barat','Mojokerto','Jalan Kutisari Selatan No. 4'),
('ckuswandari@example.com','Sumatera Selatan','Bima','Gg. K.H. Wahid Hasyim No. 791'),
('cnugroho@example.org','Aceh','Tomohon','Gg. Rajawali Timur No. 766'),
('cnugroho@example.org','Bengkulu','Kediri','Gg. Antapani Lama No. 811'),
('cnugroho@example.org','Kalimantan Barat','Pekalongan','Gg. Cikutra Timur No. 049'),
('cnugroho@example.org','Kalimantan Barat','Singkawang','Gg. Setiabudhi No. 31'),
('cnugroho@example.org','Kalimantan Timur','Langsa','Jl. Jend. Sudirman No. 82'),
('cnugroho@example.org','Maluku','Kota Administrasi Jakarta Pusat','Gg. Merdeka No. 739'),
('cnugroho@example.org','Sulawesi Tengah','Sungai Penuh','Gang W.R. Supratman No. 9'),
('cnugroho@example.org','Sumatera Utara','Sukabumi','Gang Merdeka No. 031'),
('farhunnisafirmansyah@example.org','Bengkulu','Batu','Jalan Ciwastra No. 425'),
('farhunnisafirmansyah@example.org','DI Yogyakarta','Tomohon','Gang Gardujati No. 585'),
('farhunnisafirmansyah@example.org','Sulawesi Barat','Malang','Jalan Joyoboyo No. 94'),
('jsafitri@example.com','Jawa Timur','Mojokerto','Jalan Kendalsari No. 0'),
('jsafitri@example.com','Kalimantan Tengah','Bontang','Gang Cihampelas No. 355'),
('jsafitri@example.com','Lampung','Mojokerto','Jl. Moch. Ramdan No. 037'),
('jsafitri@example.com','Nusa Tenggara Barat','Lhokseumawe','Jalan Ciumbuleuit No. 48'),
('jsafitri@example.com','Sumatera Barat','Malang','Gg. Gardujati No. 0'),
('luismustofa@example.com','Bali','Banjarbaru','Gang KH Amin Jasuta No. 290'),
('luismustofa@example.com','Jawa Barat','Lubuklinggau','Jl. Kiaracondong No. 834'),
('luismustofa@example.com','Jawa Timur','Ambon','Gang Indragiri No. 28'),
('luismustofa@example.com','Kalimantan Selatan','Denpasar','Gang Setiabudhi No. 76'),
('luismustofa@example.com','Kepulauan Bangka Belitung','Bekasi','Gg. Jayawijaya No. 485'),
('msalahudin@example.org','Aceh','Palopo','Jalan BKR No. 5'),
('msalahudin@example.org','Gorontalo','Blitar','Gang S. Parman No. 3'),
('msalahudin@example.org','Kalimantan Tengah','Balikpapan','Gang Pasir Koja No. 805'),
('msalahudin@example.org','Kalimantan Tengah','Pekanbaru','Jalan Veteran No. 1'),
('msalahudin@example.org','Kepulauan Bangka Belitung','Malang','Jl. Kiaracondong No. 61'),
('msalahudin@example.org','Kepulauan Riau','Bitung','Gg. Sentot Alibasa No. 5'),
('msalahudin@example.org','Maluku Utara','Bukittinggi','Gg. Kebonjati No. 6'),
('msalahudin@example.org','Nusa Tenggara Timur','Palu','Gang W.R. Supratman No. 6'),
('msalahudin@example.org','Sulawesi Utara','Samarinda','Jalan Surapati No. 02'),
('msalahudin@example.org','Sulawesi Utara','Tebingtinggi','Jl. Cikutra Timur No. 180'),
('najmudinkarna@example.net','Aceh','Sabang','Jalan Siliwangi No. 470'),
('najmudinkarna@example.net','Banten','Tanjungbalai','Gg. Wonoayu No. 8'),
('najmudinkarna@example.net','Jambi','Bima','Jl. Kutai No. 519'),
('najmudinkarna@example.net','Maluku Utara','Sorong','Gang Kutisari Selatan No. 502'),
('najmudinkarna@example.net','Sulawesi Utara','Purwokerto','Jl. Rajiman No. 3'),
('najmudinkarna@example.net','Sumatera Selatan','Pekanbaru','Jl. Rungkut Industri No. 3'),
('tugimanwidiastuti@example.net','Aceh','Banjarmasin','Jalan Tebet Barat Dalam No. 40'),
('tugimanwidiastuti@example.net','Jawa Tengah','Semarang','Gang Kutai No. 5'),
('tugimanwidiastuti@example.net','Jawa Timur','Tarakan','Gang Jend. A. Yani No. 6'),
('tugimanwidiastuti@example.net','Sumatera Barat','Bandung','Jalan Erlangga No. 029'),
('ypratiwi@example.org','Aceh','Balikpapan','Jl. Kiaracondong No. 60'),
('ypratiwi@example.org','Jambi','Balikpapan','Gang Soekarno Hatta No. 9'),
('ypratiwi@example.org','Kepulauan Riau','Cilegon','Gang Sentot Alibasa No. 921'),
('ypratiwi@example.org','Sulawesi Tenggara','Pematangsiantar','Gang R.E Martadinata No. 9'),
('yuliantimutia@example.net','Jambi','Kediri','Gg. Cikapayang No. 2'),
('yuliantimutia@example.net','Jawa Barat','Kediri','Gg. Ahmad Dahlan No. 19'),
('yuliantimutia@example.net','Kepulauan Bangka Belitung','Bogor','Jalan Pasir Koja No. 36');
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
INSERT INTO `departemen` (`nama_departemen`, `id_rumah_sakit`, `gedung`) VALUES ('Anak',268,'Gedung B'),
('Anak',289,'Gedung C'),
('Anak',411,'Gedung B'),
('Anak',447,'Gedung C'),
('Anak',451,'Gedung Timur'),
('Anak',488,'Gedung C'),
('Anak',573,'Gedung Timur'),
('Anak',581,'Gedung C'),
('Anak',713,'Gedung Timur'),
('Anak',859,'Gedung Utama'),
('Anak',969,'Gedung Utama'),
('Bedah',170,'Gedung Timur'),
('Bedah',268,'Gedung Utama'),
('Bedah',289,'Gedung A'),
('Bedah',441,'Gedung Timur'),
('Bedah',447,'Gedung A'),
('Bedah',488,'Gedung A'),
('Bedah',959,'Gedung B'),
('Bedah',963,'Gedung Timur'),
('Bedah',969,'Gedung Timur'),
('Gigi',411,'Gedung C'),
('Gigi',436,'Gedung Timur'),
('Gigi',441,'Gedung Timur'),
('Gigi',447,'Gedung C'),
('Gigi',451,'Gedung A'),
('Gigi',573,'Gedung Utama'),
('Gigi',581,'Gedung Utama'),
('Gigi',807,'Gedung B'),
('Kardiologi',170,'Gedung Timur'),
('Kardiologi',436,'Gedung B'),
('Kardiologi',447,'Gedung A'),
('Kardiologi',488,'Gedung A'),
('Kardiologi',573,'Gedung C'),
('Kardiologi',750,'Gedung A'),
('Kardiologi',859,'Gedung C'),
('Kardiologi',959,'Gedung A'),
('Kardiologi',963,'Gedung A'),
('Kardiologi',969,'Gedung Utama'),
('Kulit',268,'Gedung Utama'),
('Kulit',411,'Gedung Timur'),
('Kulit',447,'Gedung Timur'),
('Kulit',451,'Gedung A'),
('Kulit',488,'Gedung B'),
('Kulit',525,'Gedung B'),
('Kulit',581,'Gedung A'),
('Kulit',713,'Gedung Timur'),
('Kulit',750,'Gedung A'),
('Kulit',969,'Gedung C'),
('Neurologi',268,'Gedung C'),
('Neurologi',279,'Gedung Timur'),
('Neurologi',289,'Gedung B'),
('Neurologi',436,'Gedung C'),
('Neurologi',451,'Gedung A'),
('Neurologi',488,'Gedung Timur'),
('Neurologi',525,'Gedung Timur'),
('Neurologi',573,'Gedung A'),
('Neurologi',581,'Gedung A'),
('Neurologi',963,'Gedung Utama'),
('Umum',170,'Gedung Utama'),
('Umum',279,'Gedung Timur'),
('Umum',289,'Gedung A'),
('Umum',436,'Gedung Timur'),
('Umum',451,'Gedung A'),
('Umum',573,'Gedung Timur'),
('Umum',581,'Gedung B'),
('Umum',750,'Gedung Timur'),
('Umum',807,'Gedung Timur'),
('Umum',859,'Gedung Timur'),
('Umum',959,'Gedung Utama'),
('Umum',969,'Gedung Timur');
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
INSERT INTO `janji_temu` (`id_janji_temu`, `id_rumah_sakit`, `waktu_pelaksanaan`, `alasan`) VALUES (1,807,'2025-06-03 22:49:33','Ipsam neque impedit blanditiis quod quibusdam provident atque assumenda.'),
(2,170,'2025-05-06 03:57:26','Autem odio eius non assumenda commodi praesentium ab.'),
(3,959,'2025-04-18 09:26:10','Voluptate aspernatur eaque placeat architecto aperiam nihil earum ex veritatis perferendis.'),
(4,959,'2025-05-09 19:13:34','Esse illum unde est non laborum illum iure.'),
(5,447,'2025-04-17 03:53:57','Accusamus veniam perferendis necessitatibus debitis commodi eligendi sed sed cum accusamus hic.'),
(6,488,'2025-04-23 03:13:12','Animi quam dolores dignissimos iste quo et incidunt libero aliquid nisi id.'),
(7,411,'2025-06-05 10:00:19','Consequuntur magni incidunt sunt similique ex temporibus alias dolor.'),
(8,963,'2025-05-14 14:09:35','Ipsa ipsam expedita inventore dolores tempore accusamus neque dolores exercitationem molestiae.'),
(9,441,'2025-06-02 21:07:00','Provident itaque quam qui error amet nobis consequuntur recusandae nemo.'),
(10,268,'2025-05-03 20:29:17','Magnam maiores debitis fugit veritatis optio aliquam.'),
(11,807,'2025-05-09 21:03:41','Iure blanditiis atque inventore neque nemo dolor aspernatur autem qui enim voluptatibus.'),
(12,807,'2025-06-09 13:55:25','Provident corporis reiciendis vel ipsum facere odio commodi voluptatibus ipsa velit cupiditate repudiandae.'),
(13,451,'2025-04-27 13:36:55','Atque maxime deserunt eos reiciendis corporis.'),
(14,441,'2025-05-27 14:11:35','Excepturi perspiciatis quibusdam cupiditate expedita non impedit ad saepe optio reprehenderit corrupti.'),
(15,170,'2025-04-24 07:09:00','Cumque occaecati accusantium quisquam expedita tenetur quod.'),
(16,573,'2025-06-05 05:24:23','Minus doloremque in similique deleniti eligendi quo.'),
(17,279,'2025-04-30 03:15:23','Sint quaerat id ipsam non laborum voluptatibus aliquam soluta dolorum vero eaque.'),
(18,279,'2025-05-02 21:56:35','Ipsum repellat iste vero autem ipsam eaque commodi unde excepturi adipisci minima iusto.'),
(19,859,'2025-05-22 18:53:38','Commodi ipsum consectetur enim sed sit omnis nesciunt necessitatibus suscipit ipsam doloribus assumenda.'),
(20,969,'2025-05-15 21:53:16','Aut ullam cum rerum occaecati reiciendis voluptatibus ab omnis distinctio totam ipsa.'),
(21,807,'2025-04-18 02:14:48','Doloribus nostrum sint accusamus esse maxime.'),
(22,451,'2025-06-07 23:19:08','Voluptates dolorem facilis totam quaerat porro atque optio non est odit quae.'),
(23,436,'2025-05-01 09:50:36','Commodi quod impedit sequi dolor rem ullam molestiae laudantium aspernatur enim.'),
(24,525,'2025-05-07 14:33:07','Quisquam praesentium molestias voluptatibus blanditiis molestias asperiores facere soluta ex consequuntur reiciendis odio.'),
(25,713,'2025-04-20 11:17:56','Natus est incidunt facere aspernatur accusantium dolor quibusdam quo mollitia necessitatibus ad excepturi.'),
(26,581,'2025-05-28 08:31:26','Sequi corporis rem in nulla est tempore harum quod ex accusamus placeat.'),
(27,170,'2025-04-16 00:31:57','Eaque mollitia laudantium minima hic cum esse provident vel nisi.'),
(28,451,'2025-04-21 15:04:43','Odit officia quibusdam error aliquid ducimus quo vitae sed nisi.'),
(29,713,'2025-05-10 03:29:07','Soluta veritatis facilis occaecati et voluptatem.'),
(30,959,'2025-06-07 16:56:46','Qui aliquid est beatae recusandae rerum exercitationem corrupti velit aspernatur.'),
(31,750,'2025-06-07 10:19:10','Architecto id ipsa qui molestiae facere.'),
(32,451,'2025-05-20 08:04:04','Cum nemo praesentium tenetur quod voluptate corporis quaerat.'),
(33,488,'2025-06-05 06:29:15','Deserunt repellendus modi earum culpa recusandae quidem laudantium cumque impedit.'),
(34,581,'2025-04-20 03:01:06','Aut doloribus delectus earum natus ducimus assumenda quaerat quae aut impedit magnam suscipit.'),
(35,170,'2025-04-19 18:07:29','Aliquid quibusdam a ipsam iure quasi consequatur expedita eligendi.'),
(36,969,'2025-05-11 17:05:28','Nihil quis ea asperiores vitae esse suscipit pariatur deserunt nobis officia nisi omnis.'),
(37,268,'2025-06-08 07:29:35','Amet quas iusto amet non autem iusto neque.'),
(38,411,'2025-04-29 09:51:22','Odio culpa eius quis corrupti cum.'),
(39,279,'2025-05-23 10:29:57','Quam laudantium beatae nisi libero totam.'),
(40,447,'2025-05-09 14:57:17','Ducimus magni enim provident hic cum at natus reprehenderit voluptatum laborum vitae.'),
(41,525,'2025-05-20 00:36:37','Nobis magni hic iure tempore adipisci.'),
(42,525,'2025-05-02 01:23:45','Possimus voluptates inventore placeat rerum nostrum architecto autem a.'),
(43,581,'2025-06-02 08:25:44','Perspiciatis veniam repellendus odit provident architecto quaerat eligendi repellendus porro quae officia.'),
(44,170,'2025-05-01 04:30:59','Accusamus blanditiis vero adipisci alias ad quis ab dicta eaque suscipit.'),
(45,436,'2025-05-19 19:00:44','Mollitia maiores labore quae mollitia ipsum.'),
(46,436,'2025-05-21 04:36:13','Quaerat quos alias at nostrum dolore labore ratione distinctio aspernatur quisquam repudiandae.'),
(47,963,'2025-06-04 15:49:05','Autem cum adipisci ipsum magni cupiditate aspernatur.'),
(48,411,'2025-05-18 07:44:06','Modi corporis dolorum hic ipsum in ex eveniet facilis.'),
(49,170,'2025-06-02 00:49:26','Ex voluptate eos nam fugiat vitae.'),
(50,289,'2025-05-17 11:55:07','Vitae architecto delectus consectetur unde itaque excepturi.');
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
INSERT INTO `layanan_medis` (`id_rumah_sakit`, `id_layanan`, `nama_layanan`) VALUES (170,15,'vaksinasi'),
(170,16,'fisioterapi'),
(170,41,'fisioterapi'),
(268,29,'vaksinasi'),
(268,30,'fisioterapi'),
(268,44,'vaksinasi'),
(279,21,'vaksinasi'),
(279,22,'fisioterapi'),
(289,13,'vaksinasi'),
(289,14,'fisioterapi'),
(289,45,'vaksinasi'),
(411,17,'fisioterapi'),
(411,18,'vaksinasi'),
(436,33,'fisioterapi'),
(436,34,'vaksinasi'),
(441,31,'vaksinasi'),
(441,32,'fisioterapi'),
(441,43,'vaksinasi'),
(447,27,'fisioterapi'),
(447,28,'vaksinasi'),
(447,48,'vaksinasi'),
(451,39,'fisioterapi'),
(451,40,'vaksinasi'),
(488,9,'fisioterapi'),
(488,10,'vaksinasi'),
(525,37,'fisioterapi'),
(525,38,'vaksinasi'),
(525,46,'fisioterapi'),
(573,3,'vaksinasi'),
(573,4,'fisioterapi'),
(573,49,'vaksinasi'),
(581,11,'vaksinasi'),
(581,12,'fisioterapi'),
(581,47,'fisioterapi'),
(713,19,'fisioterapi'),
(713,20,'vaksinasi'),
(750,35,'vaksinasi'),
(750,36,'fisioterapi'),
(750,50,'vaksinasi'),
(807,1,'fisioterapi'),
(807,2,'vaksinasi'),
(859,23,'fisioterapi'),
(859,24,'vaksinasi'),
(959,7,'fisioterapi'),
(959,8,'vaksinasi'),
(959,42,'fisioterapi'),
(963,5,'fisioterapi'),
(963,6,'vaksinasi'),
(969,25,'fisioterapi'),
(969,26,'vaksinasi');
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
INSERT INTO `log_layanan` (`firmware_baymin`, `waktu_pengguna`, `jenis_tindakan`) VALUES (12862,'2025-02-05 01:57:19','unleash back-end e-business'),
(12862,'2025-02-16 16:32:38','streamline open-source content'),
(12862,'2025-03-04 13:38:34','reinvent 24/7 action-items'),
(12862,'2025-03-16 23:39:56','cultivate efficient networks'),
(12862,'2025-03-20 16:48:18','embrace revolutionary e-tailers'),
(12862,'2025-03-25 02:17:12','revolutionize dot-com mindshare'),
(12862,'2025-04-25 12:53:01','iterate efficient infrastructures'),
(12862,'2025-04-27 14:44:16','target synergistic communities'),
(21935,'2025-02-08 09:08:22','deliver open-source e-commerce'),
(21935,'2025-02-28 15:03:20','syndicate B2C interfaces'),
(21935,'2025-03-01 15:16:56','re-contextualize web-enabled web services'),
(21935,'2025-04-05 23:35:27','engage vertical methodologies'),
(21935,'2025-04-06 00:48:39','synergize virtual relationships'),
(21935,'2025-05-08 15:31:55','engage user-centric partnerships'),
(21935,'2025-05-15 00:39:41','implement dot-com vortals'),
(28378,'2025-04-26 17:09:40','leverage dot-com e-tailers'),
(32967,'2025-02-15 03:25:42','aggregate innovative partnerships'),
(32967,'2025-02-16 18:02:34','cultivate bricks-and-clicks e-markets'),
(32967,'2025-05-05 12:45:25','utilize 24/7 partnerships'),
(32967,'2025-05-07 16:34:29','facilitate end-to-end action-items'),
(56000,'2025-03-09 20:21:13','engineer value-added mindshare'),
(56000,'2025-03-29 04:06:45','matrix one-to-one methodologies'),
(56000,'2025-04-04 13:07:29','implement 24/7 portals'),
(56416,'2025-03-24 22:41:45','generate dot-com convergence'),
(56416,'2025-03-26 06:37:17','transition collaborative systems'),
(64399,'2025-01-20 19:26:56','integrate intuitive markets'),
(64399,'2025-01-24 22:31:53','re-contextualize world-class platforms'),
(64399,'2025-01-25 17:33:33','mesh out-of-the-box paradigms'),
(64399,'2025-02-01 21:43:01','architect ubiquitous bandwidth'),
(64399,'2025-02-28 04:51:41','re-intermediate next-generation communities'),
(64399,'2025-03-01 08:09:15','deploy killer info-mediaries'),
(64399,'2025-03-08 01:19:58','repurpose compelling convergence'),
(64399,'2025-04-11 21:25:47','harness back-end solutions'),
(64399,'2025-04-21 01:48:56','utilize interactive partnerships'),
(68698,'2025-01-02 04:48:39','grow cutting-edge platforms'),
(68698,'2025-02-12 21:16:47','re-intermediate interactive supply-chains'),
(68698,'2025-04-02 18:00:29','synthesize seamless channels'),
(68698,'2025-05-06 20:18:57','unleash frictionless platforms'),
(68698,'2025-05-12 01:22:05','orchestrate impactful models'),
(82605,'2025-01-16 17:22:25','leverage next-generation users'),
(82605,'2025-02-05 01:23:25','deliver back-end schemas'),
(82605,'2025-02-08 15:09:58','scale interactive methodologies'),
(82605,'2025-02-13 04:55:32','repurpose revolutionary e-business'),
(82605,'2025-03-05 05:59:52','grow cross-platform systems'),
(82605,'2025-03-20 01:44:48','reinvent collaborative functionalities'),
(82605,'2025-04-17 18:35:10','leverage leading-edge interfaces'),
(82605,'2025-04-24 07:56:06','mesh value-added supply-chains'),
(88400,'2025-01-30 21:21:31','facilitate dynamic architectures'),
(88400,'2025-03-14 23:06:41','productize B2B vortals'),
(88400,'2025-03-24 00:04:08','unleash strategic e-services');
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
INSERT INTO `melakukan_janji` (`email_pasien`, `id_janji_temu`, `email_tenaga_medis`, `id_rumah_sakit`) VALUES ('ckuswandari@example.com',25,'marpaungivan@example.com',713),
('ckuswandari@example.com',45,'yagustina@example.org',436),
('cnugroho@example.org',2,'mangunsongcahyanto@example.net',170),
('cnugroho@example.org',16,'martanikusumo@example.com',573),
('cnugroho@example.org',28,'yagustina@example.org',451),
('cnugroho@example.org',38,'martanikusumo@example.com',411),
('farhunnisafirmansyah@example.org',3,'marpaungivan@example.com',959),
('farhunnisafirmansyah@example.org',13,'marpaungivan@example.com',451),
('farhunnisafirmansyah@example.org',14,'hsusanti@example.net',441),
('farhunnisafirmansyah@example.org',23,'ulaksmiwati@example.com',436),
('farhunnisafirmansyah@example.org',31,'martanikusumo@example.com',750),
('farhunnisafirmansyah@example.org',31,'sakura22@example.org',750),
('farhunnisafirmansyah@example.org',35,'mangunsongcahyanto@example.net',170),
('jsafitri@example.com',19,'laksana39@example.org',859),
('jsafitri@example.com',24,'vputra@example.net',525),
('jsafitri@example.com',29,'vputra@example.net',713),
('jsafitri@example.com',43,'hsusanti@example.net',581),
('jsafitri@example.com',48,'hsusanti@example.net',411),
('jsafitri@example.com',49,'hsusanti@example.net',170),
('jsafitri@example.com',49,'vputra@example.net',170),
('luismustofa@example.com',5,'marpaungivan@example.com',447),
('luismustofa@example.com',48,'sakura22@example.org',411),
('msalahudin@example.org',2,'yagustina@example.org',170),
('msalahudin@example.org',22,'martanikusumo@example.com',451),
('msalahudin@example.org',27,'hsusanti@example.net',170),
('msalahudin@example.org',35,'mangunsongcahyanto@example.net',170),
('najmudinkarna@example.net',4,'santosoviolet@example.net',959),
('najmudinkarna@example.net',9,'martanikusumo@example.com',441),
('najmudinkarna@example.net',29,'laksana39@example.org',713),
('najmudinkarna@example.net',38,'martanikusumo@example.com',411),
('najmudinkarna@example.net',48,'laksana39@example.org',411),
('tugimanwidiastuti@example.net',7,'hsusanti@example.net',411),
('tugimanwidiastuti@example.net',14,'sakura22@example.org',441),
('tugimanwidiastuti@example.net',32,'vputra@example.net',451),
('tugimanwidiastuti@example.net',34,'laksana39@example.org',581),
('tugimanwidiastuti@example.net',39,'marpaungivan@example.com',279),
('tugimanwidiastuti@example.net',49,'sakura22@example.org',170),
('tugimanwidiastuti@example.net',50,'hsusanti@example.net',289),
('ypratiwi@example.org',3,'martanikusumo@example.com',959),
('ypratiwi@example.org',10,'martanikusumo@example.com',268),
('ypratiwi@example.org',27,'laksana39@example.org',170),
('ypratiwi@example.org',34,'santosoviolet@example.net',581),
('ypratiwi@example.org',39,'yagustina@example.org',279),
('ypratiwi@example.org',41,'santosoviolet@example.net',525),
('yuliantimutia@example.net',18,'ulaksmiwati@example.com',279),
('yuliantimutia@example.net',23,'marpaungivan@example.com',436),
('yuliantimutia@example.net',28,'ulaksmiwati@example.com',451),
('yuliantimutia@example.net',36,'sakura22@example.org',969),
('yuliantimutia@example.net',38,'santosoviolet@example.net',411),
('yuliantimutia@example.net',50,'mangunsongcahyanto@example.net',289);
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
INSERT INTO `obat` (`id_obat`, `label`) VALUES (31,'obat herbal'),
(697,'antibiotik'),
(995,'obat herbal'),
(1011,'obat herbal'),
(1346,'analgesik'),
(1410,'obat herbal'),
(2030,'antibiotik'),
(3447,'antibiotik'),
(3678,'antibiotik'),
(4285,'obat herbal'),
(4396,'antibiotik'),
(4973,'analgesik'),
(6072,'analgesik'),
(6454,'antibiotik'),
(6591,'obat herbal'),
(7530,'analgesik'),
(8570,'analgesik'),
(9077,'antibiotik'),
(9299,'obat herbal'),
(9980,'antibiotik');
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
INSERT INTO `pasien` (`email`, `firmware_baymin`) VALUES ('ckuswandari@example.com',56000),
('cnugroho@example.org',64399),
('farhunnisafirmansyah@example.org',56416),
('jsafitri@example.com',82605),
('luismustofa@example.com',68698),
('msalahudin@example.org',21935),
('najmudinkarna@example.net',12862),
('tugimanwidiastuti@example.net',28378),
('ypratiwi@example.org',32967),
('yuliantimutia@example.net',88400);
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
INSERT INTO `pemesanan_layanan` (`id_pemesanan`, `id_rumah_sakit`, `id_layanan`, `email`, `jenis_layanan`, `jadwal_pelaksanaan`, `status_pemesanan`, `total_biaya`) VALUES (1,750,36,'msalahudin@example.org','home care','2025-06-16','selesai',496785),
(2,525,38,'jsafitri@example.com','konsultasi dokter','2025-06-30','dibatalkan',364556),
(3,436,34,'jsafitri@example.com','home care','2025-05-28','selesai',444442),
(4,488,9,'tugimanwidiastuti@example.net','home care','2025-05-23','dijadwalkan',424741),
(5,170,15,'yuliantimutia@example.net','home care','2025-06-10','selesai',414468),
(6,436,34,'tugimanwidiastuti@example.net','home care','2025-06-02','dijadwalkan',870927),
(7,963,5,'cnugroho@example.org','tes laboratorium','2025-07-02','dibatalkan',125975),
(8,573,4,'ypratiwi@example.org','konsultasi dokter','2025-05-21','belum dibayar',830074),
(9,268,29,'ckuswandari@example.com','tes laboratorium','2025-05-30','belum dibayar',341056),
(10,447,28,'ckuswandari@example.com','tes radiologi','2025-06-02','dibatalkan',562363),
(11,859,23,'cnugroho@example.org','konsultasi dokter','2025-06-30','dibatalkan',902586),
(12,447,48,'najmudinkarna@example.net','tes radiologi','2025-05-31','selesai',916594),
(13,525,37,'tugimanwidiastuti@example.net','konsultasi dokter','2025-06-15','dibatalkan',494813),
(14,170,16,'ypratiwi@example.org','konsultasi dokter','2025-06-26','sedang berlangsung',853967),
(15,963,5,'jsafitri@example.com','konsultasi dokter','2025-06-02','sedang berlangsung',928120),
(16,969,25,'msalahudin@example.org','tes laboratorium','2025-07-11','selesai',640090),
(17,289,14,'msalahudin@example.org','tes radiologi','2025-05-24','dijadwalkan',376931),
(18,441,31,'yuliantimutia@example.net','home care','2025-06-10','selesai',667407),
(19,279,22,'farhunnisafirmansyah@example.org','konsultasi dokter','2025-05-19','belum dibayar',882139),
(20,170,16,'najmudinkarna@example.net','konsultasi dokter','2025-07-08','selesai',495308),
(21,447,48,'farhunnisafirmansyah@example.org','tes laboratorium','2025-06-29','dibatalkan',739800),
(22,289,45,'najmudinkarna@example.net','tes radiologi','2025-06-25','selesai',618895),
(23,969,25,'msalahudin@example.org','tes laboratorium','2025-05-15','selesai',999520),
(24,170,16,'ckuswandari@example.com','tes radiologi','2025-06-05','dibatalkan',898296),
(25,411,18,'cnugroho@example.org','tes radiologi','2025-06-17','dibatalkan',698742),
(26,713,19,'jsafitri@example.com','home care','2025-06-01','belum dibayar',933100),
(27,713,20,'yuliantimutia@example.net','home care','2025-06-01','selesai',122165),
(28,581,47,'tugimanwidiastuti@example.net','home care','2025-07-02','dijadwalkan',590879),
(29,581,12,'luismustofa@example.com','tes laboratorium','2025-06-26','dijadwalkan',297133),
(30,573,3,'najmudinkarna@example.net','tes laboratorium','2025-06-24','dibatalkan',405743),
(31,441,31,'msalahudin@example.org','tes radiologi','2025-06-12','selesai',278344),
(32,525,37,'ckuswandari@example.com','home care','2025-06-07','dijadwalkan',777872),
(33,581,12,'msalahudin@example.org','konsultasi dokter','2025-06-21','sedang berlangsung',986076),
(34,170,16,'ypratiwi@example.org','home care','2025-06-26','dibatalkan',952585),
(35,807,2,'farhunnisafirmansyah@example.org','tes radiologi','2025-07-01','selesai',299601),
(36,289,14,'jsafitri@example.com','home care','2025-06-29','dibatalkan',224983),
(37,289,13,'farhunnisafirmansyah@example.org','tes laboratorium','2025-05-23','dibatalkan',219638),
(38,581,47,'najmudinkarna@example.net','tes laboratorium','2025-06-11','selesai',722062),
(39,411,17,'msalahudin@example.org','tes radiologi','2025-05-16','dibatalkan',662617),
(40,959,7,'farhunnisafirmansyah@example.org','konsultasi dokter','2025-05-31','selesai',696840),
(41,963,5,'ypratiwi@example.org','home care','2025-06-18','sedang berlangsung',958264),
(42,436,34,'jsafitri@example.com','tes laboratorium','2025-06-06','dibatalkan',587989),
(43,170,41,'ckuswandari@example.com','tes laboratorium','2025-05-24','selesai',899700),
(44,573,4,'farhunnisafirmansyah@example.org','home care','2025-07-11','dibatalkan',287108),
(45,411,18,'jsafitri@example.com','tes laboratorium','2025-06-16','dijadwalkan',441669),
(46,750,50,'luismustofa@example.com','tes laboratorium','2025-07-04','dijadwalkan',66783),
(47,807,2,'luismustofa@example.com','tes laboratorium','2025-06-07','selesai',61060),
(48,289,14,'najmudinkarna@example.net','tes laboratorium','2025-06-12','sedang berlangsung',51266),
(49,525,46,'najmudinkarna@example.net','tes radiologi','2025-06-10','belum dibayar',117148),
(50,750,35,'yuliantimutia@example.net','tes radiologi','2025-06-14','dibatalkan',91552),
(51,959,8,'luismustofa@example.com','tes radiologi','2025-05-22','selesai',195522),
(52,170,41,'jsafitri@example.com','tes laboratorium','2025-06-03','sedang berlangsung',677474),
(53,963,5,'ckuswandari@example.com','tes radiologi','2025-05-16','sedang berlangsung',478978),
(54,279,21,'tugimanwidiastuti@example.net','tes laboratorium','2025-05-21','dibatalkan',892741),
(55,279,22,'luismustofa@example.com','konsultasi dokter','2025-06-05','selesai',493705),
(56,441,31,'jsafitri@example.com','home care','2025-05-18','sedang berlangsung',799087),
(57,807,1,'cnugroho@example.org','konsultasi dokter','2025-05-22','dibatalkan',386394),
(58,963,5,'cnugroho@example.org','konsultasi dokter','2025-06-12','belum dibayar',811680),
(59,573,49,'farhunnisafirmansyah@example.org','home care','2025-06-26','dijadwalkan',978534),
(60,268,30,'luismustofa@example.com','konsultasi dokter','2025-07-07','selesai',544725),
(61,451,39,'msalahudin@example.org','tes radiologi','2025-06-24','dibatalkan',458479),
(62,969,25,'ypratiwi@example.org','tes laboratorium','2025-05-19','dijadwalkan',556967),
(63,441,43,'msalahudin@example.org','konsultasi dokter','2025-07-12','sedang berlangsung',620391),
(64,581,11,'ckuswandari@example.com','home care','2025-06-26','sedang berlangsung',369310),
(65,279,21,'ypratiwi@example.org','tes radiologi','2025-06-30','selesai',155881),
(66,581,12,'yuliantimutia@example.net','tes laboratorium','2025-05-22','dibatalkan',749500),
(67,441,43,'ypratiwi@example.org','konsultasi dokter','2025-05-22','belum dibayar',206370),
(68,807,1,'luismustofa@example.com','tes laboratorium','2025-07-13','dibatalkan',595455),
(69,488,10,'ckuswandari@example.com','tes radiologi','2025-06-02','dijadwalkan',786772),
(70,859,24,'msalahudin@example.org','tes laboratorium','2025-05-22','selesai',748627),
(71,750,36,'msalahudin@example.org','home care','2025-06-01','dibatalkan',142933),
(72,447,27,'yuliantimutia@example.net','tes radiologi','2025-07-01','dibatalkan',256929),
(73,525,46,'najmudinkarna@example.net','konsultasi dokter','2025-05-21','selesai',797232),
(74,969,25,'najmudinkarna@example.net','konsultasi dokter','2025-07-02','belum dibayar',426067),
(75,959,8,'cnugroho@example.org','tes radiologi','2025-07-02','dibatalkan',707973),
(76,959,7,'ckuswandari@example.com','tes radiologi','2025-06-22','belum dibayar',172690),
(77,859,24,'msalahudin@example.org','tes laboratorium','2025-06-07','sedang berlangsung',771062),
(78,969,26,'luismustofa@example.com','tes radiologi','2025-05-27','dijadwalkan',659520),
(79,525,37,'msalahudin@example.org','tes laboratorium','2025-06-13','selesai',150539),
(80,525,38,'farhunnisafirmansyah@example.org','tes radiologi','2025-05-18','sedang berlangsung',742425),
(81,488,10,'farhunnisafirmansyah@example.org','tes laboratorium','2025-05-19','belum dibayar',168212),
(82,447,28,'tugimanwidiastuti@example.net','tes radiologi','2025-06-05','dijadwalkan',95360),
(83,959,42,'ypratiwi@example.org','tes laboratorium','2025-06-16','selesai',422432),
(84,268,29,'tugimanwidiastuti@example.net','konsultasi dokter','2025-06-20','dijadwalkan',571707),
(85,807,1,'farhunnisafirmansyah@example.org','tes radiologi','2025-06-29','selesai',648193),
(86,279,21,'ypratiwi@example.org','home care','2025-06-19','dibatalkan',91519),
(87,969,26,'tugimanwidiastuti@example.net','tes radiologi','2025-06-23','belum dibayar',242704),
(88,807,1,'najmudinkarna@example.net','tes radiologi','2025-05-31','dibatalkan',104398),
(89,859,23,'luismustofa@example.com','konsultasi dokter','2025-06-15','selesai',424367),
(90,713,20,'najmudinkarna@example.net','tes radiologi','2025-06-12','sedang berlangsung',241585),
(91,289,45,'ypratiwi@example.org','tes radiologi','2025-05-24','belum dibayar',268238),
(92,525,46,'ckuswandari@example.com','tes laboratorium','2025-06-18','dijadwalkan',293672),
(93,573,49,'cnugroho@example.org','konsultasi dokter','2025-06-06','sedang berlangsung',523807),
(94,279,21,'ypratiwi@example.org','home care','2025-06-03','belum dibayar',939535),
(95,750,35,'yuliantimutia@example.net','home care','2025-06-09','dibatalkan',431020),
(96,289,14,'yuliantimutia@example.net','konsultasi dokter','2025-06-04','selesai',75816),
(97,268,30,'cnugroho@example.org','konsultasi dokter','2025-05-28','belum dibayar',889697),
(98,959,42,'luismustofa@example.com','home care','2025-06-03','dibatalkan',508468),
(99,279,22,'luismustofa@example.com','tes radiologi','2025-06-03','dibatalkan',570008),
(100,969,26,'ckuswandari@example.com','tes laboratorium','2025-06-16','selesai',978140);
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
INSERT INTO `pemesanan_obat` (`email`, `waktu_pemesanan`, `alamat_pengiriman`, `status_pemesanan`, `total_biaya`) VALUES ('ckuswandari@example.com','2025-05-05 17:56:15','Jalan Abdul Muis No. 7, Pekalongan, Sulawesi Tengah 74738','sedang berlangsung',320767),
('ckuswandari@example.com','2025-05-06 04:27:29','Jl. Cikapayang No. 701, Pekalongan, Kalimantan Barat 72691','dibatalkan',403507),
('ckuswandari@example.com','2025-05-09 00:47:45','Gang R.E Martadinata No. 5, Samarinda, KU 08513','belum dibayar',395546),
('ckuswandari@example.com','2025-05-11 03:59:30','Jl. Ronggowarsito No. 5, Samarinda, KS 02022','selesai',78030),
('ckuswandari@example.com','2025-05-11 05:25:36','Jl. Waringin No. 287, Pematangsiantar, SR 08311','belum dibayar',65164),
('ckuswandari@example.com','2025-05-12 04:07:40','Jalan Peta No. 0, Subulussalam, DKI Jakarta 63579','belum dibayar',293189),
('cnugroho@example.org','2025-05-03 20:22:13','Gg. Ciumbuleuit No. 12, Tangerang Selatan, DKI Jakarta 54042','sedang berlangsung',242961),
('cnugroho@example.org','2025-05-05 01:06:28','Jl. Ronggowarsito No. 5, Sukabumi, Sulawesi Tengah 49317','selesai',247873),
('cnugroho@example.org','2025-05-06 06:29:10','Gang Ir. H. Djuanda No. 0, Mojokerto, Maluku Utara 77695','dijadwalkan',417376),
('cnugroho@example.org','2025-05-07 02:18:40','Gang Siliwangi No. 49, Batu, Nusa Tenggara Barat 87703','selesai',66306),
('cnugroho@example.org','2025-05-07 14:03:33','Gg. Indragiri No. 39, Langsa, Sulawesi Utara 65212','sedang berlangsung',45306),
('cnugroho@example.org','2025-05-15 01:19:31','Gang Asia Afrika No. 7, Subulussalam, Maluku 39518','selesai',158897),
('cnugroho@example.org','2025-05-15 09:32:04','Gg. Stasiun Wonokromo No. 706, Sabang, SR 14668','sedang berlangsung',25096),
('farhunnisafirmansyah@example.org','2025-05-11 03:54:24','Jalan Medokan Ayu No. 32, Tidore Kepulauan, SR 10842','selesai',434268),
('farhunnisafirmansyah@example.org','2025-05-14 03:10:08','Gg. Dr. Djunjunan No. 91, Madiun, Nusa Tenggara Timur 92358','selesai',349713),
('jsafitri@example.com','2025-05-06 06:28:56','Jalan Dipatiukur No. 253, Semarang, Lampung 85342','sedang berlangsung',322276),
('luismustofa@example.com','2025-05-01 03:26:48','Jl. H.J Maemunah No. 313, Jayapura, SU 98583','belum dibayar',410322),
('luismustofa@example.com','2025-05-05 11:20:34','Jalan Kutisari Selatan No. 352, Tasikmalaya, BE 49001','selesai',362914),
('luismustofa@example.com','2025-05-06 20:23:59','Gg. Pelajar Pejuang No. 4, Tanjungbalai, Kalimantan Utara 13430','sedang berlangsung',39450),
('luismustofa@example.com','2025-05-11 01:56:20','Jalan Cempaka No. 685, Palopo, SG 45817','belum dibayar',153870),
('luismustofa@example.com','2025-05-14 07:08:12','Gg. Pacuan Kuda No. 30, Jambi, SU 32889','selesai',164213),
('luismustofa@example.com','2025-05-15 01:27:58','Gg. Ahmad Dahlan No. 63, Banjarbaru, Sumatera Barat 49944','dijadwalkan',44745),
('msalahudin@example.org','2025-05-02 00:37:06','Jl. Stasiun Wonokromo No. 057, Kotamobagu, MU 97355','sedang berlangsung',414181),
('msalahudin@example.org','2025-05-02 01:15:16','Gang S. Parman No. 2, Tomohon, SN 04393','selesai',162019),
('msalahudin@example.org','2025-05-02 22:16:16','Gg. Cempaka No. 493, Pasuruan, JT 51636','dibatalkan',74315),
('msalahudin@example.org','2025-05-08 06:13:06','Gang Tebet Barat Dalam No. 3, Madiun, DKI Jakarta 27759','dibatalkan',190406),
('msalahudin@example.org','2025-05-10 06:17:33','Gang HOS. Cokroaminoto No. 07, Tarakan, SS 08888','dijadwalkan',172494),
('msalahudin@example.org','2025-05-14 14:42:33','Jl. Sukabumi No. 3, Tanjungbalai, Kalimantan Barat 31483','belum dibayar',21764),
('msalahudin@example.org','2025-05-14 20:13:14','Gg. Pasirkoja No. 8, Makassar, ST 46140','dijadwalkan',171841),
('msalahudin@example.org','2025-05-15 03:08:02','Jalan R.E Martadinata No. 6, Pontianak, SU 75857','selesai',290281),
('najmudinkarna@example.net','2025-05-04 10:31:05','Gang Indragiri No. 14, Pagaralam, NT 15884','dibatalkan',433040),
('najmudinkarna@example.net','2025-05-05 09:06:17','Jl. Otto Iskandardinata No. 26, Tangerang Selatan, Kepulauan Bangka Belitung 69332','dijadwalkan',353048),
('najmudinkarna@example.net','2025-05-10 04:32:39','Gg. S. Parman No. 296, Sibolga, BB 63233','dibatalkan',83924),
('najmudinkarna@example.net','2025-05-12 23:27:53','Jalan Peta No. 882, Tidore Kepulauan, Jawa Barat 06106','dibatalkan',268279),
('najmudinkarna@example.net','2025-05-15 01:13:57','Jalan Rajawali Barat No. 602, Tidore Kepulauan, Sumatera Barat 55519','sedang berlangsung',245241),
('tugimanwidiastuti@example.net','2025-05-02 15:48:14','Gg. Moch. Toha No. 64, Bengkulu, Kalimantan Utara 69099','dibatalkan',189511),
('tugimanwidiastuti@example.net','2025-05-06 07:07:08','Jalan Sadang Serang No. 1, Pangkalpinang, Riau 21558','belum dibayar',144629),
('tugimanwidiastuti@example.net','2025-05-08 13:56:10','Jalan Peta No. 36, Bandar Lampung, Riau 49747','dijadwalkan',267260),
('tugimanwidiastuti@example.net','2025-05-11 02:02:56','Gg. Ahmad Dahlan No. 984, Sungai Penuh, Jawa Tengah 42859','belum dibayar',310900),
('tugimanwidiastuti@example.net','2025-05-14 03:50:37','Gang Pelajar Pejuang No. 098, Salatiga, BT 04978','selesai',350163),
('ypratiwi@example.org','2025-05-01 22:11:15','Jl. Tebet Barat Dalam No. 033, Tanjungbalai, Gorontalo 69053','dijadwalkan',249808),
('ypratiwi@example.org','2025-05-02 04:50:34','Gang Rungkut Industri No. 80, Lhokseumawe, Jawa Timur 34225','sedang berlangsung',86040),
('ypratiwi@example.org','2025-05-04 10:13:54','Jl. Otto Iskandardinata No. 6, Kota Administrasi Jakarta Timur, BE 60933','dijadwalkan',141202),
('ypratiwi@example.org','2025-05-06 15:04:24','Jalan Cikapayang No. 85, Samarinda, Riau 05096','selesai',275805),
('ypratiwi@example.org','2025-05-10 23:45:24','Jalan Siliwangi No. 813, Tarakan, AC 03820','belum dibayar',371020),
('ypratiwi@example.org','2025-05-11 10:38:41','Gg. Monginsidi No. 4, Lubuklinggau, Kepulauan Bangka Belitung 85321','belum dibayar',413208),
('yuliantimutia@example.net','2025-05-01 00:49:05','Gang Jend. Sudirman No. 74, Singkawang, BA 34833','dibatalkan',376190),
('yuliantimutia@example.net','2025-05-09 03:09:52','Gg. Soekarno Hatta No. 57, Tanjungbalai, SN 28362','sedang berlangsung',211163),
('yuliantimutia@example.net','2025-05-11 12:30:14','Gg. Kutai No. 015, Pangkalpinang, Sumatera Selatan 12458','dijadwalkan',367618),
('yuliantimutia@example.net','2025-05-12 09:18:06','Jl. Cempaka No. 9, Kendari, Kalimantan Barat 20431','dibatalkan',316230);
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
INSERT INTO `pemesanan_obat_obat` (`email`, `waktu_pemesanan`, `alamat_pengiriman`, `id_obat`) VALUES ('ckuswandari@example.com','2025-05-05 17:56:15','Jalan Abdul Muis No. 7, Pekalongan, Sulawesi Tengah 74738',4396),
('ckuswandari@example.com','2025-05-06 04:27:29','Jl. Cikapayang No. 701, Pekalongan, Kalimantan Barat 72691',4973),
('ckuswandari@example.com','2025-05-09 00:47:45','Gang R.E Martadinata No. 5, Samarinda, KU 08513',3447),
('ckuswandari@example.com','2025-05-09 00:47:45','Gang R.E Martadinata No. 5, Samarinda, KU 08513',3678),
('ckuswandari@example.com','2025-05-11 03:59:30','Jl. Ronggowarsito No. 5, Samarinda, KS 02022',1410),
('ckuswandari@example.com','2025-05-11 03:59:30','Jl. Ronggowarsito No. 5, Samarinda, KS 02022',8570),
('ckuswandari@example.com','2025-05-11 05:25:36','Jl. Waringin No. 287, Pematangsiantar, SR 08311',3447),
('ckuswandari@example.com','2025-05-11 05:25:36','Jl. Waringin No. 287, Pematangsiantar, SR 08311',4396),
('ckuswandari@example.com','2025-05-12 04:07:40','Jalan Peta No. 0, Subulussalam, DKI Jakarta 63579',995),
('ckuswandari@example.com','2025-05-12 04:07:40','Jalan Peta No. 0, Subulussalam, DKI Jakarta 63579',1346),
('cnugroho@example.org','2025-05-03 20:22:13','Gg. Ciumbuleuit No. 12, Tangerang Selatan, DKI Jakarta 54042',995),
('cnugroho@example.org','2025-05-03 20:22:13','Gg. Ciumbuleuit No. 12, Tangerang Selatan, DKI Jakarta 54042',9299),
('cnugroho@example.org','2025-05-05 01:06:28','Jl. Ronggowarsito No. 5, Sukabumi, Sulawesi Tengah 49317',995),
('cnugroho@example.org','2025-05-05 01:06:28','Jl. Ronggowarsito No. 5, Sukabumi, Sulawesi Tengah 49317',9299),
('cnugroho@example.org','2025-05-06 06:29:10','Gang Ir. H. Djuanda No. 0, Mojokerto, Maluku Utara 77695',2030),
('cnugroho@example.org','2025-05-06 06:29:10','Gang Ir. H. Djuanda No. 0, Mojokerto, Maluku Utara 77695',3678),
('cnugroho@example.org','2025-05-07 02:18:40','Gang Siliwangi No. 49, Batu, Nusa Tenggara Barat 87703',1410),
('cnugroho@example.org','2025-05-07 02:18:40','Gang Siliwangi No. 49, Batu, Nusa Tenggara Barat 87703',9980),
('cnugroho@example.org','2025-05-07 14:03:33','Gg. Indragiri No. 39, Langsa, Sulawesi Utara 65212',1011),
('cnugroho@example.org','2025-05-07 14:03:33','Gg. Indragiri No. 39, Langsa, Sulawesi Utara 65212',9299),
('cnugroho@example.org','2025-05-15 01:19:31','Gang Asia Afrika No. 7, Subulussalam, Maluku 39518',3447),
('cnugroho@example.org','2025-05-15 01:19:31','Gang Asia Afrika No. 7, Subulussalam, Maluku 39518',9299),
('cnugroho@example.org','2025-05-15 09:32:04','Gg. Stasiun Wonokromo No. 706, Sabang, SR 14668',4396),
('cnugroho@example.org','2025-05-15 09:32:04','Gg. Stasiun Wonokromo No. 706, Sabang, SR 14668',6072),
('farhunnisafirmansyah@example.org','2025-05-11 03:54:24','Jalan Medokan Ayu No. 32, Tidore Kepulauan, SR 10842',3678),
('farhunnisafirmansyah@example.org','2025-05-11 03:54:24','Jalan Medokan Ayu No. 32, Tidore Kepulauan, SR 10842',4285),
('farhunnisafirmansyah@example.org','2025-05-14 03:10:08','Gg. Dr. Djunjunan No. 91, Madiun, Nusa Tenggara Timur 92358',3447),
('farhunnisafirmansyah@example.org','2025-05-14 03:10:08','Gg. Dr. Djunjunan No. 91, Madiun, Nusa Tenggara Timur 92358',9980),
('jsafitri@example.com','2025-05-06 06:28:56','Jalan Dipatiukur No. 253, Semarang, Lampung 85342',1011),
('jsafitri@example.com','2025-05-06 06:28:56','Jalan Dipatiukur No. 253, Semarang, Lampung 85342',3678),
('luismustofa@example.com','2025-05-01 03:26:48','Jl. H.J Maemunah No. 313, Jayapura, SU 98583',7530),
('luismustofa@example.com','2025-05-01 03:26:48','Jl. H.J Maemunah No. 313, Jayapura, SU 98583',9077),
('luismustofa@example.com','2025-05-05 11:20:34','Jalan Kutisari Selatan No. 352, Tasikmalaya, BE 49001',1346),
('luismustofa@example.com','2025-05-05 11:20:34','Jalan Kutisari Selatan No. 352, Tasikmalaya, BE 49001',6591),
('luismustofa@example.com','2025-05-06 20:23:59','Gg. Pelajar Pejuang No. 4, Tanjungbalai, Kalimantan Utara 13430',995),
('luismustofa@example.com','2025-05-06 20:23:59','Gg. Pelajar Pejuang No. 4, Tanjungbalai, Kalimantan Utara 13430',6454),
('luismustofa@example.com','2025-05-11 01:56:20','Jalan Cempaka No. 685, Palopo, SG 45817',1346),
('luismustofa@example.com','2025-05-11 01:56:20','Jalan Cempaka No. 685, Palopo, SG 45817',1410),
('luismustofa@example.com','2025-05-14 07:08:12','Gg. Pacuan Kuda No. 30, Jambi, SU 32889',3678),
('luismustofa@example.com','2025-05-14 07:08:12','Gg. Pacuan Kuda No. 30, Jambi, SU 32889',4396),
('luismustofa@example.com','2025-05-15 01:27:58','Gg. Ahmad Dahlan No. 63, Banjarbaru, Sumatera Barat 49944',1011),
('luismustofa@example.com','2025-05-15 01:27:58','Gg. Ahmad Dahlan No. 63, Banjarbaru, Sumatera Barat 49944',4285),
('msalahudin@example.org','2025-05-02 00:37:06','Jl. Stasiun Wonokromo No. 057, Kotamobagu, MU 97355',4396),
('msalahudin@example.org','2025-05-02 00:37:06','Jl. Stasiun Wonokromo No. 057, Kotamobagu, MU 97355',9980),
('msalahudin@example.org','2025-05-02 01:15:16','Gang S. Parman No. 2, Tomohon, SN 04393',2030),
('msalahudin@example.org','2025-05-02 22:16:16','Gg. Cempaka No. 493, Pasuruan, JT 51636',995),
('msalahudin@example.org','2025-05-02 22:16:16','Gg. Cempaka No. 493, Pasuruan, JT 51636',6591),
('msalahudin@example.org','2025-05-08 06:13:06','Gang Tebet Barat Dalam No. 3, Madiun, DKI Jakarta 27759',1410),
('msalahudin@example.org','2025-05-08 06:13:06','Gang Tebet Barat Dalam No. 3, Madiun, DKI Jakarta 27759',9299),
('msalahudin@example.org','2025-05-10 06:17:33','Gang HOS. Cokroaminoto No. 07, Tarakan, SS 08888',1011),
('msalahudin@example.org','2025-05-10 06:17:33','Gang HOS. Cokroaminoto No. 07, Tarakan, SS 08888',8570),
('msalahudin@example.org','2025-05-14 14:42:33','Jl. Sukabumi No. 3, Tanjungbalai, Kalimantan Barat 31483',995),
('msalahudin@example.org','2025-05-14 14:42:33','Jl. Sukabumi No. 3, Tanjungbalai, Kalimantan Barat 31483',1011),
('msalahudin@example.org','2025-05-14 20:13:14','Gg. Pasirkoja No. 8, Makassar, ST 46140',6591),
('msalahudin@example.org','2025-05-14 20:13:14','Gg. Pasirkoja No. 8, Makassar, ST 46140',9980),
('msalahudin@example.org','2025-05-15 03:08:02','Jalan R.E Martadinata No. 6, Pontianak, SU 75857',31),
('msalahudin@example.org','2025-05-15 03:08:02','Jalan R.E Martadinata No. 6, Pontianak, SU 75857',2030),
('najmudinkarna@example.net','2025-05-04 10:31:05','Gang Indragiri No. 14, Pagaralam, NT 15884',3678),
('najmudinkarna@example.net','2025-05-04 10:31:05','Gang Indragiri No. 14, Pagaralam, NT 15884',6072),
('najmudinkarna@example.net','2025-05-05 09:06:17','Jl. Otto Iskandardinata No. 26, Tangerang Selatan, Kepulauan Bangka Belitung 69332',1346),
('najmudinkarna@example.net','2025-05-05 09:06:17','Jl. Otto Iskandardinata No. 26, Tangerang Selatan, Kepulauan Bangka Belitung 69332',9299),
('najmudinkarna@example.net','2025-05-10 04:32:39','Gg. S. Parman No. 296, Sibolga, BB 63233',2030),
('najmudinkarna@example.net','2025-05-10 04:32:39','Gg. S. Parman No. 296, Sibolga, BB 63233',8570),
('najmudinkarna@example.net','2025-05-12 23:27:53','Jalan Peta No. 882, Tidore Kepulauan, Jawa Barat 06106',1346),
('najmudinkarna@example.net','2025-05-12 23:27:53','Jalan Peta No. 882, Tidore Kepulauan, Jawa Barat 06106',9299),
('najmudinkarna@example.net','2025-05-15 01:13:57','Jalan Rajawali Barat No. 602, Tidore Kepulauan, Sumatera Barat 55519',1011),
('najmudinkarna@example.net','2025-05-15 01:13:57','Jalan Rajawali Barat No. 602, Tidore Kepulauan, Sumatera Barat 55519',8570),
('tugimanwidiastuti@example.net','2025-05-02 15:48:14','Gg. Moch. Toha No. 64, Bengkulu, Kalimantan Utara 69099',697),
('tugimanwidiastuti@example.net','2025-05-02 15:48:14','Gg. Moch. Toha No. 64, Bengkulu, Kalimantan Utara 69099',1346),
('tugimanwidiastuti@example.net','2025-05-06 07:07:08','Jalan Sadang Serang No. 1, Pangkalpinang, Riau 21558',31),
('tugimanwidiastuti@example.net','2025-05-06 07:07:08','Jalan Sadang Serang No. 1, Pangkalpinang, Riau 21558',6454),
('tugimanwidiastuti@example.net','2025-05-08 13:56:10','Jalan Peta No. 36, Bandar Lampung, Riau 49747',1410),
('tugimanwidiastuti@example.net','2025-05-08 13:56:10','Jalan Peta No. 36, Bandar Lampung, Riau 49747',9980),
('tugimanwidiastuti@example.net','2025-05-11 02:02:56','Gg. Ahmad Dahlan No. 984, Sungai Penuh, Jawa Tengah 42859',697),
('tugimanwidiastuti@example.net','2025-05-11 02:02:56','Gg. Ahmad Dahlan No. 984, Sungai Penuh, Jawa Tengah 42859',6591),
('tugimanwidiastuti@example.net','2025-05-14 03:50:37','Gang Pelajar Pejuang No. 098, Salatiga, BT 04978',4285),
('tugimanwidiastuti@example.net','2025-05-14 03:50:37','Gang Pelajar Pejuang No. 098, Salatiga, BT 04978',9299),
('ypratiwi@example.org','2025-05-01 22:11:15','Jl. Tebet Barat Dalam No. 033, Tanjungbalai, Gorontalo 69053',4285),
('ypratiwi@example.org','2025-05-01 22:11:15','Jl. Tebet Barat Dalam No. 033, Tanjungbalai, Gorontalo 69053',4973),
('ypratiwi@example.org','2025-05-02 04:50:34','Gang Rungkut Industri No. 80, Lhokseumawe, Jawa Timur 34225',6072),
('ypratiwi@example.org','2025-05-02 04:50:34','Gang Rungkut Industri No. 80, Lhokseumawe, Jawa Timur 34225',6591),
('ypratiwi@example.org','2025-05-04 10:13:54','Jl. Otto Iskandardinata No. 6, Kota Administrasi Jakarta Timur, BE 60933',697),
('ypratiwi@example.org','2025-05-04 10:13:54','Jl. Otto Iskandardinata No. 6, Kota Administrasi Jakarta Timur, BE 60933',8570),
('ypratiwi@example.org','2025-05-06 15:04:24','Jalan Cikapayang No. 85, Samarinda, Riau 05096',3678),
('ypratiwi@example.org','2025-05-06 15:04:24','Jalan Cikapayang No. 85, Samarinda, Riau 05096',4285),
('ypratiwi@example.org','2025-05-10 23:45:24','Jalan Siliwangi No. 813, Tarakan, AC 03820',697),
('ypratiwi@example.org','2025-05-10 23:45:24','Jalan Siliwangi No. 813, Tarakan, AC 03820',6072),
('ypratiwi@example.org','2025-05-11 10:38:41','Gg. Monginsidi No. 4, Lubuklinggau, Kepulauan Bangka Belitung 85321',1011),
('ypratiwi@example.org','2025-05-11 10:38:41','Gg. Monginsidi No. 4, Lubuklinggau, Kepulauan Bangka Belitung 85321',9077),
('yuliantimutia@example.net','2025-05-01 00:49:05','Gang Jend. Sudirman No. 74, Singkawang, BA 34833',1410),
('yuliantimutia@example.net','2025-05-01 00:49:05','Gang Jend. Sudirman No. 74, Singkawang, BA 34833',6072),
('yuliantimutia@example.net','2025-05-09 03:09:52','Gg. Soekarno Hatta No. 57, Tanjungbalai, SN 28362',6454),
('yuliantimutia@example.net','2025-05-09 03:09:52','Gg. Soekarno Hatta No. 57, Tanjungbalai, SN 28362',8570),
('yuliantimutia@example.net','2025-05-11 12:30:14','Gg. Kutai No. 015, Pangkalpinang, Sumatera Selatan 12458',1011),
('yuliantimutia@example.net','2025-05-11 12:30:14','Gg. Kutai No. 015, Pangkalpinang, Sumatera Selatan 12458',9077),
('yuliantimutia@example.net','2025-05-12 09:18:06','Jl. Cempaka No. 9, Kendari, Kalimantan Barat 20431',697),
('yuliantimutia@example.net','2025-05-12 09:18:06','Jl. Cempaka No. 9, Kendari, Kalimantan Barat 20431',8570);
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
INSERT INTO `pengeluaran_resep` (`id_janji_temu`, `id_rumah_sakit`, `id_resep`) VALUES (1,807,33806),
(2,170,45157),
(3,959,25443),
(4,959,47128),
(5,447,4216),
(6,488,49346),
(10,268,40972),
(11,807,30283),
(12,807,39513),
(13,451,27835),
(15,170,9001),
(16,573,29379),
(17,279,15371),
(18,279,18407),
(19,859,25051),
(21,807,48539),
(22,451,14315),
(23,436,3070),
(24,525,4067),
(28,451,36607),
(30,959,42939),
(31,750,42396),
(32,451,40334),
(34,581,34942),
(36,969,37491),
(37,268,21527),
(38,411,22464),
(40,447,45107),
(43,581,1456),
(44,170,4962),
(46,436,35626),
(49,170,46430),
(50,289,32345);
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
INSERT INTO `pengguna` (`email`, `kata_sandi`, `nama_lengkap`, `tanggal_lahir`, `usia`) VALUES ('ckuswandari@example.com','+IQeEilY2uxd','Dr. Faizah Santoso, S.Pd','1977-11-29',47),
('cnugroho@example.org','$pFkhd*nfV7D','Raina Siregar, S.E.I','1957-06-27',67),
('farhunnisafirmansyah@example.org','^$0ehjI&*QsK','Pandu Novitasari, S.Ked','1958-04-14',67),
('hsusanti@example.net','+*7l*SrKL*IQ','Dr. Taufik Haryanti, S.I.Kom','1964-12-30',60),
('jsafitri@example.com','_^70XlKrb_3W','Oman Hariyah','1980-09-18',44),
('laksana39@example.org','i72&+xzzAOaT','Ir. Tugiman Gunawan, M.Ak','2000-11-25',24),
('luismustofa@example.com','@p9HsyV5oZEA','Raisa Agustina','1957-11-21',67),
('mangunsongcahyanto@example.net','s$NGgZm8tg2*','Rusman Wasita','2004-08-29',20),
('marpaungivan@example.com','3!zOvRrP_QoS','R.M. Heryanto Novitasari, M.Farm','1979-12-31',45),
('martanikusumo@example.com','Wv5Du8p+0)&L','Fathonah Laksita','1959-08-22',65),
('msalahudin@example.org','n60+v7Iu!+s(','Bakijan Habibi','1979-09-27',45),
('najmudinkarna@example.net','_Q4rbnO@DXH2','Laras Nasyidah','1965-04-04',60),
('sakura22@example.org','ZySXns3U(78B','Hartaka Samosir','1983-04-23',42),
('santosoviolet@example.net','s&&0MamR)t8I','Unjani Thamrin','1975-11-12',49),
('tugimanwidiastuti@example.net','H2uuEAor!o5b','Laila Rajata','1973-05-15',52),
('ulaksmiwati@example.com','KEm@gsYou(u2','Patricia Pradipta, M.M.','2001-01-15',24),
('vputra@example.net',')%j78cu)f7DY','Hasna Nababan, S.E.','1986-12-30',38),
('yagustina@example.org','Bq6*MeLk^A0s','Dina Sihotang, S.Sos','1988-09-18',36),
('ypratiwi@example.org','j&&VFPbxhJt1','Hj. Aisyah Sihombing','1996-05-07',29),
('yuliantimutia@example.net','LU#2tIAip#8t','Unjani Wijayanti','1972-06-25',52);
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
INSERT INTO `resep_obat` (`id_obat`, `id_resep`, `dosis`, `cara_pakai`) VALUES (31,3070,'1x sehari 1 tablet','Saat makan'),
(697,4067,'3x sehari 2 tablet','Sesudah makan'),
(697,25051,'1x sehari 2 tablet','Sesudah makan'),
(697,25443,'2x sehari 2 tablet','Sebelum makan'),
(697,32345,'3x sehari 1 tablet','Sebelum makan'),
(697,35626,'1x sehari 1 tablet','Saat makan'),
(697,37491,'3x sehari 2 tablet','Sesudah makan'),
(697,42939,'2x sehari 2 tablet','Saat makan'),
(697,45157,'2x sehari 2 tablet','Sesudah makan'),
(995,4067,'1x sehari 1 tablet','Sebelum makan'),
(995,22464,'3x sehari 2 tablet','Saat makan'),
(995,32345,'3x sehari 2 tablet','Saat makan'),
(995,39513,'2x sehari 2 tablet','Saat makan'),
(1011,3070,'2x sehari 1 tablet','Saat makan'),
(1011,4067,'2x sehari 1 tablet','Sesudah makan'),
(1011,15371,'1x sehari 2 tablet','Sebelum makan'),
(1011,22464,'3x sehari 1 tablet','Saat makan'),
(1011,30283,'2x sehari 1 tablet','Sesudah makan'),
(1011,32345,'1x sehari 2 tablet','Saat makan'),
(1011,34942,'2x sehari 1 tablet','Sebelum makan'),
(1011,35626,'3x sehari 2 tablet','Sebelum makan'),
(1011,40334,'3x sehari 2 tablet','Saat makan'),
(1011,40972,'2x sehari 1 tablet','Saat makan'),
(1011,42939,'1x sehari 2 tablet','Saat makan'),
(1011,49346,'3x sehari 2 tablet','Saat makan'),
(1346,1456,'3x sehari 1 tablet','Sesudah makan'),
(1346,4962,'1x sehari 1 tablet','Sesudah makan'),
(1346,14315,'2x sehari 1 tablet','Sebelum makan'),
(1346,46430,'3x sehari 1 tablet','Sesudah makan'),
(1410,48539,'2x sehari 2 tablet','Sesudah makan'),
(2030,18407,'3x sehari 2 tablet','Sesudah makan'),
(2030,21527,'2x sehari 1 tablet','Saat makan'),
(2030,36607,'1x sehari 1 tablet','Saat makan'),
(2030,37491,'3x sehari 2 tablet','Saat makan'),
(2030,39513,'3x sehari 2 tablet','Sesudah makan'),
(2030,40334,'1x sehari 1 tablet','Sesudah makan'),
(2030,42939,'1x sehari 1 tablet','Saat makan'),
(2030,49346,'1x sehari 1 tablet','Sebelum makan'),
(3447,1456,'2x sehari 2 tablet','Sesudah makan'),
(3447,9001,'2x sehari 2 tablet','Saat makan'),
(3447,22464,'3x sehari 1 tablet','Sesudah makan'),
(3447,29379,'2x sehari 2 tablet','Sesudah makan'),
(3447,42396,'3x sehari 2 tablet','Sesudah makan'),
(3678,18407,'2x sehari 1 tablet','Sesudah makan'),
(3678,34942,'2x sehari 1 tablet','Sebelum makan'),
(4285,4216,'3x sehari 2 tablet','Saat makan'),
(4285,14315,'1x sehari 1 tablet','Sesudah makan'),
(4285,18407,'2x sehari 2 tablet','Sesudah makan'),
(4285,21527,'3x sehari 1 tablet','Sebelum makan'),
(4285,36607,'1x sehari 2 tablet','Saat makan'),
(4285,45107,'3x sehari 1 tablet','Sesudah makan'),
(4285,49346,'1x sehari 2 tablet','Saat makan'),
(4396,25443,'2x sehari 2 tablet','Sebelum makan'),
(4396,35626,'2x sehari 1 tablet','Saat makan'),
(4396,42396,'3x sehari 1 tablet','Sesudah makan'),
(4396,48539,'2x sehari 2 tablet','Saat makan'),
(4973,29379,'2x sehari 1 tablet','Saat makan'),
(4973,42939,'2x sehari 2 tablet','Sesudah makan'),
(6072,1456,'1x sehari 2 tablet','Sesudah makan'),
(6072,4962,'2x sehari 1 tablet','Saat makan'),
(6072,25051,'2x sehari 2 tablet','Sebelum makan'),
(6072,25443,'1x sehari 1 tablet','Saat makan'),
(6072,33806,'3x sehari 2 tablet','Sesudah makan'),
(6072,37491,'1x sehari 2 tablet','Sesudah makan'),
(6454,9001,'1x sehari 1 tablet','Sebelum makan'),
(6454,27835,'3x sehari 2 tablet','Sebelum makan'),
(6454,30283,'2x sehari 1 tablet','Saat makan'),
(6454,42939,'3x sehari 1 tablet','Sebelum makan'),
(6454,47128,'2x sehari 2 tablet','Saat makan'),
(6591,14315,'1x sehari 1 tablet','Sesudah makan'),
(6591,30283,'2x sehari 2 tablet','Sesudah makan'),
(6591,45157,'2x sehari 2 tablet','Sebelum makan'),
(7530,4962,'2x sehari 1 tablet','Saat makan'),
(7530,40972,'1x sehari 1 tablet','Saat makan'),
(7530,42396,'1x sehari 2 tablet','Saat makan'),
(8570,27835,'3x sehari 2 tablet','Saat makan'),
(8570,40334,'3x sehari 2 tablet','Sesudah makan'),
(8570,47128,'2x sehari 2 tablet','Sebelum makan'),
(9077,15371,'1x sehari 1 tablet','Saat makan'),
(9077,21527,'1x sehari 1 tablet','Sesudah makan'),
(9077,25051,'1x sehari 2 tablet','Sebelum makan'),
(9077,35626,'3x sehari 1 tablet','Sebelum makan'),
(9077,37491,'1x sehari 1 tablet','Sesudah makan'),
(9077,45107,'2x sehari 2 tablet','Saat makan'),
(9299,3070,'3x sehari 1 tablet','Saat makan'),
(9299,4216,'2x sehari 1 tablet','Sebelum makan'),
(9299,33806,'2x sehari 1 tablet','Sesudah makan'),
(9299,36607,'3x sehari 2 tablet','Sesudah makan'),
(9299,40972,'1x sehari 2 tablet','Sebelum makan'),
(9299,45107,'1x sehari 1 tablet','Sesudah makan'),
(9299,46430,'3x sehari 2 tablet','Saat makan'),
(9299,47128,'1x sehari 2 tablet','Saat makan'),
(9980,18407,'3x sehari 1 tablet','Saat makan'),
(9980,21527,'1x sehari 1 tablet','Sesudah makan'),
(9980,29379,'1x sehari 1 tablet','Saat makan'),
(9980,37491,'3x sehari 1 tablet','Saat makan');
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
INSERT INTO `rumah_sakit` (`id_rumah_sakit`, `nama_rumah_sakit`, `provinsi`, `kota`, `jalan`) VALUES (170,'RS (Persero) Tbk Pangkalpinang','Nusa Tenggara Barat','Bengkulu','Gg. Peta No. 8'),
(268,'RS (Persero) Tbk Mojokerto','DI Yogyakarta','Kota Administrasi Jakarta Utara','Gg. Rajiman No. 10'),
(279,'RS (Persero) Tbk Cirebon','Sulawesi Tengah','Pekanbaru','Gang Moch. Ramdan No. 5'),
(289,'RS Tbk Batam','Kalimantan Tengah','Bengkulu','Gang Antapani Lama No. 30'),
(411,'RS (Persero) Tbk Meulaboh','Sumatera Utara','Batu','Gg. Moch. Ramdan No. 966'),
(436,'RS Tbk Pekanbaru','Jawa Barat','Salatiga','Gang Sukajadi No. 125'),
(441,'RS Tbk Kota Administrasi Jakarta Timur','Kalimantan Timur','Lubuklinggau','Jalan PHH. Mustofa No. 06'),
(447,'RS (Persero) Tbk Surabaya','Nusa Tenggara Timur','Sungai Penuh','Jalan Gegerkalong Hilir No. 92'),
(451,'RS Tbk Cirebon','Riau','Dumai','Jl. Laswi No. 452'),
(488,'RS (Persero) Tbk Cirebon','Jawa Timur','Tasikmalaya','Gang Antapani Lama No. 92'),
(525,'RS Tbk Semarang','DKI Jakarta','Kediri','Jl. KH Amin Jasuta No. 984'),
(573,'RS (Persero) Tbk Gorontalo','Papua','Langsa','Jalan Abdul Muis No. 486'),
(581,'RS Tbk Mataram','Sulawesi Tenggara','Palembang','Jalan Dipenogoro No. 163'),
(713,'RS (Persero) Tbk Tarakan','Bali','Pasuruan','Gg. Cikutra Timur No. 35'),
(750,'RS Tbk Cilegon','Sumatera Utara','Blitar','Gang Jayawijaya No. 7'),
(807,'RS Tbk Payakumbuh','Jambi','Tidore Kepulauan','Gang Suniaraja No. 2'),
(859,'RS Tbk Cirebon','Kalimantan Barat','Banjarbaru','Jl. Pelajar Pejuang No. 1'),
(959,'RS Tbk Kediri','Gorontalo','Serang','Jl. W.R. Supratman No. 51'),
(963,'RS Tbk Padang Sidempuan','Nusa Tenggara Timur','Cilegon','Gg. Pacuan Kuda No. 05'),
(969,'RS (Persero) Tbk Bengkulu','Maluku','Denpasar','Gang Monginsidi No. 14');
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
INSERT INTO `telepon_pengguna` (`email`, `no_telepon`) VALUES ('ckuswandari@example.com','+62 (0099) 592-9256'),
('ckuswandari@example.com','+62 (65) 698 4854'),
('cnugroho@example.org','+62 (0690) 447-9445'),
('farhunnisafirmansyah@example.org','(021) 738 3695'),
('farhunnisafirmansyah@example.org','+62-77-568-7584'),
('hsusanti@example.net','+62 (0158) 049-9370'),
('hsusanti@example.net','+62-917-643-7648'),
('hsusanti@example.net','0867047747'),
('jsafitri@example.com','+62 (0235) 153 5052'),
('jsafitri@example.com','+62 (14) 429-9089'),
('jsafitri@example.com','+62 (180) 472-9018'),
('laksana39@example.org','+62-97-748-4148'),
('luismustofa@example.com','+62 (06) 636 6403'),
('mangunsongcahyanto@example.net','+62 (007) 998 8172'),
('mangunsongcahyanto@example.net','+62 (056) 212-6918'),
('mangunsongcahyanto@example.net','+62-872-921-9426'),
('marpaungivan@example.com','+62 (895) 310-7322'),
('martanikusumo@example.com','+62 (0519) 702 3734'),
('martanikusumo@example.com','+62 (133) 990 1757'),
('martanikusumo@example.com','0856831453'),
('msalahudin@example.org','(0297) 835-8306'),
('msalahudin@example.org','+62 (057) 530-4568'),
('msalahudin@example.org','+62 (07) 998-7344'),
('msalahudin@example.org','089 774 5473'),
('najmudinkarna@example.net','(071) 759-4260'),
('sakura22@example.org','+62 (052) 352 8955'),
('sakura22@example.org','+62-872-673-8065'),
('santosoviolet@example.net','(0192) 996 4227'),
('santosoviolet@example.net','+62 (008) 053 9919'),
('santosoviolet@example.net','+62 (050) 876 4967'),
('santosoviolet@example.net','+62-80-708-4362'),
('santosoviolet@example.net','081 305 9502'),
('tugimanwidiastuti@example.net','(045) 959 5363'),
('tugimanwidiastuti@example.net','(099) 931 9223'),
('tugimanwidiastuti@example.net','+62 (0948) 770 7839'),
('ulaksmiwati@example.com','(052) 778 1003'),
('ulaksmiwati@example.com','+62 (667) 247-7447'),
('ulaksmiwati@example.com','+62-18-303-4115'),
('vputra@example.net','(003) 212 5322'),
('vputra@example.net','(044) 118-7800'),
('vputra@example.net','+62 (307) 608-7850'),
('vputra@example.net','0879800954'),
('yagustina@example.org','(064) 377 0151'),
('ypratiwi@example.org','+62 (0767) 404-7759'),
('ypratiwi@example.org','+62 (079) 215-0631'),
('ypratiwi@example.org','+62 (175) 704-9595'),
('ypratiwi@example.org','+62 (695) 080 9063'),
('yuliantimutia@example.net','(028) 498-9474'),
('yuliantimutia@example.net','(0537) 576 3341'),
('yuliantimutia@example.net','+62 (0699) 291 7463');
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
INSERT INTO `telepon_rumah_sakit` (`id_rumah_sakit`, `no_telepon`) VALUES (170,'+62 (0374) 660 4686'),
(268,'(050) 516-7545'),
(279,'(058) 868 2062'),
(289,'+62-313-044-0383'),
(411,'(048) 920-8482'),
(436,'(0085) 535-3221'),
(441,'(043) 865-8643'),
(447,'(061) 930-9858'),
(451,'(0034) 279-7353'),
(451,'(006) 229-4585'),
(451,'(0563) 842-4878'),
(451,'(074) 056-8475'),
(451,'(0838) 031-9985'),
(451,'(0858) 423 2913'),
(451,'+62 (0137) 021-6108'),
(451,'+62 (0148) 418-8730'),
(451,'+62 (0353) 829 6063'),
(451,'+62 (0646) 031-4527'),
(451,'+62 (0671) 693-3665'),
(451,'+62 (0671) 925-6547'),
(451,'+62 (076) 589 7216'),
(451,'+62 (0900) 013-0651'),
(451,'+62 (0974) 494-0698'),
(451,'+62 (13) 681-6774'),
(451,'+62 (25) 167-6245'),
(451,'+62 (56) 788 6590'),
(451,'+62 (947) 404-4642'),
(451,'+62-0041-506-4933'),
(451,'+62-019-408-5705'),
(451,'+62-0643-840-9872'),
(451,'+62-0684-637-7694'),
(451,'+62-077-355-3492'),
(451,'+62-082-118-8895'),
(451,'+62-0979-526-5963'),
(451,'+62-0981-685-3658'),
(451,'+62-32-880-1998'),
(451,'084 586 9828'),
(451,'0852337252'),
(451,'0853883583'),
(488,'+62-060-599-7109'),
(525,'+62-0821-783-7724'),
(573,'+62 (340) 996 9912'),
(581,'+62 (780) 451 6611'),
(713,'+62-0658-996-6093'),
(750,'+62 (40) 506-8857'),
(807,'(0943) 559 2265'),
(859,'+62 (023) 977 8625'),
(959,'+62 (85) 072-0904'),
(963,'+62 (250) 333-2302'),
(969,'+62 (0102) 817 6811');
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
INSERT INTO `tenaga_medis` (`email`, `nama_departemen`, `id_rumah_sakit`, `NIKes`, `jenis_profesi`) VALUES ('hsusanti@example.net','Umum',451,'1186099194819','Dokter Umum'),
('laksana39@example.org','Umum',279,'2187353755097','Bidan'),
('mangunsongcahyanto@example.net','Anak',268,'2845627897385','Perawat'),
('marpaungivan@example.com','Anak',268,'8041032893095','Dokter Umum'),
('martanikusumo@example.com','Kardiologi',859,'2905495058872','Bidan'),
('sakura22@example.org','Anak',969,'3530017078305','Dokter Spesialis'),
('santosoviolet@example.net','Anak',581,'3194172811445','Dokter Spesialis'),
('ulaksmiwati@example.com','Kulit',969,'1838997743490','Dokter Umum'),
('vputra@example.net','Neurologi',289,'2559135689058','Perawat'),
('yagustina@example.org','Kardiologi',750,'7978298023328','Dokter Spesialis');
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

-- Dump completed on 2025-05-15 19:42:25
