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
INSERT INTO `alamat_pasien` (`email`, `provinsi`, `kota`, `jalan`) VALUES ('adriansyahulva@example.com','Jambi','Ternate','Gg. BKR No. 8'),
('ayulianti@example.com','Kalimantan Selatan','Kupang','Gg. Jend. A. Yani No. 57'),
('ayulianti@example.com','Maluku Utara','Tebingtinggi','Jalan Raya Ujungberung No. 19'),
('cecepwibisono@example.org','Aceh','Cilegon','Gang Kutai No. 3'),
('cecepwibisono@example.org','Kepulauan Bangka Belitung','Ambon','Gg. Surapati No. 017'),
('chandra75@example.org','Banten','Tarakan','Gang Peta No. 22'),
('chandra75@example.org','Kalimantan Tengah','Padang Sidempuan','Jalan Kiaracondong No. 412'),
('chandra75@example.org','Maluku Utara','Medan','Jl. Kiaracondong No. 14'),
('darman63@example.org','DKI Jakarta','Kota Administrasi Jakarta Utara','Jl. Kapten Muslihat No. 844'),
('darman63@example.org','Jambi','Tanjungbalai','Jalan Stasiun Wonokromo No. 608'),
('darman63@example.org','Nusa Tenggara Barat','Batam','Jalan PHH. Mustofa No. 96'),
('darman63@example.org','Papua Barat','Madiun','Gg. Medokan Ayu No. 0'),
('darurahimah@example.org','Kepulauan Bangka Belitung','Malang','Gg. S. Parman No. 443'),
('darurahimah@example.org','Nusa Tenggara Barat','Cilegon','Gang Rajawali Timur No. 7'),
('farhunnisa22@example.net','Kalimantan Tengah','Tebingtinggi','Gg. Cihampelas No. 67'),
('farhunnisa22@example.net','Nusa Tenggara Barat','Ambon','Jl. M.T Haryono No. 242'),
('farhunnisa22@example.net','Papua Barat','Serang','Gg. Cihampelas No. 51'),
('hastuticatur@example.com','Jambi','Pagaralam','Gg. M.H Thamrin No. 20'),
('ika82@example.org','Maluku','Probolinggo','Jalan Waringin No. 148'),
('ika82@example.org','Sumatera Utara','Padang Sidempuan','Gg. Sadang Serang No. 50'),
('juli79@example.org','Kalimantan Selatan','Prabumulih','Gg. Bangka Raya No. 2'),
('juli79@example.org','Maluku Utara','Tebingtinggi','Gg. Kiaracondong No. 1'),
('juli79@example.org','Sulawesi Selatan','Ambon','Gg. Cikutra Barat No. 22'),
('liliwibowo@example.net','Bali','Cilegon','Jl. Pasir Koja No. 217'),
('liliwibowo@example.net','Kalimantan Selatan','Kediri','Gg. Dr. Djunjunan No. 32'),
('liliwibowo@example.net','Kepulauan Riau','Purwokerto','Gang Bangka Raya No. 43'),
('liliwibowo@example.net','Kepulauan Riau','Surabaya','Jalan Raya Ujungberung No. 80'),
('liliwibowo@example.net','Papua Barat','Cirebon','Jl. Asia Afrika No. 29'),
('liliwibowo@example.net','Riau','Bukittinggi','Gg. S. Parman No. 109'),
('liliwibowo@example.net','Sumatera Utara','Cimahi','Gang Kapten Muslihat No. 09'),
('limanpalastri@example.org','Aceh','Padang Sidempuan','Gg. Rajawali Timur No. 7'),
('limanpalastri@example.org','Jawa Tengah','Kotamobagu','Gang Dipatiukur No. 19'),
('limanpalastri@example.org','Kalimantan Timur','Tidore Kepulauan','Jalan M.H Thamrin No. 49'),
('limanpalastri@example.org','Sumatera Barat','Singkawang','Gang Kebonjati No. 70'),
('lmandasari@example.com','Papua','Sabang','Jl. K.H. Wahid Hasyim No. 80'),
('maulanajinawi@example.org','Papua Barat','Banjarmasin','Jalan Joyoboyo No. 9'),
('namagapandu@example.net','Kalimantan Timur','Surakarta','Gang Wonoayu No. 685'),
('namagapandu@example.net','Sulawesi Tengah','Tegal','Gang Monginsidi No. 972'),
('opanhandayani@example.org','Bengkulu','Batu','Jalan Jakarta No. 1'),
('opanhandayani@example.org','Kalimantan Tengah','Ambon','Jl. Rajiman No. 8'),
('opanhandayani@example.org','Kepulauan Bangka Belitung','Padang','Gg. Ciwastra No. 2'),
('opanhandayani@example.org','Riau','Sorong','Gang Jayawijaya No. 18'),
('pmansur@example.net','DKI Jakarta','Semarang','Jalan Ahmad Yani No. 6'),
('pmansur@example.net','Kalimantan Selatan','Banjarmasin','Jl. Tebet Barat Dalam No. 6'),
('pmansur@example.net','Papua','Bengkulu','Jl. Cempaka No. 681'),
('poktaviani@example.org','Jawa Barat','Batam','Jalan Laswi No. 881'),
('poktaviani@example.org','Nusa Tenggara Barat','Bau-Bau','Gg. KH Amin Jasuta No. 5'),
('putrasiti@example.com','DI Yogyakarta','Dumai','Gg. Raya Ujungberung No. 912'),
('putrasiti@example.com','Kalimantan Utara','Tasikmalaya','Jalan Rajawali Timur No. 56'),
('ramadanaisyah@example.com','Riau','Sabang','Gang Cikutra Barat No. 99');
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
INSERT INTO `departemen` (`nama_departemen`, `id_rumah_sakit`, `gedung`) VALUES ('Anak',6,'Gedung Utama'),
('Anak',95,'Gedung Timur'),
('Anak',102,'Gedung C'),
('Anak',691,'Gedung Timur'),
('Anak',837,'Gedung Timur'),
('Anak',903,'Gedung Timur'),
('Anak',933,'Gedung C'),
('Anak',942,'Gedung C'),
('Anak',978,'Gedung B'),
('Bedah',6,'Gedung Utama'),
('Bedah',102,'Gedung A'),
('Bedah',247,'Gedung Timur'),
('Bedah',383,'Gedung A'),
('Bedah',796,'Gedung B'),
('Bedah',802,'Gedung Timur'),
('Bedah',837,'Gedung Timur'),
('Bedah',894,'Gedung B'),
('Bedah',903,'Gedung C'),
('Bedah',942,'Gedung B'),
('Bedah',978,'Gedung B'),
('Gigi',6,'Gedung C'),
('Gigi',95,'Gedung C'),
('Gigi',102,'Gedung Utama'),
('Gigi',122,'Gedung A'),
('Gigi',247,'Gedung C'),
('Gigi',691,'Gedung Utama'),
('Gigi',796,'Gedung A'),
('Gigi',894,'Gedung Utama'),
('Gigi',900,'Gedung B'),
('Gigi',933,'Gedung B'),
('Kardiologi',6,'Gedung B'),
('Kardiologi',383,'Gedung B'),
('Kardiologi',802,'Gedung C'),
('Kardiologi',837,'Gedung B'),
('Kardiologi',844,'Gedung B'),
('Kardiologi',851,'Gedung Utama'),
('Kardiologi',900,'Gedung Utama'),
('Kulit',6,'Gedung Utama'),
('Kulit',102,'Gedung B'),
('Kulit',122,'Gedung A'),
('Kulit',691,'Gedung Timur'),
('Kulit',699,'Gedung C'),
('Kulit',796,'Gedung Timur'),
('Kulit',802,'Gedung C'),
('Kulit',840,'Gedung Timur'),
('Kulit',844,'Gedung C'),
('Kulit',851,'Gedung B'),
('Kulit',900,'Gedung A'),
('Neurologi',6,'Gedung Timur'),
('Neurologi',102,'Gedung Utama'),
('Neurologi',247,'Gedung Utama'),
('Neurologi',691,'Gedung B'),
('Neurologi',699,'Gedung C'),
('Neurologi',840,'Gedung B'),
('Neurologi',851,'Gedung A'),
('Neurologi',894,'Gedung Utama'),
('Neurologi',900,'Gedung B'),
('Neurologi',942,'Gedung Utama'),
('Umum',6,'Gedung C'),
('Umum',122,'Gedung C'),
('Umum',247,'Gedung Timur'),
('Umum',691,'Gedung A'),
('Umum',699,'Gedung B'),
('Umum',802,'Gedung Utama'),
('Umum',840,'Gedung B'),
('Umum',844,'Gedung C'),
('Umum',851,'Gedung B'),
('Umum',894,'Gedung Timur'),
('Umum',900,'Gedung A'),
('Umum',942,'Gedung Timur');
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
INSERT INTO `janji_temu` (`id_janji_temu`, `id_rumah_sakit`, `waktu_pelaksanaan`, `alasan`) VALUES (1,796,'2025-05-18 18:23:50','Totam sunt ratione magni eaque aut ipsum autem accusamus itaque amet.'),
(2,122,'2025-05-14 03:18:54','Ipsam rem est ducimus deserunt cum tempora distinctio tempore earum.'),
(3,903,'2025-05-23 20:41:34','Repellat esse assumenda ratione explicabo laudantium iste voluptates cupiditate voluptate.'),
(4,978,'2025-05-17 13:32:15','Incidunt repellat iste placeat quo perferendis sint ipsa.'),
(5,837,'2025-06-06 05:18:31','Aut reprehenderit qui nam qui tempore molestias.'),
(6,802,'2025-04-17 15:24:21','Voluptates ducimus vero cumque repellat natus quibusdam quam necessitatibus maxime fugiat fuga.'),
(7,851,'2025-04-29 07:10:14','Hic accusamus sit voluptate impedit modi optio iste placeat repellat.'),
(8,840,'2025-05-19 16:19:52','Autem nemo aut eos dolorum dolores hic at ab a reiciendis voluptatem.'),
(9,840,'2025-04-27 23:00:36','Praesentium inventore beatae minima accusamus ea quo.'),
(10,900,'2025-04-22 15:48:40','Dignissimos cupiditate eveniet quibusdam enim rerum eaque rerum debitis.'),
(11,802,'2025-04-20 02:14:49','Vero delectus voluptatum soluta fugit modi.'),
(12,894,'2025-04-18 13:09:41','Tempora nemo at ea eum sed iure aliquam nihil possimus consectetur vel.'),
(13,903,'2025-04-18 13:22:56','Incidunt sit quia adipisci fugiat inventore dolorum magni non alias.'),
(14,247,'2025-05-28 13:48:20','Hic sapiente voluptatem doloribus provident pariatur vel porro minus molestias ipsa.'),
(15,933,'2025-05-02 21:29:36','Consequatur sequi dolorum architecto quidem laborum similique provident.'),
(16,802,'2025-06-14 13:19:38','Eaque odio quas sunt molestias minus voluptate quia.'),
(17,6,'2025-05-25 11:10:14','Vitae corrupti nisi temporibus amet possimus minus eius.'),
(18,691,'2025-06-08 21:33:44','Sapiente quod quo odit soluta aperiam quaerat consequatur eos commodi a occaecati tenetur.'),
(19,383,'2025-06-12 16:42:10','Beatae magni temporibus tenetur officia beatae.'),
(20,900,'2025-05-12 00:13:34','Dolore beatae quam distinctio est quasi hic.'),
(21,95,'2025-05-14 20:17:06','Dolorum repudiandae omnis sint architecto adipisci.'),
(22,122,'2025-04-21 10:07:23','Ipsum cum iure corporis nobis sapiente porro quis doloribus.'),
(23,903,'2025-04-21 05:02:27','Fugit incidunt nulla fugiat blanditiis accusamus sequi ipsa aspernatur architecto.'),
(24,978,'2025-06-08 03:12:22','Hic sint reiciendis illo sapiente magni impedit.'),
(25,844,'2025-04-17 23:36:50','Possimus deserunt excepturi ad pariatur ratione nam iste culpa voluptates numquam.'),
(26,699,'2025-06-01 03:02:56','Neque nisi vero impedit beatae ex voluptate esse expedita asperiores.'),
(27,247,'2025-06-01 06:12:50','Delectus odio perferendis esse numquam facere blanditiis consectetur rerum dicta ratione.'),
(28,942,'2025-05-27 04:14:20','Fugit rerum autem quibusdam harum omnis unde veniam rem eius deleniti magnam nulla.'),
(29,844,'2025-05-15 08:00:45','Neque numquam magnam facere corrupti nemo ipsa sunt ipsam ipsa vel mollitia.'),
(30,383,'2025-05-13 15:07:40','Qui magnam ut dolor deleniti reiciendis error ex quasi officia modi.'),
(31,95,'2025-05-09 21:28:57','Aliquid repellendus exercitationem voluptate reiciendis at debitis.'),
(32,95,'2025-06-06 23:16:24','Facilis cupiditate deserunt repellendus possimus nulla reiciendis molestias eum deserunt modi blanditiis.'),
(33,796,'2025-04-23 20:01:27','Iste velit tempore veritatis doloremque ullam aperiam atque commodi repudiandae quaerat molestias.'),
(34,942,'2025-04-20 15:30:32','Excepturi quos voluptas voluptates a corporis maxime corporis magni est commodi consequuntur quae.'),
(35,247,'2025-04-27 00:01:54','Perspiciatis error animi recusandae consequuntur accusantium aut fugiat reiciendis labore ratione.'),
(36,95,'2025-05-31 01:51:06','Temporibus harum eum suscipit expedita at corporis distinctio.'),
(37,900,'2025-05-31 06:50:56','Rerum beatae aliquam labore explicabo assumenda tenetur dolores officiis.'),
(38,840,'2025-04-30 07:53:34','Iusto voluptates fuga explicabo labore perspiciatis aliquid voluptates dolorum ex.'),
(39,894,'2025-05-22 16:42:19','Ratione amet neque itaque debitis magni perferendis sunt vitae ullam dicta non ipsam.'),
(40,942,'2025-05-31 08:54:32','A laboriosam quibusdam consequatur dolore atque atque explicabo.'),
(41,802,'2025-04-21 00:55:55','Repellat perferendis optio voluptatem voluptatum ut quae.'),
(42,844,'2025-05-13 13:50:02','Necessitatibus dolorem rerum incidunt reprehenderit ipsum occaecati nesciunt totam.'),
(43,699,'2025-06-11 04:23:21','Neque cupiditate quia repellendus ducimus atque consequatur cumque.'),
(44,383,'2025-06-14 01:24:21','Reiciendis nisi rerum beatae voluptate voluptatibus fugit praesentium corporis animi delectus adipisci.'),
(45,122,'2025-05-19 19:48:50','Veritatis earum cum modi necessitatibus facere harum quas sunt numquam accusantium.'),
(46,802,'2025-06-01 15:21:31','Hic deleniti deserunt eum porro aperiam a fugiat dignissimos.'),
(47,978,'2025-06-01 04:16:17','Culpa ex repudiandae praesentium quas aliquam.'),
(48,796,'2025-05-06 19:30:15','Ducimus reprehenderit maiores ullam tenetur labore ducimus beatae molestiae.'),
(49,122,'2025-05-24 00:34:12','Eos incidunt ipsam eos facilis facilis quisquam tenetur odit incidunt est.'),
(50,844,'2025-05-17 14:55:04','Sunt tempora veniam praesentium numquam quis repellendus tenetur fuga.');
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
INSERT INTO `layanan_medis` (`id_rumah_sakit`, `id_layanan`, `nama_layanan`) VALUES (6,7,'fisioterapi'),
(6,8,'vaksinasi'),
(6,44,'vaksinasi'),
(95,13,'fisioterapi'),
(95,14,'vaksinasi'),
(95,48,'vaksinasi'),
(95,49,'vaksinasi'),
(102,37,'vaksinasi'),
(102,38,'fisioterapi'),
(122,31,'fisioterapi'),
(122,32,'vaksinasi'),
(122,45,'vaksinasi'),
(247,33,'fisioterapi'),
(247,34,'vaksinasi'),
(383,29,'vaksinasi'),
(383,30,'fisioterapi'),
(691,11,'fisioterapi'),
(691,12,'vaksinasi'),
(691,43,'fisioterapi'),
(699,27,'vaksinasi'),
(699,28,'fisioterapi'),
(796,23,'fisioterapi'),
(796,24,'vaksinasi'),
(802,21,'vaksinasi'),
(802,22,'fisioterapi'),
(802,46,'fisioterapi'),
(837,35,'fisioterapi'),
(837,36,'vaksinasi'),
(837,42,'vaksinasi'),
(840,3,'fisioterapi'),
(840,4,'vaksinasi'),
(840,47,'fisioterapi'),
(844,9,'vaksinasi'),
(844,10,'fisioterapi'),
(851,39,'fisioterapi'),
(851,40,'vaksinasi'),
(894,25,'fisioterapi'),
(894,26,'vaksinasi'),
(900,1,'fisioterapi'),
(900,2,'vaksinasi'),
(900,41,'fisioterapi'),
(903,17,'fisioterapi'),
(903,18,'vaksinasi'),
(903,50,'fisioterapi'),
(933,19,'fisioterapi'),
(933,20,'vaksinasi'),
(942,15,'fisioterapi'),
(942,16,'vaksinasi'),
(978,5,'fisioterapi'),
(978,6,'vaksinasi');
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
INSERT INTO `log_layanan` (`firmware_baymin`, `waktu_pengguna`, `jenis_tindakan`) VALUES (19776,'2025-01-06 17:28:15','generate world-class technologies'),
(19776,'2025-02-26 11:48:11','disintermediate customized ROI'),
(19776,'2025-04-01 01:17:49','facilitate B2C supply-chains'),
(23624,'2025-03-17 10:15:44','deliver customized solutions'),
(23624,'2025-05-04 21:50:50','incentivize granular info-mediaries'),
(25159,'2025-02-21 04:38:45','engage world-class metrics'),
(25159,'2025-03-10 18:38:16','scale bricks-and-clicks eyeballs'),
(39574,'2025-01-04 06:49:29','deliver sticky interfaces'),
(39574,'2025-03-08 17:21:57','exploit bleeding-edge mindshare'),
(39574,'2025-04-27 22:44:42','leverage intuitive interfaces'),
(39574,'2025-05-03 00:32:01','iterate innovative ROI'),
(39622,'2025-01-22 17:24:44','benchmark user-centric vortals'),
(39622,'2025-04-20 18:12:43','synthesize killer e-commerce'),
(44208,'2025-01-23 19:48:52','cultivate front-end systems'),
(44208,'2025-02-02 08:59:45','engage viral content'),
(50582,'2025-01-25 04:47:50','embrace robust convergence'),
(50582,'2025-02-04 15:00:33','engage real-time models'),
(50582,'2025-02-04 15:28:24','repurpose robust systems'),
(50582,'2025-03-26 21:32:46','reinvent efficient e-tailers'),
(50582,'2025-04-11 18:10:22','reinvent granular e-markets'),
(50582,'2025-05-13 15:03:28','generate bleeding-edge web services'),
(57207,'2025-01-20 23:30:53','empower mission-critical mindshare'),
(57207,'2025-02-23 17:55:54','iterate compelling vortals'),
(57207,'2025-03-22 22:05:59','generate end-to-end schemas'),
(57207,'2025-05-09 03:17:41','synthesize cross-media convergence'),
(60202,'2025-02-09 12:41:02','integrate intuitive synergies'),
(60202,'2025-03-10 03:36:49','leverage back-end content'),
(60202,'2025-04-13 01:27:52','evolve robust partnerships'),
(60202,'2025-05-03 04:49:49','utilize best-of-breed portals'),
(64953,'2025-01-23 21:13:19','re-contextualize mission-critical networks'),
(64953,'2025-02-27 07:36:50','iterate killer e-markets'),
(67337,'2025-01-04 16:57:14','seize viral architectures'),
(67337,'2025-01-21 02:36:56','synthesize leading-edge content'),
(67337,'2025-02-27 12:25:00','optimize ubiquitous communities'),
(67337,'2025-03-20 05:53:57','drive user-centric applications'),
(67337,'2025-03-28 07:48:44','seize open-source paradigms'),
(67337,'2025-05-11 18:27:35','e-enable frictionless systems'),
(67800,'2025-03-02 19:19:32','incubate web-enabled convergence'),
(67800,'2025-03-15 03:54:57','syndicate viral schemas'),
(67800,'2025-03-23 07:34:19','synthesize front-end channels'),
(70041,'2025-01-18 12:04:06','engineer front-end relationships'),
(70041,'2025-03-22 01:43:37','morph web-enabled niches'),
(70041,'2025-04-13 13:44:58','grow strategic infrastructures'),
(71861,'2025-04-11 22:11:02','optimize cutting-edge web services'),
(75604,'2025-01-06 21:43:49','repurpose revolutionary metrics'),
(75604,'2025-02-04 06:08:39','target compelling experiences'),
(75604,'2025-02-09 11:39:37','deliver turn-key functionalities'),
(75604,'2025-03-29 20:56:10','unleash transparent web services'),
(83107,'2025-03-22 18:28:20','enhance clicks-and-mortar markets'),
(89964,'2025-02-18 23:29:14','e-enable cross-media ROI');
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
INSERT INTO `melakukan_janji` (`email_pasien`, `id_janji_temu`, `email_tenaga_medis`, `id_rumah_sakit`) VALUES ('adriansyahulva@example.com',5,'kamilabudiyanto@example.org',837),
('adriansyahulva@example.com',5,'radika51@example.com',837),
('adriansyahulva@example.com',10,'saptonoharsaya@example.org',900),
('adriansyahulva@example.com',26,'oprayoga@example.net',699),
('ayulianti@example.com',19,'nsimanjuntak@example.org',383),
('ayulianti@example.com',27,'samosiropung@example.org',247),
('ayulianti@example.com',30,'suryonorahmi@example.org',383),
('ayulianti@example.com',37,'darmanahutagalung@example.com',900),
('cecepwibisono@example.org',4,'galionohutapea@example.org',978),
('cecepwibisono@example.org',22,'gutami@example.org',122),
('cecepwibisono@example.org',23,'marsudi13@example.net',903),
('cecepwibisono@example.org',29,'tprasasta@example.net',844),
('cecepwibisono@example.org',44,'hairyantokurniawan@example.org',383),
('cecepwibisono@example.org',48,'dwihutasoit@example.org',796),
('chandra75@example.org',41,'saptonoharsaya@example.org',802),
('chandra75@example.org',44,'saptonoharsaya@example.org',383),
('darman63@example.org',30,'darmanahutagalung@example.com',383),
('darman63@example.org',30,'oprayoga@example.net',383),
('darman63@example.org',40,'kamilabudiyanto@example.org',942),
('darurahimah@example.org',5,'marsudi13@example.net',837),
('darurahimah@example.org',29,'dwihutasoit@example.org',844),
('darurahimah@example.org',47,'hairyantokurniawan@example.org',978),
('farhunnisa22@example.net',23,'ilyas30@example.com',903),
('farhunnisa22@example.net',26,'dwihutasoit@example.org',699),
('hastuticatur@example.com',27,'saragihwira@example.net',247),
('hastuticatur@example.com',31,'marsudi13@example.net',95),
('hastuticatur@example.com',41,'nsimanjuntak@example.org',802),
('ika82@example.org',14,'tprasasta@example.net',247),
('ika82@example.org',21,'ilyas30@example.com',95),
('ika82@example.org',33,'kamilabudiyanto@example.org',796),
('juli79@example.org',17,'nsimanjuntak@example.org',6),
('juli79@example.org',23,'ilyas30@example.com',903),
('liliwibowo@example.net',13,'dwihutasoit@example.org',903),
('limanpalastri@example.org',32,'harja84@example.org',95),
('lmandasari@example.com',46,'radika51@example.com',802),
('maulanajinawi@example.org',1,'tprasasta@example.net',796),
('maulanajinawi@example.org',32,'saptonoharsaya@example.org',95),
('namagapandu@example.net',5,'harja84@example.org',837),
('namagapandu@example.net',17,'darmanahutagalung@example.com',6),
('namagapandu@example.net',19,'ekurniawan@example.org',383),
('namagapandu@example.net',24,'galionohutapea@example.org',978),
('opanhandayani@example.org',10,'dwihutasoit@example.org',900),
('opanhandayani@example.org',22,'ilyas30@example.com',122),
('opanhandayani@example.org',39,'galionohutapea@example.org',894),
('pmansur@example.net',34,'ilyas30@example.com',942),
('poktaviani@example.org',17,'tprasasta@example.net',6),
('poktaviani@example.org',21,'hairyantokurniawan@example.org',95),
('poktaviani@example.org',23,'balidin95@example.net',903),
('poktaviani@example.org',46,'kamilabudiyanto@example.org',802),
('ramadanaisyah@example.com',34,'nsimanjuntak@example.org',942);
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
INSERT INTO `obat` (`id_obat`, `label`) VALUES (4,'analgesik'),
(38,'obat herbal'),
(1026,'analgesik'),
(1072,'analgesik'),
(1461,'obat herbal'),
(1992,'obat herbal'),
(2551,'analgesik'),
(3040,'analgesik'),
(3044,'analgesik'),
(3271,'obat herbal'),
(3297,'antibiotik'),
(4457,'obat herbal'),
(4859,'antibiotik'),
(5116,'obat herbal'),
(6872,'analgesik'),
(7532,'obat herbal'),
(8592,'antibiotik'),
(8670,'antibiotik'),
(8887,'antibiotik'),
(9771,'antibiotik');
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
INSERT INTO `pasien` (`email`, `firmware_baymin`) VALUES ('adriansyahulva@example.com',83107),
('ayulianti@example.com',91568),
('cecepwibisono@example.org',50582),
('chandra75@example.org',71861),
('darman63@example.org',23624),
('darurahimah@example.org',67800),
('farhunnisa22@example.net',39574),
('hastuticatur@example.com',28239),
('ika82@example.org',67337),
('juli79@example.org',89964),
('liliwibowo@example.net',44208),
('limanpalastri@example.org',40401),
('lmandasari@example.com',39622),
('maulanajinawi@example.org',19776),
('namagapandu@example.net',57207),
('opanhandayani@example.org',75604),
('pmansur@example.net',25159),
('poktaviani@example.org',70041),
('putrasiti@example.com',60202),
('ramadanaisyah@example.com',64953);
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
INSERT INTO `pemesanan_layanan` (`id_pemesanan`, `id_rumah_sakit`, `id_layanan`, `email`, `jenis_layanan`, `jadwal_pelaksanaan`, `status_pemesanan`, `total_biaya`) VALUES (1,942,15,'juli79@example.org','tes radiologi','2025-07-02','belum dibayar',88819),
(2,122,32,'ramadanaisyah@example.com','tes laboratorium','2025-06-29','dibatalkan',732789),
(3,247,34,'pmansur@example.net','tes radiologi','2025-06-07','sedang berlangsung',131540),
(4,837,35,'limanpalastri@example.org','home care','2025-06-21','sedang berlangsung',547789),
(5,802,22,'juli79@example.org','home care','2025-06-28','selesai',307048),
(6,691,11,'maulanajinawi@example.org','konsultasi dokter','2025-07-04','selesai',564293),
(7,837,42,'opanhandayani@example.org','home care','2025-07-12','sedang berlangsung',877707),
(8,894,26,'farhunnisa22@example.net','home care','2025-06-17','belum dibayar',580462),
(9,903,50,'liliwibowo@example.net','home care','2025-06-05','dijadwalkan',264327),
(10,942,15,'poktaviani@example.org','konsultasi dokter','2025-07-09','sedang berlangsung',168839),
(11,840,3,'maulanajinawi@example.org','home care','2025-06-21','selesai',791675),
(12,840,4,'namagapandu@example.net','home care','2025-06-14','belum dibayar',711245),
(13,840,4,'adriansyahulva@example.com','home care','2025-07-01','dijadwalkan',550558),
(14,851,39,'juli79@example.org','tes radiologi','2025-07-10','belum dibayar',872503),
(15,802,22,'juli79@example.org','home care','2025-06-18','dijadwalkan',908555),
(16,802,22,'ramadanaisyah@example.com','tes radiologi','2025-07-03','dijadwalkan',916846),
(17,691,11,'darman63@example.org','tes radiologi','2025-05-24','dijadwalkan',933025),
(18,903,17,'cecepwibisono@example.org','home care','2025-05-31','dijadwalkan',349649),
(19,95,49,'limanpalastri@example.org','konsultasi dokter','2025-07-07','sedang berlangsung',430767),
(20,247,34,'putrasiti@example.com','tes laboratorium','2025-06-26','belum dibayar',877069),
(21,900,1,'namagapandu@example.net','konsultasi dokter','2025-06-10','selesai',430142),
(22,122,45,'pmansur@example.net','konsultasi dokter','2025-06-23','dibatalkan',923241),
(23,95,14,'lmandasari@example.com','konsultasi dokter','2025-06-11','selesai',715541),
(24,840,4,'darman63@example.org','home care','2025-05-21','belum dibayar',945284),
(25,933,19,'limanpalastri@example.org','konsultasi dokter','2025-07-08','dijadwalkan',891912),
(26,900,2,'darman63@example.org','home care','2025-06-11','belum dibayar',144568),
(27,796,24,'ika82@example.org','tes laboratorium','2025-05-30','sedang berlangsung',87845),
(28,102,38,'poktaviani@example.org','tes radiologi','2025-06-27','belum dibayar',64752),
(29,95,13,'farhunnisa22@example.net','tes radiologi','2025-06-02','selesai',984096),
(30,903,17,'juli79@example.org','tes radiologi','2025-07-12','selesai',528350),
(31,6,44,'putrasiti@example.com','tes radiologi','2025-07-01','dibatalkan',611025),
(32,900,1,'pmansur@example.net','tes laboratorium','2025-06-04','belum dibayar',646521),
(33,837,35,'darurahimah@example.org','tes laboratorium','2025-06-29','dijadwalkan',560441),
(34,247,34,'cecepwibisono@example.org','konsultasi dokter','2025-05-17','belum dibayar',957990),
(35,691,11,'darurahimah@example.org','home care','2025-06-17','belum dibayar',62077),
(36,802,22,'ika82@example.org','tes radiologi','2025-06-09','sedang berlangsung',363895),
(37,844,9,'hastuticatur@example.com','home care','2025-07-13','belum dibayar',935743),
(38,942,16,'juli79@example.org','konsultasi dokter','2025-05-31','selesai',223396),
(39,122,32,'liliwibowo@example.net','konsultasi dokter','2025-06-10','dibatalkan',185310),
(40,903,18,'ayulianti@example.com','home care','2025-06-13','selesai',969183),
(41,95,49,'adriansyahulva@example.com','tes radiologi','2025-07-04','dibatalkan',833834),
(42,247,33,'limanpalastri@example.org','tes laboratorium','2025-06-28','dibatalkan',800660),
(43,6,8,'maulanajinawi@example.org','konsultasi dokter','2025-06-19','sedang berlangsung',688045),
(44,837,42,'adriansyahulva@example.com','home care','2025-07-05','belum dibayar',781364),
(45,933,19,'liliwibowo@example.net','tes radiologi','2025-05-30','belum dibayar',494734),
(46,894,25,'ayulianti@example.com','tes radiologi','2025-05-16','dibatalkan',946954),
(47,903,18,'farhunnisa22@example.net','tes radiologi','2025-06-01','selesai',106563),
(48,699,28,'adriansyahulva@example.com','home care','2025-05-29','dibatalkan',741900),
(49,802,46,'maulanajinawi@example.org','konsultasi dokter','2025-06-10','selesai',396143),
(50,95,48,'limanpalastri@example.org','konsultasi dokter','2025-05-22','selesai',441756),
(51,122,45,'hastuticatur@example.com','tes radiologi','2025-05-24','selesai',922563),
(52,699,28,'limanpalastri@example.org','tes radiologi','2025-06-19','dijadwalkan',854202),
(53,691,43,'darurahimah@example.org','konsultasi dokter','2025-05-31','selesai',115404),
(54,122,31,'ayulianti@example.com','home care','2025-07-12','sedang berlangsung',442979),
(55,383,29,'chandra75@example.org','home care','2025-05-23','selesai',181715),
(56,102,37,'hastuticatur@example.com','tes laboratorium','2025-07-08','belum dibayar',616961),
(57,699,28,'maulanajinawi@example.org','tes laboratorium','2025-06-22','dijadwalkan',794791),
(58,900,41,'opanhandayani@example.org','konsultasi dokter','2025-06-23','dijadwalkan',230542),
(59,837,35,'juli79@example.org','home care','2025-06-19','dijadwalkan',565873),
(60,122,45,'adriansyahulva@example.com','tes laboratorium','2025-05-23','sedang berlangsung',918800),
(61,903,18,'poktaviani@example.org','tes radiologi','2025-06-21','dibatalkan',764640),
(62,837,35,'ika82@example.org','tes radiologi','2025-07-13','dijadwalkan',965306),
(63,796,23,'namagapandu@example.net','konsultasi dokter','2025-05-16','dijadwalkan',226644),
(64,247,33,'juli79@example.org','home care','2025-07-14','belum dibayar',795387),
(65,840,47,'ramadanaisyah@example.com','tes radiologi','2025-05-17','sedang berlangsung',530750),
(66,844,9,'pmansur@example.net','tes laboratorium','2025-06-09','selesai',767758),
(67,699,28,'pmansur@example.net','home care','2025-05-17','sedang berlangsung',69674),
(68,978,6,'ika82@example.org','konsultasi dokter','2025-06-08','selesai',900036),
(69,942,16,'limanpalastri@example.org','tes radiologi','2025-05-25','sedang berlangsung',847498),
(70,102,38,'limanpalastri@example.org','konsultasi dokter','2025-06-13','dijadwalkan',873928),
(71,383,30,'putrasiti@example.com','tes laboratorium','2025-07-06','sedang berlangsung',658830),
(72,691,43,'limanpalastri@example.org','tes laboratorium','2025-06-23','sedang berlangsung',421268),
(73,894,25,'darman63@example.org','home care','2025-06-15','dibatalkan',786853),
(74,691,11,'darurahimah@example.org','tes radiologi','2025-05-25','sedang berlangsung',423669),
(75,837,35,'namagapandu@example.net','home care','2025-06-09','belum dibayar',365143),
(76,247,34,'putrasiti@example.com','tes radiologi','2025-05-29','selesai',164658),
(77,900,1,'juli79@example.org','konsultasi dokter','2025-05-20','dijadwalkan',469782),
(78,796,23,'ayulianti@example.com','tes laboratorium','2025-05-23','belum dibayar',998669),
(79,903,18,'adriansyahulva@example.com','home care','2025-07-11','selesai',452097),
(80,102,37,'namagapandu@example.net','konsultasi dokter','2025-05-29','selesai',901653),
(81,851,39,'ramadanaisyah@example.com','tes laboratorium','2025-05-16','dibatalkan',104175),
(82,802,22,'cecepwibisono@example.org','tes radiologi','2025-06-16','sedang berlangsung',786432),
(83,851,39,'cecepwibisono@example.org','tes laboratorium','2025-05-29','sedang berlangsung',938931),
(84,383,29,'maulanajinawi@example.org','konsultasi dokter','2025-05-18','selesai',448275),
(85,6,7,'darurahimah@example.org','tes laboratorium','2025-07-01','dibatalkan',474960),
(86,942,16,'poktaviani@example.org','tes laboratorium','2025-06-17','selesai',762258),
(87,933,19,'hastuticatur@example.com','home care','2025-05-20','belum dibayar',55153),
(88,900,2,'putrasiti@example.com','konsultasi dokter','2025-05-26','sedang berlangsung',296010),
(89,837,35,'liliwibowo@example.net','home care','2025-07-06','dibatalkan',581048),
(90,383,30,'limanpalastri@example.org','home care','2025-07-07','sedang berlangsung',269102),
(91,840,3,'liliwibowo@example.net','tes laboratorium','2025-06-26','belum dibayar',96085),
(92,122,31,'putrasiti@example.com','home care','2025-06-06','dijadwalkan',336449),
(93,802,22,'liliwibowo@example.net','tes laboratorium','2025-06-18','belum dibayar',258160),
(94,122,31,'hastuticatur@example.com','home care','2025-06-15','sedang berlangsung',155381),
(95,903,50,'pmansur@example.net','home care','2025-05-30','selesai',435772),
(96,95,13,'opanhandayani@example.org','tes laboratorium','2025-07-05','belum dibayar',153693),
(97,102,37,'putrasiti@example.com','tes radiologi','2025-07-09','belum dibayar',918417),
(98,802,21,'darman63@example.org','konsultasi dokter','2025-06-01','dijadwalkan',983637),
(99,903,18,'ayulianti@example.com','tes laboratorium','2025-05-18','dijadwalkan',523024),
(100,894,25,'ramadanaisyah@example.com','home care','2025-07-05','dijadwalkan',700337);
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
INSERT INTO `pemesanan_obat` (`email`, `waktu_pemesanan`, `alamat_pengiriman`, `status_pemesanan`, `total_biaya`) VALUES ('ayulianti@example.com','2025-05-03 10:41:32','Gg. Rungkut Industri No. 40, Palembang, KS 02564','sedang berlangsung',482723),
('ayulianti@example.com','2025-05-06 02:36:46','Jalan Suryakencana No. 36, Pasuruan, Kepulauan Riau 11239','dijadwalkan',132102),
('ayulianti@example.com','2025-05-06 21:52:26','Gg. Suryakencana No. 24, Madiun, PA 06989','dijadwalkan',109648),
('ayulianti@example.com','2025-05-10 19:50:21','Gg. Medokan Ayu No. 9, Serang, Lampung 29987','belum dibayar',181283),
('ayulianti@example.com','2025-05-15 04:08:35','Jalan Pasirkoja No. 8, Jambi, Kalimantan Barat 96892','selesai',28235),
('chandra75@example.org','2025-05-02 17:10:45','Jl. Bangka Raya No. 54, Banjar, KT 67485','sedang berlangsung',259311),
('chandra75@example.org','2025-05-05 06:50:00','Jl. Pasteur No. 7, Manado, SR 25154','dijadwalkan',212061),
('darman63@example.org','2025-05-08 02:41:15','Jl. Kiaracondong No. 705, Tebingtinggi, BT 86750','dijadwalkan',225110),
('darman63@example.org','2025-05-10 11:55:59','Gang K.H. Wahid Hasyim No. 999, Pagaralam, Aceh 24460','dijadwalkan',104755),
('darurahimah@example.org','2025-05-12 23:29:56','Jalan Jayawijaya No. 11, Bukittinggi, RI 86123','belum dibayar',313714),
('darurahimah@example.org','2025-05-14 08:09:59','Gang Pasirkoja No. 791, Makassar, GO 87299','sedang berlangsung',274673),
('darurahimah@example.org','2025-05-15 03:07:45','Gg. Sentot Alibasa No. 608, Palangkaraya, RI 70884','sedang berlangsung',446539),
('darurahimah@example.org','2025-05-15 14:11:00','Gg. Asia Afrika No. 610, Tomohon, Sulawesi Tengah 34284','dibatalkan',482962),
('farhunnisa22@example.net','2025-05-13 00:09:11','Jl. Setiabudhi No. 8, Sungai Penuh, Jawa Barat 47063','dijadwalkan',87017),
('farhunnisa22@example.net','2025-05-13 22:51:30','Jalan Tebet Barat Dalam No. 8, Payakumbuh, MA 25465','selesai',46823),
('hastuticatur@example.com','2025-05-13 09:13:16','Gg. Medokan Ayu No. 6, Tangerang Selatan, SS 29841','sedang berlangsung',200780),
('ika82@example.org','2025-05-09 10:12:36','Jalan Kiaracondong No. 44, Tangerang Selatan, KU 92008','dijadwalkan',311684),
('ika82@example.org','2025-05-12 22:25:13','Gang Pacuan Kuda No. 30, Manado, Sumatera Selatan 24779','dijadwalkan',385828),
('ika82@example.org','2025-05-14 06:49:55','Jalan Abdul Muis No. 80, Binjai, Riau 96135','dibatalkan',49927),
('ika82@example.org','2025-05-15 02:23:44','Jalan Bangka Raya No. 3, Cilegon, KI 90237','belum dibayar',82058),
('ika82@example.org','2025-05-15 13:51:17','Gang Veteran No. 912, Solok, GO 04128','sedang berlangsung',357331),
('juli79@example.org','2025-05-02 15:25:25','Gang Stasiun Wonokromo No. 583, Jayapura, Sulawesi Barat 81905','dijadwalkan',286458),
('juli79@example.org','2025-05-05 07:22:51','Gg. Jamika No. 09, Tasikmalaya, Sumatera Utara 05404','sedang berlangsung',69992),
('juli79@example.org','2025-05-06 23:33:30','Gang Indragiri No. 89, Kupang, SS 02519','sedang berlangsung',303974),
('juli79@example.org','2025-05-10 17:04:49','Gang Dipatiukur No. 2, Kupang, MA 55213','selesai',76826),
('liliwibowo@example.net','2025-05-16 04:29:01','Jl. Ahmad Yani No. 6, Ambon, Nusa Tenggara Timur 91578','belum dibayar',330593),
('limanpalastri@example.org','2025-05-01 12:16:50','Gang Cikapayang No. 75, Surakarta, SN 08510','sedang berlangsung',286274),
('limanpalastri@example.org','2025-05-11 14:43:59','Jl. Cikutra Timur No. 2, Lhokseumawe, SU 10276','belum dibayar',430839),
('lmandasari@example.com','2025-05-03 16:39:43','Gang Jakarta No. 92, Padangpanjang, SB 94024','belum dibayar',65060),
('lmandasari@example.com','2025-05-07 18:00:30','Gang Peta No. 1, Langsa, Sumatera Barat 07015','sedang berlangsung',376886),
('lmandasari@example.com','2025-05-08 10:25:03','Gang Rajawali Timur No. 891, Balikpapan, SN 62421','sedang berlangsung',304026),
('maulanajinawi@example.org','2025-05-08 04:07:11','Jl. Jend. Sudirman No. 240, Tebingtinggi, Jambi 54637','belum dibayar',145105),
('maulanajinawi@example.org','2025-05-09 22:50:52','Gang Bangka Raya No. 5, Bandung, Kepulauan Riau 68416','sedang berlangsung',194198),
('maulanajinawi@example.org','2025-05-14 14:10:52','Gang Tebet Barat Dalam No. 811, Tegal, Sumatera Barat 48352','dijadwalkan',32194),
('namagapandu@example.net','2025-05-02 02:56:08','Jl. Gegerkalong Hilir No. 04, Bengkulu, Kalimantan Timur 67451','belum dibayar',86860),
('namagapandu@example.net','2025-05-12 07:05:17','Gang Gedebage Selatan No. 39, Metro, Kepulauan Riau 90402','sedang berlangsung',154126),
('namagapandu@example.net','2025-05-14 21:16:04','Jalan Ciwastra No. 91, Pasuruan, SU 37035','dijadwalkan',366020),
('opanhandayani@example.org','2025-05-06 01:42:07','Jl. Otto Iskandardinata No. 76, Pasuruan, Jawa Timur 13343','dibatalkan',309237),
('opanhandayani@example.org','2025-05-08 05:07:19','Jl. Merdeka No. 079, Kota Administrasi Jakarta Pusat, RI 49820','selesai',90926),
('opanhandayani@example.org','2025-05-10 15:32:17','Gg. Jamika No. 1, Parepare, NB 03137','selesai',21781),
('pmansur@example.net','2025-05-02 20:34:40','Jl. Gardujati No. 898, Pagaralam, JT 50007','dijadwalkan',380577),
('pmansur@example.net','2025-05-05 17:59:48','Gg. Rajawali Timur No. 84, Padang, Gorontalo 70871','dijadwalkan',50272),
('pmansur@example.net','2025-05-13 12:11:26','Jl. Dipatiukur No. 4, Salatiga, JT 49961','dijadwalkan',267262),
('pmansur@example.net','2025-05-15 08:06:12','Jalan Ciwastra No. 0, Probolinggo, DI Yogyakarta 80848','dijadwalkan',83626),
('poktaviani@example.org','2025-05-01 13:33:52','Jl. H.J Maemunah No. 8, Jambi, Sulawesi Utara 23480','belum dibayar',239458),
('poktaviani@example.org','2025-05-11 19:19:24','Jl. Rungkut Industri No. 961, Binjai, Sumatera Utara 36233','sedang berlangsung',310050),
('poktaviani@example.org','2025-05-15 17:10:07','Gang Gardujati No. 9, Sukabumi, Papua 89644','sedang berlangsung',391457),
('putrasiti@example.com','2025-05-06 01:02:49','Jalan KH Amin Jasuta No. 9, Prabumulih, Papua 34925','selesai',56403),
('ramadanaisyah@example.com','2025-05-07 14:32:34','Gang Kiaracondong No. 2, Binjai, Banten 61561','dijadwalkan',80447),
('ramadanaisyah@example.com','2025-05-15 00:16:38','Jalan Setiabudhi No. 0, Padangpanjang, DI Yogyakarta 25098','dijadwalkan',331923);
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
INSERT INTO `pemesanan_obat_obat` (`email`, `waktu_pemesanan`, `alamat_pengiriman`, `id_obat`) VALUES ('ayulianti@example.com','2025-05-03 10:41:32','Gg. Rungkut Industri No. 40, Palembang, KS 02564',4),
('ayulianti@example.com','2025-05-03 10:41:32','Gg. Rungkut Industri No. 40, Palembang, KS 02564',3271),
('ayulianti@example.com','2025-05-06 02:36:46','Jalan Suryakencana No. 36, Pasuruan, Kepulauan Riau 11239',4859),
('ayulianti@example.com','2025-05-06 02:36:46','Jalan Suryakencana No. 36, Pasuruan, Kepulauan Riau 11239',5116),
('ayulianti@example.com','2025-05-06 21:52:26','Gg. Suryakencana No. 24, Madiun, PA 06989',2551),
('ayulianti@example.com','2025-05-06 21:52:26','Gg. Suryakencana No. 24, Madiun, PA 06989',5116),
('ayulianti@example.com','2025-05-10 19:50:21','Gg. Medokan Ayu No. 9, Serang, Lampung 29987',1461),
('ayulianti@example.com','2025-05-10 19:50:21','Gg. Medokan Ayu No. 9, Serang, Lampung 29987',4457),
('ayulianti@example.com','2025-05-15 04:08:35','Jalan Pasirkoja No. 8, Jambi, Kalimantan Barat 96892',38),
('ayulianti@example.com','2025-05-15 04:08:35','Jalan Pasirkoja No. 8, Jambi, Kalimantan Barat 96892',3040),
('chandra75@example.org','2025-05-02 17:10:45','Jl. Bangka Raya No. 54, Banjar, KT 67485',2551),
('chandra75@example.org','2025-05-02 17:10:45','Jl. Bangka Raya No. 54, Banjar, KT 67485',3040),
('chandra75@example.org','2025-05-05 06:50:00','Jl. Pasteur No. 7, Manado, SR 25154',3040),
('chandra75@example.org','2025-05-05 06:50:00','Jl. Pasteur No. 7, Manado, SR 25154',8670),
('darman63@example.org','2025-05-08 02:41:15','Jl. Kiaracondong No. 705, Tebingtinggi, BT 86750',1072),
('darman63@example.org','2025-05-08 02:41:15','Jl. Kiaracondong No. 705, Tebingtinggi, BT 86750',3040),
('darman63@example.org','2025-05-10 11:55:59','Gang K.H. Wahid Hasyim No. 999, Pagaralam, Aceh 24460',1026),
('darman63@example.org','2025-05-10 11:55:59','Gang K.H. Wahid Hasyim No. 999, Pagaralam, Aceh 24460',1992),
('darurahimah@example.org','2025-05-12 23:29:56','Jalan Jayawijaya No. 11, Bukittinggi, RI 86123',38),
('darurahimah@example.org','2025-05-12 23:29:56','Jalan Jayawijaya No. 11, Bukittinggi, RI 86123',3044),
('darurahimah@example.org','2025-05-14 08:09:59','Gang Pasirkoja No. 791, Makassar, GO 87299',5116),
('darurahimah@example.org','2025-05-14 08:09:59','Gang Pasirkoja No. 791, Makassar, GO 87299',7532),
('darurahimah@example.org','2025-05-15 03:07:45','Gg. Sentot Alibasa No. 608, Palangkaraya, RI 70884',3040),
('darurahimah@example.org','2025-05-15 03:07:45','Gg. Sentot Alibasa No. 608, Palangkaraya, RI 70884',4859),
('darurahimah@example.org','2025-05-15 14:11:00','Gg. Asia Afrika No. 610, Tomohon, Sulawesi Tengah 34284',7532),
('darurahimah@example.org','2025-05-15 14:11:00','Gg. Asia Afrika No. 610, Tomohon, Sulawesi Tengah 34284',9771),
('farhunnisa22@example.net','2025-05-13 00:09:11','Jl. Setiabudhi No. 8, Sungai Penuh, Jawa Barat 47063',3040),
('farhunnisa22@example.net','2025-05-13 00:09:11','Jl. Setiabudhi No. 8, Sungai Penuh, Jawa Barat 47063',3297),
('farhunnisa22@example.net','2025-05-13 22:51:30','Jalan Tebet Barat Dalam No. 8, Payakumbuh, MA 25465',1072),
('farhunnisa22@example.net','2025-05-13 22:51:30','Jalan Tebet Barat Dalam No. 8, Payakumbuh, MA 25465',9771),
('hastuticatur@example.com','2025-05-13 09:13:16','Gg. Medokan Ayu No. 6, Tangerang Selatan, SS 29841',1026),
('hastuticatur@example.com','2025-05-13 09:13:16','Gg. Medokan Ayu No. 6, Tangerang Selatan, SS 29841',2551),
('ika82@example.org','2025-05-09 10:12:36','Jalan Kiaracondong No. 44, Tangerang Selatan, KU 92008',38),
('ika82@example.org','2025-05-09 10:12:36','Jalan Kiaracondong No. 44, Tangerang Selatan, KU 92008',3044),
('ika82@example.org','2025-05-12 22:25:13','Gang Pacuan Kuda No. 30, Manado, Sumatera Selatan 24779',3297),
('ika82@example.org','2025-05-12 22:25:13','Gang Pacuan Kuda No. 30, Manado, Sumatera Selatan 24779',8887),
('ika82@example.org','2025-05-14 06:49:55','Jalan Abdul Muis No. 80, Binjai, Riau 96135',1461),
('ika82@example.org','2025-05-14 06:49:55','Jalan Abdul Muis No. 80, Binjai, Riau 96135',9771),
('ika82@example.org','2025-05-15 02:23:44','Jalan Bangka Raya No. 3, Cilegon, KI 90237',3040),
('ika82@example.org','2025-05-15 02:23:44','Jalan Bangka Raya No. 3, Cilegon, KI 90237',7532),
('ika82@example.org','2025-05-15 13:51:17','Gang Veteran No. 912, Solok, GO 04128',1992),
('ika82@example.org','2025-05-15 13:51:17','Gang Veteran No. 912, Solok, GO 04128',7532),
('juli79@example.org','2025-05-02 15:25:25','Gang Stasiun Wonokromo No. 583, Jayapura, Sulawesi Barat 81905',3297),
('juli79@example.org','2025-05-02 15:25:25','Gang Stasiun Wonokromo No. 583, Jayapura, Sulawesi Barat 81905',7532),
('juli79@example.org','2025-05-05 07:22:51','Gg. Jamika No. 09, Tasikmalaya, Sumatera Utara 05404',1026),
('juli79@example.org','2025-05-05 07:22:51','Gg. Jamika No. 09, Tasikmalaya, Sumatera Utara 05404',4457),
('juli79@example.org','2025-05-06 23:33:30','Gang Indragiri No. 89, Kupang, SS 02519',2551),
('juli79@example.org','2025-05-06 23:33:30','Gang Indragiri No. 89, Kupang, SS 02519',8670),
('juli79@example.org','2025-05-10 17:04:49','Gang Dipatiukur No. 2, Kupang, MA 55213',3271),
('juli79@example.org','2025-05-10 17:04:49','Gang Dipatiukur No. 2, Kupang, MA 55213',4457),
('liliwibowo@example.net','2025-05-16 04:29:01','Jl. Ahmad Yani No. 6, Ambon, Nusa Tenggara Timur 91578',1461),
('liliwibowo@example.net','2025-05-16 04:29:01','Jl. Ahmad Yani No. 6, Ambon, Nusa Tenggara Timur 91578',7532),
('limanpalastri@example.org','2025-05-01 12:16:50','Gang Cikapayang No. 75, Surakarta, SN 08510',3297),
('limanpalastri@example.org','2025-05-01 12:16:50','Gang Cikapayang No. 75, Surakarta, SN 08510',6872),
('limanpalastri@example.org','2025-05-11 14:43:59','Jl. Cikutra Timur No. 2, Lhokseumawe, SU 10276',3040),
('limanpalastri@example.org','2025-05-11 14:43:59','Jl. Cikutra Timur No. 2, Lhokseumawe, SU 10276',3044),
('lmandasari@example.com','2025-05-03 16:39:43','Gang Jakarta No. 92, Padangpanjang, SB 94024',1026),
('lmandasari@example.com','2025-05-03 16:39:43','Gang Jakarta No. 92, Padangpanjang, SB 94024',4457),
('lmandasari@example.com','2025-05-07 18:00:30','Gang Peta No. 1, Langsa, Sumatera Barat 07015',1026),
('lmandasari@example.com','2025-05-07 18:00:30','Gang Peta No. 1, Langsa, Sumatera Barat 07015',3040),
('lmandasari@example.com','2025-05-08 10:25:03','Gang Rajawali Timur No. 891, Balikpapan, SN 62421',6872),
('lmandasari@example.com','2025-05-08 10:25:03','Gang Rajawali Timur No. 891, Balikpapan, SN 62421',8592),
('maulanajinawi@example.org','2025-05-08 04:07:11','Jl. Jend. Sudirman No. 240, Tebingtinggi, Jambi 54637',1992),
('maulanajinawi@example.org','2025-05-08 04:07:11','Jl. Jend. Sudirman No. 240, Tebingtinggi, Jambi 54637',8592),
('maulanajinawi@example.org','2025-05-09 22:50:52','Gang Bangka Raya No. 5, Bandung, Kepulauan Riau 68416',1072),
('maulanajinawi@example.org','2025-05-09 22:50:52','Gang Bangka Raya No. 5, Bandung, Kepulauan Riau 68416',9771),
('maulanajinawi@example.org','2025-05-14 14:10:52','Gang Tebet Barat Dalam No. 811, Tegal, Sumatera Barat 48352',4),
('maulanajinawi@example.org','2025-05-14 14:10:52','Gang Tebet Barat Dalam No. 811, Tegal, Sumatera Barat 48352',1461),
('namagapandu@example.net','2025-05-02 02:56:08','Jl. Gegerkalong Hilir No. 04, Bengkulu, Kalimantan Timur 67451',7532),
('namagapandu@example.net','2025-05-02 02:56:08','Jl. Gegerkalong Hilir No. 04, Bengkulu, Kalimantan Timur 67451',8887),
('namagapandu@example.net','2025-05-12 07:05:17','Gang Gedebage Selatan No. 39, Metro, Kepulauan Riau 90402',8887),
('namagapandu@example.net','2025-05-12 07:05:17','Gang Gedebage Selatan No. 39, Metro, Kepulauan Riau 90402',9771),
('namagapandu@example.net','2025-05-14 21:16:04','Jalan Ciwastra No. 91, Pasuruan, SU 37035',1026),
('namagapandu@example.net','2025-05-14 21:16:04','Jalan Ciwastra No. 91, Pasuruan, SU 37035',7532),
('opanhandayani@example.org','2025-05-06 01:42:07','Jl. Otto Iskandardinata No. 76, Pasuruan, Jawa Timur 13343',1026),
('opanhandayani@example.org','2025-05-06 01:42:07','Jl. Otto Iskandardinata No. 76, Pasuruan, Jawa Timur 13343',1461),
('opanhandayani@example.org','2025-05-08 05:07:19','Jl. Merdeka No. 079, Kota Administrasi Jakarta Pusat, RI 49820',1992),
('opanhandayani@example.org','2025-05-08 05:07:19','Jl. Merdeka No. 079, Kota Administrasi Jakarta Pusat, RI 49820',8887),
('opanhandayani@example.org','2025-05-10 15:32:17','Gg. Jamika No. 1, Parepare, NB 03137',1072),
('opanhandayani@example.org','2025-05-10 15:32:17','Gg. Jamika No. 1, Parepare, NB 03137',7532),
('pmansur@example.net','2025-05-02 20:34:40','Jl. Gardujati No. 898, Pagaralam, JT 50007',1072),
('pmansur@example.net','2025-05-02 20:34:40','Jl. Gardujati No. 898, Pagaralam, JT 50007',8887),
('pmansur@example.net','2025-05-05 17:59:48','Gg. Rajawali Timur No. 84, Padang, Gorontalo 70871',3297),
('pmansur@example.net','2025-05-05 17:59:48','Gg. Rajawali Timur No. 84, Padang, Gorontalo 70871',4457),
('pmansur@example.net','2025-05-13 12:11:26','Jl. Dipatiukur No. 4, Salatiga, JT 49961',4859),
('pmansur@example.net','2025-05-13 12:11:26','Jl. Dipatiukur No. 4, Salatiga, JT 49961',5116),
('pmansur@example.net','2025-05-15 08:06:12','Jalan Ciwastra No. 0, Probolinggo, DI Yogyakarta 80848',3044),
('pmansur@example.net','2025-05-15 08:06:12','Jalan Ciwastra No. 0, Probolinggo, DI Yogyakarta 80848',8592),
('poktaviani@example.org','2025-05-01 13:33:52','Jl. H.J Maemunah No. 8, Jambi, Sulawesi Utara 23480',2551),
('poktaviani@example.org','2025-05-01 13:33:52','Jl. H.J Maemunah No. 8, Jambi, Sulawesi Utara 23480',3271),
('poktaviani@example.org','2025-05-11 19:19:24','Jl. Rungkut Industri No. 961, Binjai, Sumatera Utara 36233',4),
('poktaviani@example.org','2025-05-11 19:19:24','Jl. Rungkut Industri No. 961, Binjai, Sumatera Utara 36233',8592),
('poktaviani@example.org','2025-05-15 17:10:07','Gang Gardujati No. 9, Sukabumi, Papua 89644',3040),
('poktaviani@example.org','2025-05-15 17:10:07','Gang Gardujati No. 9, Sukabumi, Papua 89644',4859),
('putrasiti@example.com','2025-05-06 01:02:49','Jalan KH Amin Jasuta No. 9, Prabumulih, Papua 34925',1992),
('putrasiti@example.com','2025-05-06 01:02:49','Jalan KH Amin Jasuta No. 9, Prabumulih, Papua 34925',3040),
('ramadanaisyah@example.com','2025-05-07 14:32:34','Gang Kiaracondong No. 2, Binjai, Banten 61561',3040),
('ramadanaisyah@example.com','2025-05-07 14:32:34','Gang Kiaracondong No. 2, Binjai, Banten 61561',3271),
('ramadanaisyah@example.com','2025-05-15 00:16:38','Jalan Setiabudhi No. 0, Padangpanjang, DI Yogyakarta 25098',3040);
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
INSERT INTO `pengeluaran_resep` (`id_janji_temu`, `id_rumah_sakit`, `id_resep`) VALUES (2,122,16977),
(4,978,8673),
(5,837,15051),
(6,802,43322),
(8,840,10760),
(9,840,22638),
(10,900,43332),
(11,802,30781),
(12,894,45116),
(14,247,48581),
(15,933,22666),
(17,6,28005),
(20,900,46859),
(21,95,24668),
(23,903,32741),
(24,978,29779),
(25,844,18809),
(26,699,15612),
(28,942,26566),
(29,844,31707),
(30,383,28544),
(31,95,45769),
(33,796,30850),
(35,247,33585),
(36,95,26337),
(37,900,34674),
(39,894,277),
(40,942,24560),
(42,844,41371),
(43,699,4274),
(47,978,43908),
(49,122,5278);
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
INSERT INTO `pengguna` (`email`, `kata_sandi`, `nama_lengkap`, `tanggal_lahir`, `usia`) VALUES ('adriansyahulva@example.com','@5HHkc8+jT(V','Surya Gunarto','1989-10-18',35),
('ayulianti@example.com','5UGO*oTpI%J^','Yulia Kusumo, M.Pd','1996-02-16',29),
('balidin95@example.net','VI4Xyy9%h(F(','Daruna Purwanti','1966-08-23',58),
('cecepwibisono@example.org','V(wJ0I8d_L1j','Ir. Darijan Hutapea','2000-11-27',24),
('chandra75@example.org','qx5#@tsiK)8X','Balijan Ardianto','1980-03-23',45),
('darman63@example.org','&_1QaPYx009K','Farah Tampubolon, S.E.','1996-09-07',28),
('darmanahutagalung@example.com','a!^al1Yma2%6','Siska Kusmawati','1960-11-11',64),
('darurahimah@example.org','Vsyf9QBvj+W@','Oliva Widiastuti','1996-08-03',28),
('dwihutasoit@example.org','D5fJsV3V@xio','Safina Pertiwi','1980-03-17',45),
('ekurniawan@example.org','%Xvr0SKw*3Va','R.M. Dodo Budiyanto','1996-02-14',29),
('farhunnisa22@example.net','#4CPvrICD2!O','Oliva Susanti, S.E.I','1957-08-17',67),
('gadang46@example.net','Uq5!duhJ0P6Q','Jais Maryati','1992-11-29',32),
('galionohutapea@example.org','66fzBMnX@g19','Cemplunk Melani, S.Gz','1985-06-29',39),
('gutami@example.org','FtQUpE%v)!91','R.M. Rangga Hakim','1962-04-22',63),
('hairyantokurniawan@example.org','(f5su_lW6#oX','Chandra Wibisono','1956-10-27',68),
('harja84@example.org','T+8MODy(f#6E','Dr. Dalimin Aryani','1954-06-10',70),
('hastuticatur@example.com',')3OAlAZeZEB4','Ratih Saragih','2000-05-24',24),
('ika82@example.org','S+8DjUj35+)B','Unggul Iswahyudi','1991-07-04',33),
('ilyas30@example.com','#0ZDEQxkdEqG','Irsad Ardianto','1964-07-10',60),
('juli79@example.org','()L9xRjfoPTM','R. Queen Purnawati','1982-01-26',43),
('kamilabudiyanto@example.org','c9XlBSSPhC+7','Sutan Damu Wacana, S.Pd','1999-08-28',25),
('liliwibowo@example.net','N8*yZhi!5si5','Soleh Wijayanti','1993-11-03',31),
('limanpalastri@example.org','k%0*lcE7m)0S','Aurora Adriansyah','1980-11-16',44),
('lmandasari@example.com','FH@NUet^$u5s','Tugiman Budiyanto','1957-11-28',67),
('marsudi13@example.net','M0@Todp@)ygK','Danu Lailasari','1981-12-30',43),
('maulanajinawi@example.org','&_Bxj3^L5F4j','Salman Astuti, M.Farm','1954-10-02',70),
('namagapandu@example.net','7a7vK7KkuTJ*','Cahyono Hidayat','2006-02-04',19),
('nsimanjuntak@example.org','$0CzBauuHxhW','Gadang Narpati, S.H.','2004-08-10',20),
('opanhandayani@example.org','@$LFJDv37Fy4','Pangeran Pangestu','1996-03-23',29),
('oprayoga@example.net','BiG1OMEnH@%^','Dewi Simanjuntak','1985-11-08',39),
('pmansur@example.net','IV4$IRgv(MX7','Drs. Virman Hakim, S.T.','1961-07-20',63),
('poktaviani@example.org','%nk+SBsn3j62','Emas Fujiati','1963-08-13',61),
('putrasiti@example.com','_5f@ZHaxSPp3','Gambira Marbun','2004-08-08',20),
('radika51@example.com','*X1Vp+*f2gT4','Ridwan Uyainah','1990-12-19',34),
('ramadanaisyah@example.com','R)4mvMFyIZ2f','Tari Hutasoit','1965-11-24',59),
('samosiropung@example.org','^(2NU4%g0pk0','Ir. Anggabaya Suryatmi','1990-01-26',35),
('saptonoharsaya@example.org','3sIf8UrI_8CP','Putri Tampubolon','1966-09-15',58),
('saragihwira@example.net','$jsN1Ja_)8Op','Puti Novi Farida','1968-11-10',56),
('suryonorahmi@example.org','xm3EVddSukK)','Taufik Suartini','1956-03-31',69),
('tprasasta@example.net',')2$WcxvmLPJb','H. Koko Lazuardi, S.E.','1978-08-26',46);
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
INSERT INTO `resep_obat` (`id_obat`, `id_resep`, `dosis`, `cara_pakai`) VALUES (4,8673,'2x sehari 2 tablet','Sesudah makan'),
(4,26566,'2x sehari 2 tablet','Sesudah makan'),
(4,41371,'1x sehari 1 tablet','Saat makan'),
(4,43332,'3x sehari 2 tablet','Sebelum makan'),
(4,45769,'3x sehari 1 tablet','Sesudah makan'),
(4,48581,'2x sehari 2 tablet','Sebelum makan'),
(38,4274,'1x sehari 1 tablet','Saat makan'),
(38,15612,'3x sehari 2 tablet','Saat makan'),
(38,32741,'1x sehari 1 tablet','Sebelum makan'),
(38,45769,'2x sehari 1 tablet','Saat makan'),
(1026,8673,'2x sehari 2 tablet','Saat makan'),
(1026,15051,'2x sehari 2 tablet','Sesudah makan'),
(1026,30850,'2x sehari 2 tablet','Saat makan'),
(1026,33585,'3x sehari 2 tablet','Sebelum makan'),
(1026,46859,'2x sehari 2 tablet','Sebelum makan'),
(1072,8673,'2x sehari 2 tablet','Sebelum makan'),
(1072,15051,'3x sehari 1 tablet','Sebelum makan'),
(1072,22666,'3x sehari 1 tablet','Sebelum makan'),
(1072,30781,'2x sehari 2 tablet','Saat makan'),
(1072,34674,'3x sehari 1 tablet','Sebelum makan'),
(1072,41371,'2x sehari 1 tablet','Sesudah makan'),
(1072,45116,'1x sehari 2 tablet','Sesudah makan'),
(1461,10760,'1x sehari 2 tablet','Sebelum makan'),
(1461,22666,'3x sehari 1 tablet','Sesudah makan'),
(1461,24560,'2x sehari 2 tablet','Sesudah makan'),
(1461,24668,'1x sehari 2 tablet','Sebelum makan'),
(1461,26337,'1x sehari 2 tablet','Saat makan'),
(1461,26566,'3x sehari 2 tablet','Sebelum makan'),
(1461,30850,'3x sehari 2 tablet','Saat makan'),
(1461,43332,'2x sehari 1 tablet','Sebelum makan'),
(1992,4274,'3x sehari 2 tablet','Sesudah makan'),
(1992,5278,'3x sehari 1 tablet','Sebelum makan'),
(1992,10760,'2x sehari 2 tablet','Sesudah makan'),
(1992,22666,'3x sehari 2 tablet','Saat makan'),
(1992,24668,'3x sehari 2 tablet','Saat makan'),
(1992,28005,'2x sehari 2 tablet','Sesudah makan'),
(1992,28544,'3x sehari 2 tablet','Sebelum makan'),
(1992,32741,'3x sehari 1 tablet','Sebelum makan'),
(2551,24668,'3x sehari 2 tablet','Saat makan'),
(3040,28544,'3x sehari 1 tablet','Saat makan'),
(3040,43322,'3x sehari 2 tablet','Sesudah makan'),
(3040,43332,'1x sehari 1 tablet','Sesudah makan'),
(3044,8673,'2x sehari 2 tablet','Saat makan'),
(3044,28005,'3x sehari 1 tablet','Sesudah makan'),
(3044,29779,'2x sehari 2 tablet','Saat makan'),
(3044,30781,'2x sehari 2 tablet','Sesudah makan'),
(3271,277,'2x sehari 1 tablet','Sebelum makan'),
(3271,16977,'3x sehari 1 tablet','Sebelum makan'),
(3271,26566,'3x sehari 2 tablet','Saat makan'),
(3271,28005,'1x sehari 2 tablet','Saat makan'),
(3271,33585,'2x sehari 1 tablet','Saat makan'),
(3297,22638,'3x sehari 1 tablet','Sesudah makan'),
(3297,24560,'1x sehari 1 tablet','Sesudah makan'),
(3297,28544,'1x sehari 1 tablet','Sebelum makan'),
(3297,43332,'1x sehari 1 tablet','Saat makan'),
(4457,4274,'1x sehari 2 tablet','Sebelum makan'),
(4457,10760,'2x sehari 2 tablet','Saat makan'),
(4457,24560,'3x sehari 1 tablet','Sebelum makan'),
(4457,24668,'2x sehari 1 tablet','Saat makan'),
(4457,30850,'2x sehari 1 tablet','Sebelum makan'),
(4457,34674,'3x sehari 1 tablet','Sesudah makan'),
(4457,45769,'2x sehari 1 tablet','Sesudah makan'),
(4859,277,'3x sehari 2 tablet','Sebelum makan'),
(4859,18809,'1x sehari 1 tablet','Saat makan'),
(4859,34674,'2x sehari 1 tablet','Sebelum makan'),
(4859,43908,'3x sehari 1 tablet','Saat makan'),
(5116,277,'3x sehari 1 tablet','Saat makan'),
(5116,18809,'1x sehari 2 tablet','Sesudah makan'),
(5116,26566,'1x sehari 2 tablet','Sesudah makan'),
(5116,30781,'1x sehari 1 tablet','Sesudah makan'),
(5116,48581,'2x sehari 1 tablet','Sebelum makan'),
(6872,10760,'3x sehari 1 tablet','Sesudah makan'),
(6872,26337,'2x sehari 2 tablet','Saat makan'),
(6872,26566,'1x sehari 2 tablet','Sesudah makan'),
(6872,31707,'3x sehari 1 tablet','Saat makan'),
(7532,15612,'3x sehari 1 tablet','Sebelum makan'),
(7532,22638,'1x sehari 1 tablet','Saat makan'),
(7532,29779,'3x sehari 1 tablet','Sesudah makan'),
(7532,31707,'1x sehari 2 tablet','Saat makan'),
(7532,43322,'3x sehari 1 tablet','Sesudah makan'),
(7532,43908,'1x sehari 2 tablet','Sesudah makan'),
(7532,46859,'3x sehari 1 tablet','Sebelum makan'),
(8592,5278,'1x sehari 2 tablet','Saat makan'),
(8592,18809,'1x sehari 2 tablet','Sebelum makan'),
(8592,22666,'3x sehari 2 tablet','Sebelum makan'),
(8592,30850,'1x sehari 2 tablet','Sesudah makan'),
(8592,45769,'2x sehari 2 tablet','Sebelum makan'),
(8670,277,'2x sehari 2 tablet','Sesudah makan'),
(8670,29779,'3x sehari 2 tablet','Saat makan'),
(8887,5278,'2x sehari 2 tablet','Saat makan'),
(8887,16977,'3x sehari 1 tablet','Saat makan'),
(8887,18809,'1x sehari 2 tablet','Saat makan'),
(8887,28544,'1x sehari 1 tablet','Sesudah makan'),
(8887,33585,'3x sehari 1 tablet','Saat makan'),
(8887,43332,'1x sehari 2 tablet','Sesudah makan'),
(8887,45116,'3x sehari 1 tablet','Sebelum makan'),
(9771,28005,'2x sehari 2 tablet','Sesudah makan'),
(9771,31707,'3x sehari 2 tablet','Sesudah makan');
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
INSERT INTO `rumah_sakit` (`id_rumah_sakit`, `nama_rumah_sakit`, `provinsi`, `kota`, `jalan`) VALUES (6,'RS (Persero) Tbk Singkawang','Papua','Tangerang Selatan','Gg. Laswi No. 7'),
(95,'RS Tbk Surabaya','Nusa Tenggara Barat','Salatiga','Jalan Sentot Alibasa No. 41'),
(102,'RS (Persero) Tbk Ambon','Kepulauan Riau','Padangpanjang','Gg. Cikutra Barat No. 5'),
(122,'RS (Persero) Tbk Palopo','DI Yogyakarta','Pekalongan','Jalan Moch. Ramdan No. 3'),
(247,'RS Tbk Solok','Sulawesi Utara','Ambon','Gang Dipatiukur No. 461'),
(383,'RS Tbk Batu','Maluku','Kupang','Gg. Sukabumi No. 788'),
(691,'RS Tbk Kota Administrasi Jakarta Utara','Kalimantan Timur','Cirebon','Jalan Kutai No. 059'),
(699,'RS Tbk Sibolga','Nusa Tenggara Barat','Bau-Bau','Jl. Indragiri No. 4'),
(796,'RS (Persero) Tbk Tomohon','Jambi','Palembang','Jalan Yos Sudarso No. 2'),
(802,'RS (Persero) Tbk Sorong','Sulawesi Utara','Palu','Jalan Medokan Ayu No. 24'),
(837,'RS Tbk Lhokseumawe','Bali','Kota Administrasi Jakarta Utara','Jalan Rungkut Industri No. 88'),
(840,'RS (Persero) Tbk Salatiga','DI Yogyakarta','Ternate','Jl. Cihampelas No. 375'),
(844,'RS (Persero) Tbk Subulussalam','Riau','Banjar','Gang Cikutra Barat No. 1'),
(851,'RS Tbk Sorong','Riau','Bontang','Jl. BKR No. 44'),
(894,'RS (Persero) Tbk Pagaralam','Bengkulu','Ambon','Gang Kendalsari No. 72'),
(900,'RS (Persero) Tbk Tegal','Kalimantan Tengah','Tebingtinggi','Jalan Rawamangun No. 7'),
(903,'RS (Persero) Tbk Malang','Aceh','Prabumulih','Gg. Lembong No. 4'),
(933,'RS Tbk Tangerang','Maluku','Prabumulih','Jl. W.R. Supratman No. 139'),
(942,'RS Tbk Pematangsiantar','Sumatera Selatan','Kota Administrasi Jakarta Selatan','Gang Cikutra Barat No. 971'),
(978,'RS (Persero) Tbk Pontianak','Bengkulu','Bandung','Jalan Cikapayang No. 22');
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
INSERT INTO `telepon_pengguna` (`email`, `no_telepon`) VALUES ('adriansyahulva@example.com','+62 (272) 635 3558'),
('ayulianti@example.com','(0437) 077-7166'),
('ayulianti@example.com','+62-577-514-4772'),
('balidin95@example.net','(0226) 503-8677'),
('cecepwibisono@example.org','+62-00-054-9081'),
('cecepwibisono@example.org','+62-022-683-1497'),
('cecepwibisono@example.org','0858407138'),
('chandra75@example.org','0816385533'),
('darman63@example.org','(0765) 386-9859'),
('darman63@example.org','+62-047-347-3148'),
('darman63@example.org','+62-06-925-3789'),
('darmanahutagalung@example.com','+62-063-013-8694'),
('darurahimah@example.org','+62-248-385-6228'),
('dwihutasoit@example.org','+62 (034) 831-4372'),
('ekurniawan@example.org','+62 (051) 139-0677'),
('farhunnisa22@example.net','+62-0995-619-5908'),
('gadang46@example.net','+62 (092) 429-5142'),
('galionohutapea@example.org','+62-049-523-1056'),
('gutami@example.org','+62-0376-510-4444'),
('hairyantokurniawan@example.org','089 760 9889'),
('harja84@example.org','+62 (004) 316-5825'),
('hastuticatur@example.com','+62 (061) 224 9270'),
('ika82@example.org','+62 (73) 579-8231'),
('ilyas30@example.com','+62 (598) 716 4548'),
('juli79@example.org','+62 (094) 831 1848'),
('kamilabudiyanto@example.org','+62 (98) 384-7019'),
('liliwibowo@example.net','+62-001-040-9319'),
('limanpalastri@example.org','+62 (0108) 612 3905'),
('lmandasari@example.com','080 589 2974'),
('marsudi13@example.net','0896630460'),
('maulanajinawi@example.org','(0786) 523-1428'),
('maulanajinawi@example.org','(088) 970 5718'),
('namagapandu@example.net','+62 (71) 966 6686'),
('nsimanjuntak@example.org','+62 (20) 769-8192'),
('nsimanjuntak@example.org','+62-409-094-7140'),
('opanhandayani@example.org','+62 (76) 954-7705'),
('opanhandayani@example.org','+62 (88) 681-1361'),
('oprayoga@example.net','+62-0080-002-7470'),
('pmansur@example.net','+62 (09) 377 4918'),
('poktaviani@example.org','+62 (0023) 420 6820'),
('putrasiti@example.com','+62 (43) 292 7234'),
('radika51@example.com','083 855 6405'),
('ramadanaisyah@example.com','+62-097-664-2027'),
('ramadanaisyah@example.com','084 870 1450'),
('samosiropung@example.org','(0106) 150 7940'),
('saptonoharsaya@example.org','0882584069'),
('saragihwira@example.net','+62 (070) 679-1173'),
('suryonorahmi@example.org','(0567) 506-9704'),
('tprasasta@example.net','+62 (0858) 153-4802'),
('tprasasta@example.net','+62 (86) 776 2030');
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
INSERT INTO `telepon_rumah_sakit` (`id_rumah_sakit`, `no_telepon`) VALUES (6,'+62 (058) 334 3605'),
(95,'+62 (48) 209-6438'),
(102,'086 128 9065'),
(122,'+62-85-215-3555'),
(247,'+62 (0777) 135 8160'),
(383,'(046) 963 4416'),
(691,'+62 (889) 035 7532'),
(699,'+62-045-965-8513'),
(796,'+62-02-850-6019'),
(802,'+62-0988-712-6440'),
(837,'(0120) 774 0407'),
(840,'0850666980'),
(844,'+62 (79) 459-5239'),
(851,'(0180) 686 5694'),
(851,'(036) 653 8207'),
(851,'(0414) 293 6085'),
(851,'(049) 335-0965'),
(851,'(051) 632-3534'),
(851,'(0573) 209-5923'),
(851,'(074) 407-1484'),
(851,'(082) 664 3586'),
(851,'(092) 250 8745'),
(851,'+62 (0034) 542-8191'),
(851,'+62 (0274) 180 1550'),
(851,'+62 (0340) 667-7784'),
(851,'+62 (035) 386-2824'),
(851,'+62 (048) 580-1526'),
(851,'+62 (073) 997 7674'),
(851,'+62 (088) 675 0821'),
(851,'+62 (091) 982-8381'),
(851,'+62 (141) 169-7830'),
(851,'+62 (33) 717-8327'),
(851,'+62 (41) 274-8620'),
(851,'+62 (48) 461 5429'),
(851,'+62 (647) 386-1182'),
(851,'+62 (76) 676 6479'),
(851,'+62-0758-438-0003'),
(851,'+62-078-083-5469'),
(851,'+62-0844-171-0743'),
(851,'+62-09-544-3573'),
(851,'+62-747-787-1320'),
(851,'082 149 7798'),
(851,'0836124153'),
(851,'086 489 4869'),
(894,'+62 (15) 240 2420'),
(900,'0874438379'),
(903,'(0503) 367 4870'),
(933,'+62 (581) 797-3260'),
(942,'+62 (004) 118 3734'),
(978,'(0157) 486-0237');
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
INSERT INTO `tenaga_medis` (`email`, `nama_departemen`, `id_rumah_sakit`, `NIKes`, `jenis_profesi`) VALUES ('balidin95@example.net','Gigi',6,'0584363913158','Dokter Spesialis'),
('darmanahutagalung@example.com','Neurologi',942,'7906261130384','Dokter Spesialis'),
('dwihutasoit@example.org','Gigi',102,'8261763690927','Dokter Spesialis'),
('ekurniawan@example.org','Neurologi',699,'7288730408355','Perawat'),
('gadang46@example.net','Gigi',102,'7906996187363','Dokter Umum'),
('galionohutapea@example.org','Anak',102,'4449146585617','Dokter Spesialis'),
('gutami@example.org','Kardiologi',837,'6244850845860','Dokter Umum'),
('hairyantokurniawan@example.org','Anak',95,'1212347023805','Dokter Umum'),
('harja84@example.org','Neurologi',894,'0493490614077','Dokter Umum'),
('ilyas30@example.com','Kulit',102,'7283428956712','Dokter Umum'),
('kamilabudiyanto@example.org','Gigi',900,'4525931229970','Dokter Spesialis'),
('marsudi13@example.net','Kulit',796,'3730928436144','Dokter Umum'),
('nsimanjuntak@example.org','Umum',691,'5208954637463','Dokter Umum'),
('oprayoga@example.net','Kulit',691,'5575838286636','Dokter Spesialis'),
('radika51@example.com','Kardiologi',851,'2415761026363','Perawat'),
('samosiropung@example.org','Umum',844,'4712616323980','Perawat'),
('saptonoharsaya@example.org','Kardiologi',802,'8801118356902','Perawat'),
('saragihwira@example.net','Anak',95,'1981786895808','Perawat'),
('suryonorahmi@example.org','Gigi',6,'8801439345128','Bidan'),
('tprasasta@example.net','Kulit',840,'8700776381786','Dokter Spesialis');
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

-- Dump completed on 2025-05-16 15:21:05
