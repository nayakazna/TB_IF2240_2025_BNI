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
('afirgantoro@example.com','Jambi','Tebingtinggi','Jl. Jend. Sudirman No. 68'),
('bakionoaryani@example.com','Lampung','Tual','Jl. Dr. Djunjunan No. 907'),
('balamantri53@example.org','Kepulauan Riau','Tidore Kepulauan','Gang Tubagus Ismail No. 2'),
('balamantri53@example.org','Nusa Tenggara Timur','Payakumbuh','Gang Gardujati No. 39'),
('bprabowo@example.com','Gorontalo','Batam','Gg. Jakarta No. 4'),
('bprabowo@example.com','Kalimantan Timur','Pematangsiantar','Jalan Cihampelas No. 83'),
('bprabowo@example.com','Sulawesi Selatan','Cimahi','Gang K.H. Wahid Hasyim No. 2'),
('cawisono25@example.com','Bali','Padangpanjang','Gg. Soekarno Hatta No. 0'),
('cawisonosetiawan@example.net','Jawa Tengah','Payakumbuh','Jl. R.E Martadinata No. 713'),
('cawisonosetiawan@example.net','Sulawesi Tengah','Denpasar','Gg. Jayawijaya No. 4'),
('devi09@example.org','DKI Jakarta','Bukittinggi','Gg. Antapani Lama No. 1'),
('devi09@example.org','DKI Jakarta','Padang Sidempuan','Jalan Raya Setiabudhi No. 94'),
('enashiruddin@example.com','Gorontalo','Kota Administrasi Jakarta Utara','Gang Antapani Lama No. 052'),
('enashiruddin@example.com','Sulawesi Selatan','Tomohon','Gang KH Amin Jasuta No. 362'),
('faridacornelia@example.com','Bali','Tegal','Gg. Dipatiukur No. 363'),
('hamimahutasoit@example.net','Kalimantan Barat','Kendari','Gang Ciumbuleuit No. 08'),
('hamimahutasoit@example.net','Sulawesi Tengah','Langsa','Gg. Gedebage Selatan No. 67'),
('harjaya38@example.org','Riau','Kendari','Gg. Laswi No. 01'),
('harjaya38@example.org','Riau','Padang Sidempuan','Jalan Rawamangun No. 5'),
('himawansetiawan@example.com','Kalimantan Tengah','Blitar','Jalan Bangka Raya No. 54'),
('himawansetiawan@example.com','Kalimantan Timur','Tasikmalaya','Gang Astana Anyar No. 6'),
('himawansetiawan@example.com','Kepulauan Riau','Parepare','Gg. M.T Haryono No. 5'),
('himawansetiawan@example.com','Kepulauan Riau','Tasikmalaya','Gang Tubagus Ismail No. 71'),
('himawansetiawan@example.com','Nusa Tenggara Timur','Subulussalam','Jl. Cempaka No. 063'),
('hutapeasakura@example.com','Aceh','Ternate','Jalan BKR No. 138'),
('hutapeasakura@example.com','Kalimantan Utara','Bandar Lampung','Jalan Moch. Ramdan No. 7'),
('hutapeasakura@example.com','Riau','Tebingtinggi','Jalan Peta No. 5'),
('hutasoitasirwada@example.com','Jawa Barat','Bandung','Gang Tubagus Ismail No. 29'),
('hutasoitasirwada@example.com','Kalimantan Barat','Binjai','Gg. Jakarta No. 929'),
('hutasoitasirwada@example.com','Papua','Bitung','Gg. Moch. Toha No. 7'),
('iadriansyah@example.org','Sumatera Selatan','Bima','Gg. Raya Setiabudhi No. 03'),
('ihsan58@example.net','Jambi','Jayapura','Gang Rawamangun No. 579'),
('ihsan58@example.net','Riau','Padangpanjang','Gang Kapten Muslihat No. 581'),
('jabalhidayat@example.net','Bengkulu','Blitar','Gang Kebonjati No. 602'),
('jabalhidayat@example.net','Sumatera Utara','Tangerang Selatan','Gg. Cikapayang No. 9'),
('jelitasusanti@example.net','Jawa Barat','Bekasi','Jl. Cempaka No. 26'),
('jelitasusanti@example.net','Nusa Tenggara Barat','Probolinggo','Jl. Jayawijaya No. 7'),
('kania15@example.com','Kalimantan Selatan','Manado','Gg. Dr. Djunjunan No. 89'),
('ksamosir@example.org','Jawa Timur','Palu','Jalan Dipenogoro No. 24'),
('kurniawanozy@example.com','Kalimantan Tengah','Tarakan','Jl. Kendalsari No. 63'),
('kusmawatilaswi@example.net','Aceh','Payakumbuh','Jl. Rajawali Barat No. 909'),
('kusmawatilaswi@example.net','Nusa Tenggara Timur','Bandar Lampung','Gg. Wonoayu No. 9'),
('kusumorika@example.net','Nusa Tenggara Barat','Semarang','Gg. Otto Iskandardinata No. 1'),
('laswi67@example.net','Bengkulu','Banjarbaru','Jalan S. Parman No. 6'),
('laswi67@example.net','Jambi','Padangpanjang','Jalan Ahmad Yani No. 862'),
('lfirmansyah@example.net','Lampung','Tomohon','Gg. Lembong No. 69'),
('lmelani@example.net','Aceh','Pekalongan','Jalan Antapani Lama No. 868'),
('ltampubolon@example.com','Kalimantan Barat','Manado','Jalan Gardujati No. 927'),
('ltampubolon@example.com','Sulawesi Selatan','Bengkulu','Gg. Tebet Barat Dalam No. 462'),
('marsito79@example.com','Maluku','Sabang','Jl. Rajiman No. 38'),
('mulyanicinta@example.org','Bengkulu','Pekanbaru','Jalan Laswi No. 390'),
('mulyanicinta@example.org','Kalimantan Selatan','Ambon','Gg. Indragiri No. 09'),
('mulyanicinta@example.org','Nusa Tenggara Barat','Tangerang Selatan','Gang Gegerkalong Hilir No. 531'),
('mulyanicinta@example.org','Nusa Tenggara Timur','Purwokerto','Jl. Moch. Ramdan No. 70'),
('mulyanicinta@example.org','Sumatera Selatan','Lhokseumawe','Gg. K.H. Wahid Hasyim No. 197'),
('nasyiahrafi@example.org','Aceh','Depok','Gang Bangka Raya No. 095'),
('nasyiahrafi@example.org','Jawa Barat','Singkawang','Jalan Soekarno Hatta No. 7'),
('nasyiahrafi@example.org','Sulawesi Selatan','Surakarta','Jl. Dipatiukur No. 5'),
('nwijayanti@example.com','Riau','Pagaralam','Jalan Kutisari Selatan No. 040'),
('onashiruddin@example.net','DI Yogyakarta','Bandung','Jalan Ahmad Dahlan No. 107'),
('onashiruddin@example.net','Kepulauan Riau','Tual','Gg. Soekarno Hatta No. 48'),
('onashiruddin@example.net','Sumatera Barat','Bengkulu','Jl. M.H Thamrin No. 215'),
('pandu86@example.org','Aceh','Magelang','Jl. Dipatiukur No. 6'),
('pandu86@example.org','Banten','Lhokseumawe','Jl. Jend. A. Yani No. 34'),
('prasetyakania@example.net','Nusa Tenggara Timur','Tidore Kepulauan','Jalan Ahmad Dahlan No. 821'),
('prasetyakania@example.net','Riau','Tual','Gang Laswi No. 18'),
('qadriansyah@example.com','Bengkulu','Subulussalam','Gang Otto Iskandardinata No. 8'),
('qadriansyah@example.com','Papua Barat','Kupang','Jalan Dipenogoro No. 21'),
('qadriansyah@example.com','Sulawesi Utara','Bandung','Jl. Raya Ujungberung No. 25'),
('qnasyiah@example.com','DKI Jakarta','Bekasi','Gang Rajawali Barat No. 16'),
('qnasyiah@example.com','Nusa Tenggara Barat','Semarang','Jalan Ahmad Dahlan No. 4'),
('rpurnawati@example.com','Papua Barat','Tomohon','Jalan Cihampelas No. 579'),
('rpurnawati@example.com','Sumatera Selatan','Meulaboh','Gg. Pasirkoja No. 5'),
('rsuryatmi@example.org','Maluku Utara','Pagaralam','Gang Ahmad Dahlan No. 567'),
('ryuliarti@example.net','Jawa Tengah','Lhokseumawe','Gang Raya Setiabudhi No. 498'),
('ryuliarti@example.net','Kalimantan Selatan','Tangerang Selatan','Gg. Dipatiukur No. 585'),
('ryuliarti@example.net','Kepulauan Bangka Belitung','Makassar','Jl. Rajawali Timur No. 6'),
('safinarahimah@example.com','Banten','Tanjungpinang','Gang Suniaraja No. 098'),
('safinarahimah@example.com','Sulawesi Selatan','Palopo','Jalan Cihampelas No. 1'),
('safinarahimah@example.com','Sulawesi Tenggara','Tual','Gang Indragiri No. 37'),
('shalim@example.net','Kalimantan Utara','Tidore Kepulauan','Gang Jakarta No. 657'),
('sihombingdipa@example.net','Kalimantan Utara','Bogor','Jalan Rawamangun No. 563'),
('sihombingdipa@example.net','Riau','Palembang','Gang Stasiun Wonokromo No. 4'),
('simanjuntakkamaria@example.net','Sulawesi Utara','Jambi','Gg. Cihampelas No. 617'),
('siraitdarman@example.net','Aceh','Bengkulu','Gg. H.J Maemunah No. 034'),
('siraitdarman@example.net','Jawa Barat','Sawahlunto','Gang Setiabudhi No. 728'),
('siraitdarman@example.net','Lampung','Pekalongan','Jl. Otto Iskandardinata No. 26'),
('siraitdarman@example.net','Sumatera Barat','Pasuruan','Jl. Dipenogoro No. 878'),
('starihoran@example.net','Sulawesi Selatan','Kota Administrasi Jakarta Selatan','Gang Rungkut Industri No. 15'),
('starihoran@example.net','Sumatera Barat','Cirebon','Gang M.H Thamrin No. 374'),
('starihoran@example.net','Sumatera Barat','Salatiga','Jalan PHH. Mustofa No. 73'),
('starihoran@example.net','Sumatera Selatan','Batam','Gg. Kutisari Selatan No. 83'),
('tirafirmansyah@example.com','Sumatera Utara','Kota Administrasi Jakarta Timur','Jalan Cikapayang No. 194'),
('verakusumo@example.net','DI Yogyakarta','Tarakan','Jl. Tubagus Ismail No. 0'),
('wijayantigandi@example.net','Kalimantan Tengah','Pangkalpinang','Gang Peta No. 3'),
('wijayantigandi@example.net','Nusa Tenggara Barat','Pontianak','Jl. K.H. Wahid Hasyim No. 12'),
('yogaputra@example.net','DI Yogyakarta','Bengkulu','Jl. Sukabumi No. 2'),
('yogaputra@example.net','Jawa Tengah','Cilegon','Jalan Jayawijaya No. 8'),
('yogaputra@example.net','Kepulauan Riau','Samarinda','Gg. Sadang Serang No. 800'),
('ypuspita@example.net','Lampung','Yogyakarta','Gg. Erlangga No. 7');
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
('Anak',39,'Gedung Utama'),
('Anak',125,'Gedung Timur'),
('Anak',269,'Gedung C'),
('Anak',357,'Gedung Timur'),
('Anak',484,'Gedung A'),
('Anak',642,'Gedung A'),
('Bedah',125,'Gedung C'),
('Bedah',199,'Gedung C'),
('Bedah',273,'Gedung B'),
('Bedah',412,'Gedung Utama'),
('Bedah',736,'Gedung C'),
('Bedah',800,'Gedung B'),
('Bedah',967,'Gedung B'),
('Gigi',125,'Gedung B'),
('Gigi',357,'Gedung Utama'),
('Gigi',385,'Gedung Utama'),
('Gigi',602,'Gedung Utama'),
('Kardiologi',227,'Gedung Utama'),
('Kardiologi',300,'Gedung C'),
('Kardiologi',412,'Gedung C'),
('Kardiologi',602,'Gedung C'),
('Kardiologi',680,'Gedung Utama'),
('Kardiologi',800,'Gedung B'),
('Kardiologi',967,'Gedung A'),
('Kulit',39,'Gedung Timur'),
('Kulit',273,'Gedung Utama'),
('Kulit',385,'Gedung A'),
('Kulit',409,'Gedung Utama'),
('Kulit',412,'Gedung Timur'),
('Kulit',561,'Gedung Timur'),
('Kulit',602,'Gedung B'),
('Kulit',642,'Gedung B'),
('Kulit',736,'Gedung Utama'),
('Kulit',760,'Gedung Timur'),
('Neurologi',39,'Gedung B'),
('Neurologi',227,'Gedung C'),
('Neurologi',412,'Gedung A'),
('Neurologi',484,'Gedung Utama'),
('Neurologi',561,'Gedung Timur'),
('Neurologi',642,'Gedung A'),
('Neurologi',800,'Gedung A'),
('Neurologi',967,'Gedung Timur'),
('Umum',125,'Gedung A'),
('Umum',199,'Gedung A'),
('Umum',269,'Gedung A'),
('Umum',300,'Gedung C'),
('Umum',409,'Gedung Utama'),
('Umum',561,'Gedung C'),
('Umum',680,'Gedung C'),
('Umum',760,'Gedung C');
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
(51,227,'2025-05-22 14:32:17','Repellat error fugiat nam earum repellat temporibus saepe cumque voluptatibus doloremque commodi.'),
(52,357,'2025-06-04 19:38:13','Iste corporis totam dolorem consequatur amet atque eius cupiditate recusandae veniam veniam ipsa.'),
(53,760,'2025-05-05 19:29:04','Nam ut sint unde laborum laboriosam pariatur perferendis eius tempore harum.'),
(54,357,'2025-06-15 12:21:56','Magni nam quisquam inventore iure ad fuga magni adipisci perferendis.'),
(55,680,'2025-06-29 22:53:57','Eveniet minima quae voluptatem assumenda est voluptatum.'),
(56,412,'2025-05-21 22:45:21','Suscipit debitis repellendus sit tempora nesciunt maiores nesciunt ducimus qui numquam.'),
(57,484,'2025-06-28 02:53:42','Nobis eveniet quia recusandae voluptatibus esse.'),
(58,273,'2025-05-26 22:39:29','Deserunt at nesciunt dignissimos excepturi id veniam atque.'),
(59,227,'2025-06-11 13:02:51','Quae nam fuga aliquam ut ad harum eligendi facilis asperiores adipisci unde minima.'),
(60,642,'2025-06-07 01:39:31','Sed inventore quisquam aliquid occaecati quisquam officiis aliquid placeat ullam tempore fugiat eum.'),
(61,273,'2025-05-25 03:33:33','Impedit vitae unde vero quae ipsa a ratione reiciendis repudiandae.'),
(62,484,'2025-05-03 21:14:48','Illo ipsum fugiat consequuntur vero eveniet sequi.'),
(63,199,'2025-06-20 19:01:24','Voluptatum sed non est architecto cum non.'),
(64,125,'2025-05-22 15:24:36','Velit molestiae explicabo facilis iusto modi.'),
(65,602,'2025-06-14 18:23:21','Odit tenetur cupiditate officiis sapiente deserunt.'),
(66,412,'2025-07-01 01:26:51','Nisi dolores laborum non ipsa nostrum commodi ullam eligendi at quod.'),
(67,736,'2025-05-13 05:46:29','Rem iste maiores nemo inventore suscipit modi aliquam delectus temporibus ipsam qui.'),
(68,409,'2025-05-30 14:49:49','Natus non harum vel dolor odit libero recusandae sit autem.'),
(69,227,'2025-06-08 13:59:35','Reprehenderit sunt fugiat rerum repudiandae ad reprehenderit.'),
(70,227,'2025-07-01 00:35:28','Ducimus voluptate vitae eos perspiciatis accusantium provident.'),
(71,760,'2025-05-22 22:35:37','Minima odio ab necessitatibus incidunt impedit sit cumque nostrum.'),
(72,736,'2025-06-19 09:21:10','Voluptas id perferendis voluptatibus sunt voluptate velit consequatur ipsam commodi voluptas provident laudantium.'),
(73,967,'2025-06-07 23:53:32','Perferendis nisi dicta veniam eos officia non.'),
(74,269,'2025-05-29 04:33:17','Hic neque quia fugiat nostrum repellendus.'),
(75,357,'2025-06-13 06:45:18','Perspiciatis cupiditate possimus quos id dolorem laboriosam accusantium ea corrupti placeat eos.'),
(76,561,'2025-05-29 15:19:08','Fugiat cupiditate ducimus sunt omnis aliquid a excepturi maxime.'),
(77,125,'2025-05-07 07:55:41','Ad ratione exercitationem expedita qui assumenda harum quidem tempora.'),
(78,642,'2025-06-27 18:45:21','Omnis adipisci sunt accusamus corrupti corporis vel laboriosam odit.'),
(79,269,'2025-05-27 09:20:33','Ea mollitia alias error porro aut esse.'),
(80,412,'2025-05-28 20:56:09','Odio omnis voluptates adipisci cum nulla amet nesciunt eaque maiores.'),
(81,412,'2025-05-30 19:38:21','Dolorum vitae maxime aperiam unde quisquam ex possimus assumenda exercitationem inventore.'),
(82,269,'2025-06-05 01:04:18','Dolorem illo non aut dolorem temporibus.'),
(83,967,'2025-06-20 01:04:12','Blanditiis eaque aperiam pariatur quam fugit est recusandae nesciunt distinctio voluptates repellendus pariatur.'),
(84,273,'2025-06-29 15:10:12','Sequi itaque excepturi impedit quaerat harum.'),
(85,412,'2025-05-23 18:50:04','At ratione eligendi corporis molestias dignissimos.'),
(86,800,'2025-05-31 17:54:52','Quidem placeat quaerat id iste veniam commodi molestias autem accusantium.'),
(87,412,'2025-06-20 10:46:47','Assumenda corporis totam sint ipsa sequi tempora iure voluptates.'),
(88,680,'2025-06-23 14:48:40','Veniam et ut voluptatem culpa ex.'),
(89,412,'2025-06-04 04:26:57','Accusamus laboriosam inventore consequatur vel error.'),
(90,561,'2025-06-05 22:37:08','Maiores totam illo laudantium mollitia nam ut tempore voluptate animi.'),
(91,300,'2025-05-21 21:18:56','Nihil recusandae adipisci asperiores odio expedita libero facere veritatis voluptatem.'),
(92,561,'2025-06-23 10:14:14','Dolorum eos quo cumque facere vitae.'),
(93,642,'2025-05-28 19:34:19','Perferendis provident cupiditate placeat animi aliquid alias quisquam consequatur amet officia.'),
(94,760,'2025-05-26 00:18:27','Est ducimus tempore quis beatae architecto ipsam enim excepturi expedita harum voluptatibus quod.'),
(95,357,'2025-05-26 19:18:45','Placeat sequi voluptatem laudantium perspiciatis porro.'),
(96,39,'2025-05-07 09:19:13','Nulla aliquid vel vitae molestias ut ex commodi libero.'),
(97,125,'2025-05-11 01:55:59','Architecto nam facere necessitatibus et fugit.'),
(98,561,'2025-05-21 19:21:18','Similique odio at ab fugiat reiciendis voluptatum odio sequi cum recusandae molestiae.'),
(99,385,'2025-05-19 21:29:32','Et non quaerat laborum quas tenetur laboriosam eum corrupti.'),
(100,967,'2025-05-30 21:31:47','Voluptas porro dolorem rerum occaecati occaecati illum hic dolore sint consequatur cupiditate.');
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
(1,409,'rehabilitasi',346322),
(2,409,'konsultasi',621269),
(3,800,'vaksinasi',356442),
(4,800,'konsultasi',269949),
(5,484,'konsultasi',593076),
(6,484,'rehabilitasi',475159),
(7,967,'rehabilitasi',649515),
(8,967,'laboratorium',621230),
(9,412,'vaksinasi',468282),
(10,412,'konsultasi',387814),
(11,385,'konsultasi',632999),
(12,385,'vaksinasi',746018),
(13,125,'vaksinasi',515726),
(14,125,'rehabilitasi',536505),
(15,269,'vaksinasi',135112),
(16,269,'konsultasi',544165),
(17,561,'fisioterapi',434583),
(18,561,'vaksinasi',252163),
(19,357,'laboratorium',748363),
(20,357,'konsultasi',351906),
(21,680,'radiologi',207115),
(22,680,'rehabilitasi',153183),
(23,273,'vaksinasi',573390),
(24,273,'fisioterapi',632454),
(25,602,'vaksinasi',738051),
(26,602,'fisioterapi',405419),
(27,760,'konsultasi',132903),
(28,760,'rehabilitasi',347895),
(29,227,'fisioterapi',737370),
(30,227,'laboratorium',464640),
(31,300,'radiologi',327991),
(32,300,'konsultasi',100012),
(33,199,'rehabilitasi',335365),
(34,199,'fisioterapi',506036),
(35,39,'rehabilitasi',548674),
(36,39,'radiologi',203181),
(37,642,'konsultasi',545766),
(38,642,'vaksinasi',506917),
(39,736,'vaksinasi',495055),
(40,736,'konsultasi',287646),
(41,561,'vaksinasi',149995),
(42,680,'vaksinasi',373416),
(43,800,'radiologi',200974),
(44,227,'laboratorium',410596),
(45,357,'rehabilitasi',308016),
(46,39,'laboratorium',511258),
(47,39,'laboratorium',296239),
(48,199,'konsultasi',473830),
(49,409,'rehabilitasi',553364),
(50,680,'rehabilitasi',370050);
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
(11236,'2025-03-05 15:02:05','transition B2C eyeballs'),
(11236,'2025-05-31 08:42:33','re-intermediate best-of-breed solutions'),
(12259,'2025-02-01 05:35:55','engineer bricks-and-clicks systems'),
(12259,'2025-02-27 01:50:20','engage collaborative bandwidth'),
(12259,'2025-04-09 00:08:58','embrace extensible vortals'),
(13151,'2025-01-28 20:24:56','maximize robust niches'),
(13151,'2025-04-13 02:15:30','scale killer niches'),
(13670,'2025-03-04 09:07:44','envisioneer 24/365 portals'),
(13670,'2025-04-15 20:07:15','e-enable front-end systems'),
(13773,'2025-02-19 15:09:33','monetize bricks-and-clicks info-mediaries'),
(16658,'2025-03-04 11:10:38','incentivize cross-media markets'),
(16658,'2025-05-03 03:07:19','iterate leading-edge convergence'),
(16757,'2025-03-31 15:03:53','facilitate out-of-the-box relationships'),
(18668,'2025-05-27 10:55:29','mesh B2C infrastructures'),
(18668,'2025-05-29 20:44:36','embrace next-generation e-tailers'),
(20887,'2025-05-03 00:39:21','seize 24/7 paradigms'),
(20887,'2025-05-08 23:54:39','aggregate killer relationships'),
(25619,'2025-02-24 08:27:11','utilize proactive methodologies'),
(27346,'2025-02-15 12:16:31','e-enable user-centric markets'),
(27346,'2025-02-23 05:27:33','strategize transparent schemas'),
(27346,'2025-04-29 21:37:57','aggregate dot-com initiatives'),
(29013,'2025-02-04 02:20:06','deliver global communities'),
(29013,'2025-02-26 13:37:41','engage enterprise markets'),
(29013,'2025-03-09 12:14:27','synthesize proactive info-mediaries'),
(30380,'2025-02-12 02:43:28','orchestrate cross-platform vortals'),
(30380,'2025-03-13 09:13:31','aggregate revolutionary web-readiness'),
(30380,'2025-05-29 15:00:27','embrace clicks-and-mortar markets'),
(31138,'2025-02-03 11:06:53','repurpose dynamic relationships'),
(31138,'2025-02-18 22:37:07','orchestrate enterprise initiatives'),
(31138,'2025-04-27 16:01:28','maximize clicks-and-mortar metrics'),
(31188,'2025-01-21 18:59:33','repurpose viral action-items'),
(32937,'2025-04-29 05:10:10','matrix 24/365 paradigms'),
(33005,'2025-02-05 03:26:39','engage bricks-and-clicks e-business'),
(33005,'2025-02-17 16:57:28','monetize proactive schemas'),
(33005,'2025-04-03 08:49:19','enable proactive niches'),
(37069,'2025-05-11 02:28:33','cultivate frictionless vortals'),
(37104,'2025-01-24 11:36:29','embrace viral e-commerce'),
(38037,'2025-01-02 06:10:05','envisioneer B2C convergence'),
(38037,'2025-02-11 18:28:06','synergize back-end ROI'),
(38037,'2025-03-09 12:28:45','reinvent open-source methodologies'),
(38473,'2025-05-20 22:35:17','optimize 24/365 e-markets'),
(40099,'2025-05-21 02:05:33','iterate bricks-and-clicks markets'),
(40204,'2025-03-17 18:14:09','disintermediate viral methodologies'),
(40285,'2025-02-19 20:24:25','innovate turn-key networks'),
(40285,'2025-03-31 16:18:41','matrix killer markets'),
(40285,'2025-04-19 20:49:40','synergize viral methodologies'),
(40285,'2025-04-23 03:09:46','e-enable wireless architectures'),
(42359,'2025-04-21 21:46:25','target interactive functionalities'),
(42359,'2025-05-23 00:55:44','morph bricks-and-clicks info-mediaries'),
(52849,'2025-02-14 12:44:32','leverage e-business relationships'),
(52849,'2025-03-14 03:40:58','embrace distributed systems'),
(52849,'2025-04-01 16:00:21','redefine mission-critical web services'),
(52849,'2025-05-17 09:05:52','exploit B2B web services'),
(54576,'2025-02-01 16:30:54','target real-time networks'),
(54576,'2025-04-14 12:31:22','benchmark visionary deliverables'),
(54576,'2025-04-24 08:58:46','innovate visionary paradigms'),
(55240,'2025-05-28 11:45:19','e-enable cutting-edge schemas'),
(56059,'2025-01-24 21:26:18','whiteboard collaborative e-commerce'),
(56059,'2025-05-20 14:07:04','exploit leading-edge applications'),
(61737,'2025-04-05 14:56:06','expedite cross-platform bandwidth'),
(63441,'2025-04-08 01:50:35','empower distributed vortals'),
(63441,'2025-05-09 16:49:21','evolve cross-media functionalities'),
(63441,'2025-05-24 14:28:30','scale enterprise relationships'),
(65621,'2025-02-24 04:22:08','iterate dynamic channels'),
(65621,'2025-03-15 15:54:52','maximize out-of-the-box supply-chains'),
(65621,'2025-03-20 15:25:24','syndicate seamless web services'),
(65621,'2025-05-07 13:06:40','enhance wireless e-business'),
(65621,'2025-05-22 03:46:44','repurpose B2B functionalities'),
(73326,'2025-02-13 04:13:13','iterate killer bandwidth'),
(73473,'2025-01-02 05:21:01','streamline 24/365 vortals'),
(73473,'2025-01-18 09:09:45','synthesize scalable niches'),
(75919,'2025-03-04 14:37:50','morph dynamic functionalities'),
(75919,'2025-03-14 16:43:42','envisioneer bricks-and-clicks action-items'),
(75919,'2025-03-15 07:36:32','whiteboard frictionless web services'),
(75919,'2025-05-09 17:15:03','maximize proactive networks'),
(78458,'2025-01-12 10:52:18','transition enterprise markets'),
(78458,'2025-02-23 22:43:08','streamline granular initiatives'),
(78458,'2025-03-15 00:30:53','re-intermediate out-of-the-box e-business'),
(80853,'2025-01-06 16:55:07','synergize extensible markets'),
(80853,'2025-01-15 16:19:09','scale back-end paradigms'),
(81745,'2025-01-07 04:24:38','innovate B2B vortals'),
(81745,'2025-05-13 04:05:29','syndicate mission-critical architectures'),
(81881,'2025-02-24 17:16:13','revolutionize extensible content'),
(81881,'2025-03-13 16:46:33','expedite transparent mindshare'),
(81881,'2025-04-25 21:23:52','innovate plug-and-play convergence'),
(84970,'2025-01-21 23:55:55','synergize collaborative e-tailers'),
(84970,'2025-03-16 22:14:18','synthesize open-source bandwidth'),
(84970,'2025-05-12 16:22:45','utilize clicks-and-mortar models'),
(84970,'2025-05-29 23:46:55','synergize enterprise functionalities'),
(90695,'2025-02-04 01:30:21','aggregate global technologies'),
(90695,'2025-02-11 22:59:20','unleash interactive e-markets'),
(90695,'2025-05-06 07:38:58','whiteboard frictionless initiatives'),
(91536,'2025-01-13 00:34:23','incubate distributed models'),
(91536,'2025-03-29 15:08:00','morph seamless eyeballs'),
(91636,'2025-01-30 17:41:13','deliver cross-platform deliverables'),
(91636,'2025-03-21 08:16:38','benchmark back-end initiatives'),
(93877,'2025-02-10 20:25:29','target proactive experiences'),
(93877,'2025-04-30 06:06:09','benchmark holistic channels'),
(93877,'2025-05-05 09:29:39','optimize one-to-one content'),
(96038,'2025-02-04 04:40:56','strategize seamless technologies');
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
('jelitasusanti@example.net',80,'ajiono35@example.org',412),
('qnasyiah@example.com',81,'ajiono35@example.org',412),
('hutapeasakura@example.com',88,'anahalimah@example.org',680),
('nasyiahrafi@example.org',55,'anahalimah@example.org',680),
('kania15@example.com',57,'asirwandafirgantoro@example.org',484),
('hutapeasakura@example.com',65,'ayuliarti@example.net',602),
('kurniawanozy@example.com',65,'ayuliarti@example.net',602),
('onashiruddin@example.net',96,'betaniahutasoit@example.org',39),
('cawisono25@example.com',96,'bpudjiastuti@example.com',39),
('enashiruddin@example.com',52,'cinta97@example.com',357),
('iadriansyah@example.org',54,'cinta97@example.com',357),
('ihsan58@example.net',75,'cinta97@example.com',357),
('bprabowo@example.com',87,'cmanullang@example.com',412),
('faridacornelia@example.com',81,'cmanullang@example.com',412),
('enashiruddin@example.com',81,'cornelia32@example.org',412),
('jabalhidayat@example.net',85,'cornelia32@example.org',412),
('bprabowo@example.com',51,'darman57@example.org',227),
('jelitasusanti@example.net',59,'darman57@example.org',227),
('kania15@example.com',69,'darman57@example.org',227),
('kurniawanozy@example.com',69,'darman57@example.org',227),
('nwijayanti@example.com',69,'darman57@example.org',227),
('onashiruddin@example.net',59,'darman57@example.org',227),
('pandu86@example.org',59,'darman57@example.org',227),
('shalim@example.net',59,'darman57@example.org',227),
('starihoran@example.net',70,'darman57@example.org',227),
('hamimahutasoit@example.net',83,'emangunsong@example.com',967),
('hutasoitasirwada@example.com',100,'emangunsong@example.com',967),
('ihsan58@example.net',73,'emangunsong@example.com',967),
('ltampubolon@example.com',73,'emangunsong@example.com',967),
('yogaputra@example.net',88,'emanmulyani@example.org',680),
('cawisono25@example.com',54,'firmansyahnajwa@example.net',357),
('lfirmansyah@example.net',95,'firmansyahnajwa@example.net',357),
('lmelani@example.net',95,'firmansyahnajwa@example.net',357),
('nasyiahrafi@example.org',52,'firmansyahnajwa@example.net',357),
('onashiruddin@example.net',95,'firmansyahnajwa@example.net',357),
('rsuryatmi@example.org',52,'firmansyahnajwa@example.net',357),
('yogaputra@example.net',54,'firmansyahnajwa@example.net',357),
('mulyanicinta@example.org',72,'gamanimangunsong@example.org',736),
('starihoran@example.net',67,'gamanimangunsong@example.org',736),
('pandu86@example.org',91,'gamanto30@example.net',300),
('harjaya38@example.org',85,'hairyantowaskita@example.net',412),
('kusmawatilaswi@example.net',89,'hairyantowaskita@example.net',412),
('tirafirmansyah@example.com',93,'hardi19@example.com',642),
('qadriansyah@example.com',92,'hastaprastuti@example.org',561),
('nwijayanti@example.com',67,'hutasoitdamu@example.org',736),
('verakusumo@example.net',92,'inaanggriawan@example.com',561),
('ksamosir@example.org',72,'iswahyudiida@example.net',736),
('kusumorika@example.net',67,'iswahyudiida@example.net',736),
('tirafirmansyah@example.com',72,'iswahyudiida@example.net',736),
('balamantri53@example.org',55,'jagapati55@example.net',680),
('kania15@example.com',55,'jagapati55@example.net',680),
('harjaya38@example.org',94,'jagaragasalahudin@example.com',760),
('himawansetiawan@example.com',94,'jagaragasalahudin@example.com',760),
('ihsan58@example.net',71,'jagaragasalahudin@example.com',760),
('lmelani@example.net',53,'jagaragasalahudin@example.com',760),
('starihoran@example.net',94,'jagaragasalahudin@example.com',760),
('ypuspita@example.net',71,'jagaragasalahudin@example.com',760),
('ryuliarti@example.net',67,'januarkemba@example.com',736),
('jelitasusanti@example.net',92,'kamaria67@example.com',561),
('shalim@example.net',92,'kamaria67@example.com',561),
('ypuspita@example.net',90,'kamaria67@example.com',561),
('iadriansyah@example.org',70,'kawaca07@example.net',227),
('wijayantigandi@example.net',51,'kawaca07@example.net',227),
('ypuspita@example.net',70,'kawaca07@example.net',227),
('jelitasusanti@example.net',99,'ktampubolon@example.net',385),
('tirafirmansyah@example.com',55,'kuswandarinajam@example.com',680),
('hutapeasakura@example.com',62,'lintang09@example.net',484),
('ihsan58@example.net',57,'lintang09@example.net',484),
('jelitasusanti@example.net',57,'lintang09@example.net',484),
('qadriansyah@example.com',62,'lintang09@example.net',484),
('verakusumo@example.net',96,'lsuryatmi@example.net',39),
('balamantri53@example.org',97,'luluh18@example.com',125),
('sihombingdipa@example.net',77,'luluh18@example.com',125),
('simanjuntakkamaria@example.net',77,'luluh18@example.com',125),
('mulyanicinta@example.org',96,'maliksirait@example.net',39),
('afirgantoro@example.com',85,'maman39@example.com',412),
('kurniawanozy@example.com',66,'maman39@example.com',412),
('laswi67@example.net',81,'maman39@example.com',412),
('starihoran@example.net',85,'maman39@example.com',412),
('verakusumo@example.net',89,'maman39@example.com',412),
('afirgantoro@example.com',64,'mangunsongmustika@example.net',125),
('lmelani@example.net',97,'mangunsongmustika@example.net',125),
('ihsan58@example.net',83,'maryadipermadi@example.net',967),
('nasyiahrafi@example.org',100,'maryadipermadi@example.net',967),
('bakionoaryani@example.com',62,'mila76@example.org',484),
('faridacornelia@example.com',62,'mila76@example.org',484),
('afirgantoro@example.com',68,'mramadan@example.org',409),
('kusmawatilaswi@example.net',74,'narjihardiansyah@example.net',269),
('kurniawanozy@example.com',79,'nurdiyantisilvia@example.org',269),
('yogaputra@example.net',74,'nurdiyantisilvia@example.org',269),
('rsuryatmi@example.org',65,'opan84@example.com',602),
('devi09@example.org',82,'oskar41@example.org',269),
('kania15@example.com',79,'oskar41@example.org',269),
('lfirmansyah@example.net',82,'oskar41@example.org',269),
('onashiruddin@example.net',79,'oskar41@example.org',269),
('kurniawanozy@example.com',68,'pnashiruddin@example.net',409),
('bprabowo@example.com',62,'prabowowasis@example.net',484),
('harjaya38@example.org',62,'prabowowasis@example.net',484),
('hutapeasakura@example.com',82,'prayogaemil@example.com',269),
('jabalhidayat@example.net',79,'prayogaemil@example.com',269),
('afirgantoro@example.com',94,'prayogaoliva@example.net',760),
('bakionoaryani@example.com',71,'prayogaoliva@example.net',760),
('qnasyiah@example.com',71,'prayogaoliva@example.net',760),
('cawisono25@example.com',63,'qrahayu@example.com',199),
('bakionoaryani@example.com',97,'queen58@example.net',125),
('faridacornelia@example.com',64,'queen58@example.net',125),
('ryuliarti@example.net',97,'queen58@example.net',125),
('lmelani@example.net',84,'rafidfirmansyah@example.net',273),
('nwijayanti@example.com',84,'rafidfirmansyah@example.net',273),
('onashiruddin@example.net',61,'rafidfirmansyah@example.net',273),
('starihoran@example.net',58,'rafidfirmansyah@example.net',273),
('cawisono25@example.com',89,'rahimahmursinin@example.com',412),
('ypuspita@example.net',66,'rahimahmursinin@example.com',412),
('cawisono25@example.com',90,'rgunarto@example.com',561),
('cawisonosetiawan@example.net',98,'rgunarto@example.com',561),
('kusumorika@example.net',76,'rgunarto@example.com',561),
('qnasyiah@example.com',98,'rgunarto@example.com',561),
('verakusumo@example.net',76,'rgunarto@example.com',561),
('hutasoitasirwada@example.com',98,'sakaprabowo@example.net',561),
('prasetyakania@example.net',90,'sakaprabowo@example.net',561),
('kania15@example.com',82,'shartati@example.com',269),
('laswi67@example.net',82,'shartati@example.com',269),
('qadriansyah@example.com',91,'sihombinghendri@example.com',300),
('starihoran@example.net',91,'sihombinghendri@example.com',300),
('shalim@example.net',97,'solehmarpaung@example.org',125),
('yogaputra@example.net',77,'solehmarpaung@example.org',125),
('shalim@example.net',76,'suryatmisabri@example.net',561),
('simanjuntakkamaria@example.net',90,'suryatmisabri@example.net',561),
('kania15@example.com',91,'suwarnoirnanto@example.net',300),
('sihombingdipa@example.net',81,'victoria27@example.com',412),
('devi09@example.org',81,'vsitompul@example.org',412),
('himawansetiawan@example.com',81,'vsitompul@example.org',412),
('ltampubolon@example.com',89,'vsitompul@example.org',412),
('qadriansyah@example.com',93,'waluyogandi@example.com',642),
('ypuspita@example.net',88,'warji42@example.net',680),
('iadriansyah@example.org',61,'wijayapangeran@example.com',273),
('ihsan58@example.net',61,'wijayapangeran@example.com',273),
('lfirmansyah@example.net',58,'wijayapangeran@example.com',273),
('nwijayanti@example.com',58,'wijayapangeran@example.com',273),
('prasetyakania@example.net',61,'wijayapangeran@example.com',273),
('sihombingdipa@example.net',58,'wijayapangeran@example.com',273),
('verakusumo@example.net',58,'wijayapangeran@example.com',273),
('balamantri53@example.org',60,'yunita00@example.net',642),
('qadriansyah@example.com',78,'yunita00@example.net',642),
('afirgantoro@example.com',52,'zpradipta@example.org',357),
('kusmawatilaswi@example.net',75,'zpradipta@example.org',357),
('lfirmansyah@example.net',54,'zpradipta@example.org',357),
('tirafirmansyah@example.com',95,'zpradipta@example.org',357),
('bakionoaryani@example.com',64,'zulaikasabar@example.net',125),
('kania15@example.com',64,'zulaikasabar@example.net',125);
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
(74,'antibiotik',165),
(77,'obat herbal',161),
(219,'analgesik',118),
(493,'analgesik',13),
(584,'analgesik',100),
(929,'antibiotik',141),
(1547,'analgesik',111),
(3202,'antibiotik',40),
(3681,'obat herbal',199),
(5020,'analgesik',192),
(6947,'antibiotik',19),
(7332,'analgesik',39),
(7402,'obat herbal',100),
(7988,'obat herbal',72),
(8052,'analgesik',61),
(8197,'antibiotik',68),
(8687,'obat herbal',17),
(9095,'antibiotik',124),
(9110,'obat herbal',124),
(9806,'antibiotik',95);
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
('afirgantoro@example.com',33005),
('bakionoaryani@example.com',56059),
('balamantri53@example.org',13151),
('bprabowo@example.com',40099),
('cawisono25@example.com',21010),
('cawisonosetiawan@example.net',91636),
('devi09@example.org',18668),
('enashiruddin@example.com',55240),
('faridacornelia@example.com',37220),
('hamimahutasoit@example.net',80853),
('harjaya38@example.org',16658),
('himawansetiawan@example.com',38037),
('hutapeasakura@example.com',81881),
('hutasoitasirwada@example.com',73473),
('iadriansyah@example.org',52849),
('ihsan58@example.net',30810),
('jabalhidayat@example.net',84970),
('jelitasusanti@example.net',75919),
('kania15@example.com',30380),
('ksamosir@example.org',65621),
('kurniawanozy@example.com',93877),
('kusmawatilaswi@example.net',81745),
('kusumorika@example.net',61737),
('laswi67@example.net',31138),
('lfirmansyah@example.net',91536),
('lmelani@example.net',37069),
('ltampubolon@example.com',12259),
('marsito79@example.com',54576),
('mulyanicinta@example.org',59065),
('nasyiahrafi@example.org',40204),
('nwijayanti@example.com',40285),
('onashiruddin@example.net',27346),
('pandu86@example.org',31188),
('prasetyakania@example.net',20887),
('qadriansyah@example.com',46236),
('qnasyiah@example.com',38473),
('rpurnawati@example.com',63441),
('rsuryatmi@example.org',42359),
('ryuliarti@example.net',25619),
('safinarahimah@example.com',78458),
('shalim@example.net',16757),
('sihombingdipa@example.net',13670),
('simanjuntakkamaria@example.net',29013),
('siraitdarman@example.net',73326),
('starihoran@example.net',11236),
('tirafirmansyah@example.com',90695),
('verakusumo@example.net',96038),
('wijayantigandi@example.net',13773),
('yogaputra@example.net',32937),
('ypuspita@example.net',37104);
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
(101,8,'pandu86@example.org','2025-06-20','belum dibayar'),
(102,17,'mulyanicinta@example.org','2025-06-11','selesai'),
(103,14,'cawisonosetiawan@example.net','2025-06-11','belum dibayar'),
(104,41,'laswi67@example.net','2025-07-24','dijadwalkan'),
(105,26,'jabalhidayat@example.net','2025-07-15','dijadwalkan'),
(106,19,'lfirmansyah@example.net','2025-07-21','dijadwalkan'),
(107,41,'shalim@example.net','2025-07-11','sedang berlangsung'),
(108,38,'cawisonosetiawan@example.net','2025-06-26','sedang berlangsung'),
(109,46,'himawansetiawan@example.com','2025-07-27','dibatalkan'),
(110,16,'kania15@example.com','2025-07-13','sedang berlangsung'),
(111,38,'rpurnawati@example.com','2025-06-28','dijadwalkan'),
(112,43,'afirgantoro@example.com','2025-06-20','selesai'),
(113,41,'rsuryatmi@example.org','2025-07-03','dibatalkan'),
(114,2,'shalim@example.net','2025-07-22','selesai'),
(115,12,'hutasoitasirwada@example.com','2025-06-24','belum dibayar'),
(116,36,'rpurnawati@example.com','2025-07-14','dibatalkan'),
(117,9,'ihsan58@example.net','2025-07-09','belum dibayar'),
(118,18,'marsito79@example.com','2025-07-21','dijadwalkan'),
(119,37,'rsuryatmi@example.org','2025-06-02','selesai'),
(120,10,'ypuspita@example.net','2025-07-10','dijadwalkan'),
(121,24,'jelitasusanti@example.net','2025-07-16','dibatalkan'),
(122,32,'rsuryatmi@example.org','2025-07-27','selesai'),
(123,40,'cawisonosetiawan@example.net','2025-06-17','dijadwalkan'),
(124,16,'laswi67@example.net','2025-06-12','belum dibayar'),
(125,24,'hutapeasakura@example.com','2025-06-17','dibatalkan'),
(126,39,'ryuliarti@example.net','2025-06-14','belum dibayar'),
(127,33,'lfirmansyah@example.net','2025-06-18','dibatalkan'),
(128,29,'ypuspita@example.net','2025-06-24','dijadwalkan'),
(129,6,'yogaputra@example.net','2025-07-18','dibatalkan'),
(130,25,'sihombingdipa@example.net','2025-06-18','sedang berlangsung'),
(131,25,'tirafirmansyah@example.com','2025-07-09','dijadwalkan'),
(132,41,'kusumorika@example.net','2025-05-31','belum dibayar'),
(133,26,'rpurnawati@example.com','2025-07-10','selesai'),
(134,7,'himawansetiawan@example.com','2025-06-30','dijadwalkan'),
(135,34,'faridacornelia@example.com','2025-06-20','dijadwalkan'),
(136,34,'ypuspita@example.net','2025-07-23','sedang berlangsung'),
(137,29,'safinarahimah@example.com','2025-06-12','dibatalkan'),
(138,8,'kusmawatilaswi@example.net','2025-06-06','sedang berlangsung'),
(139,45,'sihombingdipa@example.net','2025-06-24','dijadwalkan'),
(140,13,'shalim@example.net','2025-06-22','dijadwalkan'),
(141,9,'iadriansyah@example.org','2025-06-18','sedang berlangsung'),
(142,12,'qnasyiah@example.com','2025-07-28','selesai'),
(143,10,'pandu86@example.org','2025-06-01','dijadwalkan'),
(144,8,'cawisono25@example.com','2025-07-17','selesai'),
(145,29,'ltampubolon@example.com','2025-06-30','selesai'),
(146,37,'kusmawatilaswi@example.net','2025-06-23','dijadwalkan'),
(147,25,'devi09@example.org','2025-07-08','dibatalkan'),
(148,46,'onashiruddin@example.net','2025-06-15','selesai'),
(149,42,'ksamosir@example.org','2025-07-12','sedang berlangsung'),
(150,39,'mulyanicinta@example.org','2025-06-12','dijadwalkan'),
(151,37,'iadriansyah@example.org','2025-07-23','dibatalkan'),
(152,35,'hutapeasakura@example.com','2025-07-13','dibatalkan'),
(153,29,'enashiruddin@example.com','2025-07-13','sedang berlangsung'),
(154,42,'devi09@example.org','2025-07-24','dijadwalkan'),
(155,44,'simanjuntakkamaria@example.net','2025-07-14','dibatalkan'),
(156,37,'safinarahimah@example.com','2025-06-17','dijadwalkan'),
(157,28,'qnasyiah@example.com','2025-06-19','belum dibayar'),
(158,16,'kusumorika@example.net','2025-07-25','belum dibayar'),
(159,41,'wijayantigandi@example.net','2025-06-21','selesai'),
(160,16,'mulyanicinta@example.org','2025-07-29','dibatalkan'),
(161,30,'harjaya38@example.org','2025-06-02','selesai'),
(162,35,'marsito79@example.com','2025-06-25','dibatalkan'),
(163,4,'qadriansyah@example.com','2025-06-07','dibatalkan'),
(164,20,'ryuliarti@example.net','2025-07-15','dibatalkan'),
(165,5,'ypuspita@example.net','2025-06-14','dijadwalkan'),
(166,28,'verakusumo@example.net','2025-07-07','selesai'),
(167,39,'hamimahutasoit@example.net','2025-06-09','belum dibayar'),
(168,20,'cawisono25@example.com','2025-07-28','dibatalkan'),
(169,11,'iadriansyah@example.org','2025-06-09','dibatalkan'),
(170,36,'kania15@example.com','2025-07-20','dijadwalkan'),
(171,11,'mulyanicinta@example.org','2025-07-09','dibatalkan'),
(172,33,'jelitasusanti@example.net','2025-07-01','belum dibayar'),
(173,43,'siraitdarman@example.net','2025-06-22','dijadwalkan'),
(174,11,'nwijayanti@example.com','2025-06-25','sedang berlangsung'),
(175,7,'enashiruddin@example.com','2025-07-23','belum dibayar'),
(176,48,'kania15@example.com','2025-07-27','selesai'),
(177,50,'verakusumo@example.net','2025-06-26','belum dibayar'),
(178,20,'iadriansyah@example.org','2025-07-06','sedang berlangsung'),
(179,49,'nasyiahrafi@example.org','2025-06-06','dibatalkan'),
(180,19,'jelitasusanti@example.net','2025-06-16','belum dibayar'),
(181,21,'safinarahimah@example.com','2025-07-28','selesai'),
(182,23,'balamantri53@example.org','2025-07-12','selesai'),
(183,37,'laswi67@example.net','2025-07-08','selesai'),
(184,30,'ypuspita@example.net','2025-06-23','dijadwalkan'),
(185,46,'marsito79@example.com','2025-07-04','selesai'),
(186,11,'verakusumo@example.net','2025-06-03','dibatalkan'),
(187,5,'pandu86@example.org','2025-07-14','selesai'),
(188,40,'ksamosir@example.org','2025-07-29','sedang berlangsung'),
(189,5,'himawansetiawan@example.com','2025-06-03','dijadwalkan'),
(190,1,'faridacornelia@example.com','2025-07-04','sedang berlangsung'),
(191,31,'kania15@example.com','2025-07-01','sedang berlangsung'),
(192,39,'prasetyakania@example.net','2025-07-23','selesai'),
(193,7,'himawansetiawan@example.com','2025-06-13','selesai'),
(194,13,'prasetyakania@example.net','2025-07-23','sedang berlangsung'),
(195,49,'marsito79@example.com','2025-06-19','dibatalkan'),
(196,30,'devi09@example.org','2025-06-28','dibatalkan'),
(197,26,'ihsan58@example.net','2025-07-27','selesai'),
(198,22,'faridacornelia@example.com','2025-07-25','dijadwalkan'),
(199,48,'devi09@example.org','2025-06-15','belum dibayar'),
(200,31,'himawansetiawan@example.com','2025-06-07','selesai');
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
('balamantri53@example.org','2025-05-07 04:13:50','Kepulauan Riau','Tidore Kepulauan','Gang Tubagus Ismail No. 2','selesai',336820),
('bprabowo@example.com','2025-05-11 19:04:54','Gorontalo','Batam','Gg. Jakarta No. 4','selesai',404224),
('cawisonosetiawan@example.net','2025-05-08 19:58:05','Sulawesi Tengah','Denpasar','Gg. Jayawijaya No. 4','dijadwalkan',309043),
('cawisonosetiawan@example.net','2025-05-10 20:05:12','Jawa Tengah','Payakumbuh','Jl. R.E Martadinata No. 713','belum dibayar',82866),
('cawisonosetiawan@example.net','2025-05-30 17:53:04','Jawa Tengah','Payakumbuh','Jl. R.E Martadinata No. 713','belum dibayar',29665),
('devi09@example.org','2025-05-24 12:34:01','DKI Jakarta','Padang Sidempuan','Jalan Raya Setiabudhi No. 94','sedang berlangsung',157109),
('enashiruddin@example.com','2025-05-04 00:07:19','Gorontalo','Kota Administrasi Jakarta Utara','Gang Antapani Lama No. 052','sedang berlangsung',185932),
('faridacornelia@example.com','2025-05-21 16:23:48','Bali','Tegal','Gg. Dipatiukur No. 363','belum dibayar',150186),
('hamimahutasoit@example.net','2025-05-30 00:35:25','Sulawesi Tengah','Langsa','Gg. Gedebage Selatan No. 67','dijadwalkan',320109),
('hutasoitasirwada@example.com','2025-05-24 19:10:46','Jawa Barat','Bandung','Gang Tubagus Ismail No. 29','selesai',431881),
('ihsan58@example.net','2025-05-12 17:38:23','Jambi','Jayapura','Gang Rawamangun No. 579','belum dibayar',430535),
('jabalhidayat@example.net','2025-05-25 14:29:48','Sumatera Utara','Tangerang Selatan','Gg. Cikapayang No. 9','dijadwalkan',360314),
('jelitasusanti@example.net','2025-05-12 08:07:23','Nusa Tenggara Barat','Probolinggo','Jl. Jayawijaya No. 7','dibatalkan',412988),
('jelitasusanti@example.net','2025-05-26 17:26:54','Nusa Tenggara Barat','Probolinggo','Jl. Jayawijaya No. 7','selesai',337741),
('ksamosir@example.org','2025-05-24 15:17:21','Jawa Timur','Palu','Jalan Dipenogoro No. 24','selesai',197530),
('kurniawanozy@example.com','2025-05-02 16:07:12','Kalimantan Tengah','Tarakan','Jl. Kendalsari No. 63','selesai',257523),
('kurniawanozy@example.com','2025-05-11 21:40:25','Kalimantan Tengah','Tarakan','Jl. Kendalsari No. 63','dijadwalkan',85060),
('kusmawatilaswi@example.net','2025-05-01 13:54:31','Aceh','Payakumbuh','Jl. Rajawali Barat No. 909','belum dibayar',39538),
('ltampubolon@example.com','2025-05-06 17:31:56','Kalimantan Barat','Manado','Jalan Gardujati No. 927','dibatalkan',356558),
('marsito79@example.com','2025-05-13 21:48:29','Maluku','Sabang','Jl. Rajiman No. 38','dijadwalkan',441728),
('mulyanicinta@example.org','2025-05-30 01:11:45','Kalimantan Selatan','Ambon','Gg. Indragiri No. 09','sedang berlangsung',284088),
('nasyiahrafi@example.org','2025-05-01 06:29:16','Aceh','Depok','Gang Bangka Raya No. 095','dibatalkan',82040),
('nasyiahrafi@example.org','2025-05-17 17:28:45','Aceh','Depok','Gang Bangka Raya No. 095','sedang berlangsung',279421),
('nasyiahrafi@example.org','2025-05-23 23:40:53','Jawa Barat','Singkawang','Jalan Soekarno Hatta No. 7','selesai',190243),
('nasyiahrafi@example.org','2025-05-25 00:12:15','Sulawesi Selatan','Surakarta','Jl. Dipatiukur No. 5','selesai',362890),
('nwijayanti@example.com','2025-05-30 21:44:26','Riau','Pagaralam','Jalan Kutisari Selatan No. 040','dibatalkan',84111),
('onashiruddin@example.net','2025-05-18 16:57:18','DI Yogyakarta','Bandung','Jalan Ahmad Dahlan No. 107','selesai',437079),
('onashiruddin@example.net','2025-05-20 11:14:01','Kepulauan Riau','Tual','Gg. Soekarno Hatta No. 48','selesai',178358),
('pandu86@example.org','2025-05-12 12:56:40','Banten','Lhokseumawe','Jl. Jend. A. Yani No. 34','belum dibayar',23297),
('qadriansyah@example.com','2025-05-12 06:04:23','Bengkulu','Subulussalam','Gang Otto Iskandardinata No. 8','dibatalkan',32961),
('qadriansyah@example.com','2025-05-29 14:02:40','Sulawesi Utara','Bandung','Jl. Raya Ujungberung No. 25','sedang berlangsung',175125),
('qnasyiah@example.com','2025-05-01 15:23:10','DKI Jakarta','Bekasi','Gang Rajawali Barat No. 16','sedang berlangsung',280633),
('qnasyiah@example.com','2025-05-30 14:41:40','Nusa Tenggara Barat','Semarang','Jalan Ahmad Dahlan No. 4','sedang berlangsung',268407),
('rpurnawati@example.com','2025-05-11 15:27:41','Sumatera Selatan','Meulaboh','Gg. Pasirkoja No. 5','sedang berlangsung',459522),
('rpurnawati@example.com','2025-05-14 11:20:26','Sumatera Selatan','Meulaboh','Gg. Pasirkoja No. 5','sedang berlangsung',223620),
('rsuryatmi@example.org','2025-05-13 19:21:46','Maluku Utara','Pagaralam','Gang Ahmad Dahlan No. 567','belum dibayar',212216),
('ryuliarti@example.net','2025-05-26 05:59:14','Jawa Tengah','Lhokseumawe','Gang Raya Setiabudhi No. 498','sedang berlangsung',423794),
('safinarahimah@example.com','2025-05-25 08:48:13','Sulawesi Selatan','Palopo','Jalan Cihampelas No. 1','dijadwalkan',37234),
('safinarahimah@example.com','2025-05-30 07:04:01','Sulawesi Selatan','Palopo','Jalan Cihampelas No. 1','dijadwalkan',56455),
('shalim@example.net','2025-05-25 18:18:34','Kalimantan Utara','Tidore Kepulauan','Gang Jakarta No. 657','sedang berlangsung',249751),
('sihombingdipa@example.net','2025-05-01 20:29:59','Riau','Palembang','Gang Stasiun Wonokromo No. 4','belum dibayar',424519),
('simanjuntakkamaria@example.net','2025-05-16 18:09:38','Sulawesi Utara','Jambi','Gg. Cihampelas No. 617','dijadwalkan',54408),
('starihoran@example.net','2025-05-01 19:32:00','Sumatera Selatan','Batam','Gg. Kutisari Selatan No. 83','sedang berlangsung',333981),
('starihoran@example.net','2025-05-02 10:38:14','Sumatera Selatan','Batam','Gg. Kutisari Selatan No. 83','dijadwalkan',331021),
('tirafirmansyah@example.com','2025-05-06 12:53:37','Sumatera Utara','Kota Administrasi Jakarta Timur','Jalan Cikapayang No. 194','sedang berlangsung',60796),
('tirafirmansyah@example.com','2025-05-25 06:48:21','Sumatera Utara','Kota Administrasi Jakarta Timur','Jalan Cikapayang No. 194','dijadwalkan',354391),
('verakusumo@example.net','2025-05-05 06:13:39','DI Yogyakarta','Tarakan','Jl. Tubagus Ismail No. 0','belum dibayar',345408),
('verakusumo@example.net','2025-05-18 15:09:52','DI Yogyakarta','Tarakan','Jl. Tubagus Ismail No. 0','sedang berlangsung',193846),
('wijayantigandi@example.net','2025-05-16 03:01:40','Kalimantan Tengah','Pangkalpinang','Gang Peta No. 3','dibatalkan',494123),
('yogaputra@example.net','2025-05-10 17:39:35','Jawa Tengah','Cilegon','Jalan Jayawijaya No. 8','belum dibayar',224319);
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
('balamantri53@example.org','2025-05-07 04:13:50',493,4),
('balamantri53@example.org','2025-05-07 04:13:50',3202,4),
('bprabowo@example.com','2025-05-11 19:04:54',6947,2),
('bprabowo@example.com','2025-05-11 19:04:54',9806,4),
('cawisonosetiawan@example.net','2025-05-08 19:58:05',584,3),
('cawisonosetiawan@example.net','2025-05-08 19:58:05',7988,3),
('cawisonosetiawan@example.net','2025-05-10 20:05:12',7402,3),
('cawisonosetiawan@example.net','2025-05-10 20:05:12',9095,2),
('cawisonosetiawan@example.net','2025-05-30 17:53:04',3681,2),
('cawisonosetiawan@example.net','2025-05-30 17:53:04',7332,2),
('devi09@example.org','2025-05-24 12:34:01',3681,4),
('devi09@example.org','2025-05-24 12:34:01',8197,4),
('enashiruddin@example.com','2025-05-04 00:07:19',7402,1),
('enashiruddin@example.com','2025-05-04 00:07:19',7988,3),
('faridacornelia@example.com','2025-05-21 16:23:48',493,3),
('faridacornelia@example.com','2025-05-21 16:23:48',6947,1),
('hamimahutasoit@example.net','2025-05-30 00:35:25',77,3),
('hamimahutasoit@example.net','2025-05-30 00:35:25',8052,4),
('hutasoitasirwada@example.com','2025-05-24 19:10:46',77,1),
('hutasoitasirwada@example.com','2025-05-24 19:10:46',7332,1),
('ihsan58@example.net','2025-05-12 17:38:23',3681,2),
('ihsan58@example.net','2025-05-12 17:38:23',9110,3),
('jabalhidayat@example.net','2025-05-25 14:29:48',929,4),
('jabalhidayat@example.net','2025-05-25 14:29:48',1547,3),
('jelitasusanti@example.net','2025-05-12 08:07:23',929,2),
('jelitasusanti@example.net','2025-05-12 08:07:23',9095,4),
('jelitasusanti@example.net','2025-05-26 17:26:54',7402,3),
('jelitasusanti@example.net','2025-05-26 17:26:54',8197,4),
('ksamosir@example.org','2025-05-24 15:17:21',219,1),
('ksamosir@example.org','2025-05-24 15:17:21',584,4),
('kurniawanozy@example.com','2025-05-02 16:07:12',3681,4),
('kurniawanozy@example.com','2025-05-02 16:07:12',9806,3),
('kurniawanozy@example.com','2025-05-11 21:40:25',219,3),
('kurniawanozy@example.com','2025-05-11 21:40:25',929,2),
('kusmawatilaswi@example.net','2025-05-01 13:54:31',493,3),
('kusmawatilaswi@example.net','2025-05-01 13:54:31',9095,4),
('ltampubolon@example.com','2025-05-06 17:31:56',493,4),
('ltampubolon@example.com','2025-05-06 17:31:56',7402,1),
('marsito79@example.com','2025-05-13 21:48:29',5020,4),
('marsito79@example.com','2025-05-13 21:48:29',6947,3),
('mulyanicinta@example.org','2025-05-30 01:11:45',219,3),
('mulyanicinta@example.org','2025-05-30 01:11:45',7988,3),
('nasyiahrafi@example.org','2025-05-01 06:29:16',8197,4),
('nasyiahrafi@example.org','2025-05-01 06:29:16',9806,2),
('nasyiahrafi@example.org','2025-05-17 17:28:45',77,4),
('nasyiahrafi@example.org','2025-05-17 17:28:45',8052,4),
('nasyiahrafi@example.org','2025-05-23 23:40:53',493,2),
('nasyiahrafi@example.org','2025-05-23 23:40:53',3681,3),
('nasyiahrafi@example.org','2025-05-25 00:12:15',1547,4),
('nasyiahrafi@example.org','2025-05-25 00:12:15',6947,1),
('nwijayanti@example.com','2025-05-30 21:44:26',8687,1),
('nwijayanti@example.com','2025-05-30 21:44:26',9110,3),
('onashiruddin@example.net','2025-05-18 16:57:18',74,1),
('onashiruddin@example.net','2025-05-18 16:57:18',219,1),
('onashiruddin@example.net','2025-05-20 11:14:01',493,4),
('onashiruddin@example.net','2025-05-20 11:14:01',9806,4),
('pandu86@example.org','2025-05-12 12:56:40',74,4),
('pandu86@example.org','2025-05-12 12:56:40',9806,3),
('qadriansyah@example.com','2025-05-12 06:04:23',1547,3),
('qadriansyah@example.com','2025-05-12 06:04:23',8687,1),
('qadriansyah@example.com','2025-05-29 14:02:40',1547,1),
('qadriansyah@example.com','2025-05-29 14:02:40',3202,4),
('qnasyiah@example.com','2025-05-01 15:23:10',7402,3),
('qnasyiah@example.com','2025-05-01 15:23:10',7988,1),
('qnasyiah@example.com','2025-05-30 14:41:40',584,4),
('qnasyiah@example.com','2025-05-30 14:41:40',3202,1),
('rpurnawati@example.com','2025-05-11 15:27:41',77,2),
('rpurnawati@example.com','2025-05-11 15:27:41',8687,4),
('rpurnawati@example.com','2025-05-14 11:20:26',74,1),
('rpurnawati@example.com','2025-05-14 11:20:26',493,1),
('rsuryatmi@example.org','2025-05-13 19:21:46',8052,3),
('rsuryatmi@example.org','2025-05-13 19:21:46',9806,1),
('ryuliarti@example.net','2025-05-26 05:59:14',1547,1),
('ryuliarti@example.net','2025-05-26 05:59:14',9806,4),
('safinarahimah@example.com','2025-05-25 08:48:13',219,4),
('safinarahimah@example.com','2025-05-25 08:48:13',929,2),
('safinarahimah@example.com','2025-05-30 07:04:01',1547,2),
('safinarahimah@example.com','2025-05-30 07:04:01',7402,4),
('shalim@example.net','2025-05-25 18:18:34',8687,3),
('shalim@example.net','2025-05-25 18:18:34',9806,4),
('sihombingdipa@example.net','2025-05-01 20:29:59',5020,1),
('sihombingdipa@example.net','2025-05-01 20:29:59',9806,4),
('simanjuntakkamaria@example.net','2025-05-16 18:09:38',1547,4),
('simanjuntakkamaria@example.net','2025-05-16 18:09:38',3681,1),
('starihoran@example.net','2025-05-01 19:32:00',219,2),
('starihoran@example.net','2025-05-01 19:32:00',8687,2),
('starihoran@example.net','2025-05-02 10:38:14',219,3),
('starihoran@example.net','2025-05-02 10:38:14',493,4),
('tirafirmansyah@example.com','2025-05-06 12:53:37',3681,2),
('tirafirmansyah@example.com','2025-05-06 12:53:37',8052,3),
('tirafirmansyah@example.com','2025-05-25 06:48:21',584,3),
('tirafirmansyah@example.com','2025-05-25 06:48:21',5020,4),
('verakusumo@example.net','2025-05-05 06:13:39',3202,4),
('verakusumo@example.net','2025-05-05 06:13:39',6947,3),
('verakusumo@example.net','2025-05-18 15:09:52',584,1),
('verakusumo@example.net','2025-05-18 15:09:52',7402,4),
('wijayantigandi@example.net','2025-05-16 03:01:40',6947,1),
('wijayantigandi@example.net','2025-05-16 03:01:40',8052,4),
('yogaputra@example.net','2025-05-10 17:39:35',77,3),
('yogaputra@example.net','2025-05-10 17:39:35',219,1);
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
(51,227,56828,194549),
(52,357,87141,122056),
(53,760,84797,152481),
(54,357,40654,54909),
(55,680,47626,132075),
(56,412,55981,233611),
(57,484,79915,235574),
(58,273,34460,127472),
(59,227,60124,147551),
(60,642,61592,85188),
(61,273,64631,112497),
(62,484,39422,28163),
(63,199,49995,52071),
(64,125,26038,142441),
(65,602,10123,131354),
(66,412,64578,167730),
(67,736,27178,150654),
(68,409,38378,53180),
(69,227,16394,194271),
(70,227,18373,147974),
(71,760,68435,29806),
(72,736,48347,163151),
(73,967,6297,46724),
(74,269,65090,65111),
(75,357,48495,47216),
(76,561,71601,37309),
(77,125,89328,40058),
(78,642,63960,225705),
(79,269,62917,17394),
(80,412,50003,83955),
(81,412,85858,80085),
(82,269,70545,159718),
(83,967,58880,249641),
(84,273,28701,15801),
(85,412,15253,98151),
(86,800,84296,40643),
(87,412,61153,170176),
(88,680,58524,106782),
(89,412,74298,108266),
(90,561,5917,139942),
(91,300,29350,247125),
(92,561,46987,188129),
(93,642,56600,54790),
(94,760,38730,93849),
(95,357,21557,200747),
(96,39,51505,55021),
(97,125,45210,36088),
(98,561,96954,152657),
(99,385,57628,164411),
(100,967,60345,91757);
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
('afirgantoro@example.com','^f@Set8X*)9A','Novi Riyanti','1992-03-28',33),
('ajiono35@example.org','W(2#9Irz!!8d','Puti Ade Farida, S.Sos','1952-05-28',73),
('anahalimah@example.org','#7IU9yPj)p%P','Rina Natsir, S.Sos','1963-01-25',62),
('ardiantokasiyah@example.org','HAV$uJ_1!3Ly','Hj. Olivia Napitupulu, M.Pd','1969-03-08',56),
('asirwandafirgantoro@example.org','j(5#KYzx8Fi5','dr. Ella Yulianti','1979-06-14',45),
('ayuliarti@example.net','@2Ffgxi#t%4A','dr. Jamalia Permata','2014-07-27',10),
('bakionoaryani@example.com','**szZWrmVfs5','Murti Kusumo','2006-11-14',18),
('balamantri53@example.org','5KAwzplQ+F7!','H. Wawan Halim, M.M.','2009-02-03',16),
('bancarkusmawati@example.org',')29bgJHoa1iE','drg. Gabriella Samosir, S.E.I','1989-12-18',35),
('betaniahutasoit@example.org','*bfxrRbg^2MY','Cinthia Palastri','1996-08-10',28),
('bprabowo@example.com','8$vnAyPl@PN#','Genta Ramadan','1948-02-09',77),
('bpudjiastuti@example.com','D2wiIza$^6UH','Zaenab Hakim','2015-04-26',10),
('cawisono20@example.net','ybqNwvmOU^4X','dr. Jono Namaga','1984-05-23',41),
('cawisono25@example.com','OurX5ZUcHx)F','Siti Wulandari','1962-05-11',63),
('cawisonosetiawan@example.net','t7KJ*)DwP(tN','Murti Hartati, M.TI.','1990-07-28',34),
('cinta97@example.com','T%18grFsUqHf','Oliva Riyanti, S.Farm','1979-06-15',45),
('cmanullang@example.com','ZYM1FXyA@U2s','Darsirah Sihombing','1978-03-31',47),
('cornelia32@example.org','I+63LQd0@HSI','Daru Uyainah','1970-11-22',54),
('darman57@example.org','&J)JXuuqr#3N','Edison Simanjuntak','1968-12-25',56),
('devi09@example.org','9$Y&lUmgJr12','R.M. Lantar Rahmawati, S.Sos','1993-12-28',31),
('emangunsong@example.com','4X6IU$g8_h&9','drg. Emil Susanti','2004-11-29',20),
('emanmulyani@example.org','#aad8yXig8CA','Ir. Gandi Wasita, S.IP','1972-07-27',52),
('emong35@example.com','Mu$FtZugGX1+','Gading Wahyudin','1956-06-29',68),
('enashiruddin@example.com','KP1MJazkQ(yT','Tgk. Michelle Jailani, S.E.','1964-03-25',61),
('eyuliarti@example.com','KpWY7Aq%w*ty','Akarsana Wastuti','1947-04-29',78),
('faridacornelia@example.com','MmnO7nna+950','Cut Julia Haryanti, S.Ked','1952-08-23',72),
('ffarida@example.org',')3AychEX)qT#','Samiah Safitri','1998-01-28',27),
('firmansyahnajwa@example.net','Z6SqlNt@+K$O','Cut Raina Handayani','1970-05-07',55),
('fnajmudin@example.net','4+yN8Us^dKzi','Vera Anggraini','1956-10-26',68),
('gadarahimah@example.org','@TlAFmv^w16p','Cut Natalia Nurdiyanti','1963-10-03',61),
('gamanimangunsong@example.org','*G$1bDLsRmvW','Ayu Wijaya','1948-09-01',76),
('gamanto30@example.net','UJam5EiV1bB!','R. Vivi Natsir','1965-11-21',59),
('garansimanjuntak@example.net','2Qs$DTgjZ*X3','Drs. Gandewa Mustofa, M.Kom.','1984-06-13',40),
('gardalailasari@example.org','*F3+)gXj#7xn','Ami Halim','2000-07-29',24),
('grahayu@example.net','$1BUTq1&_IQ)','Rika Utami','1957-06-09',68),
('hairyantowaskita@example.net','&zndZgvk@6QI','Mursinin Handayani','1979-10-06',45),
('hamimahutasoit@example.net','Mq6XdHSWo@e)','Kezia Yolanda','1976-10-18',48),
('hardi19@example.com',')pGvPUzvEF49','Edi Hastuti','1988-01-27',37),
('harjaya38@example.org','8Jr2HMo9!8t0','Vero Iswahyudi','2000-08-07',24),
('hastaprastuti@example.org','*k#AL$oQr567','R. Kenes Latupono','2015-03-09',10),
('heryantosiregar@example.com','^fr4@xEwh)3+','Nabila Marpaung','1945-08-04',79),
('hidayantobalijan@example.org','#w5dUQMdFqnN','Dr. Kalim Kusumo','1992-05-13',33),
('himawansetiawan@example.com','+9hT6n+n@kMy','Edison Hutagalung','1959-10-30',65),
('hjanuar@example.com','&YJ33Csm!D6C','R. Dasa Rajata, S.H.','2007-02-25',18),
('hutapeasakura@example.com','i4XSIRWM%yK%','Syahrini Simbolon, S.IP','1991-07-29',33),
('hutasoitasirwada@example.com','SzOi9!Yf#$d*','Eluh Pratama','1946-04-22',79),
('hutasoitdamu@example.org',')xh4gX3sx25I','Shakila Anggraini','1947-12-16',77),
('iadriansyah@example.org','z_WgeM#H!5tS','Prayoga Nainggolan','1944-07-09',80),
('ihsan58@example.net','&j#u7P#zkYzx','Nurul Nugroho','1973-07-03',51),
('inaanggriawan@example.com','#B7dUGe_nIV3','Jessica Mayasari','1960-01-16',65),
('irwan75@example.com','o!9zNzXZ(dZ4','Violet Halim, S.Pd','1993-06-21',31),
('iswahyudiida@example.net','v3N*!vig$Qwg','Vinsen Wijayanti','1965-09-15',59),
('jabalhidayat@example.net','*Jq)0To(fzgJ','Indah Novitasari, S.Gz','1971-04-11',54),
('jagapati55@example.net','@M4L)xesYBAh','Melinda Usamah','1974-10-06',50),
('jagaragasalahudin@example.com',')O1AxNi588Le','R. Faizah Wijayanti, S.Pd','1978-02-11',47),
('januarkemba@example.com','E3_ghXv+(NAb','Titin Suwarno, M.M.','2011-01-30',14),
('januarlintang@example.net','9#v0Mf3jfbtV','Vega Utama, M.TI.','1962-04-30',63),
('jayeng38@example.org','!1G2C9g282wO','Olivia Napitupulu','1946-11-16',78),
('jelitasusanti@example.net','*f3xkPmgY4V+','Tgk. Jagapati Sihotang, S.Ked','1989-02-13',36),
('jumarihakim@example.com','t+nPi$du(y0b','Tari Dongoran, M.Kom.','1982-07-08',42),
('kamaria67@example.com','($W7JQxR@p33','Dodo Utama','1963-06-03',62),
('kania15@example.com','pz0hWoX@%kTD','Laksana Hutapea','1990-09-22',34),
('kartazulaika@example.net','_gbiB3KwOw9k','KH. Bancar Saragih','1957-10-13',67),
('kawaca07@example.net','o)*uw0UpE$eD','R. Wasis Hardiansyah, S.Pt','2009-01-30',16),
('kmaulana@example.net','Hr42TaS_Gn&a','T. Harsanto Hakim','1962-05-05',63),
('ksamosir@example.org','Q$Hlb+68*V6H','Heryanto Melani','1990-04-02',35),
('ktampubolon@example.net','h*5NuGGmHVjH','Dina Sirait','1998-03-18',27),
('kurniawanozy@example.com','jXrb5j1W^6V@','Ophelia Dabukke','1962-10-26',62),
('kusmawatilaswi@example.net','+wztCtke93Xm','Gawati Manullang','2005-09-14',19),
('kusumorika@example.net',')2_mtCH%+bPX','Ganjaran Yuniar','1961-09-06',63),
('kuswandarinajam@example.com','%20fItLA08RL','Hesti Pratama','1968-08-23',56),
('laswi67@example.net','zh(hiv+m!MP3','Anastasia Sihombing','2004-01-09',21),
('lfirmansyah@example.net','%kSKpV6jVJ2z','Puti Winda Megantara, S.E.','1955-07-01',69),
('lintang09@example.net','%R)JOcCm!7RW','Vanya Lestari','1973-01-24',52),
('lmanullang@example.net','P0O4JqTSw%56','Sakti Padmasari, M.M.','1944-06-28',80),
('lmelani@example.net','s2!ZAKnOnV2A','Raden Tarihoran','1971-08-15',53),
('lsuryatmi@example.net','(4CSniQuLoav','H. Galih Siregar','1969-09-26',55),
('ltampubolon@example.com','@1ApGfi9td!&','Sabrina Sinaga','2014-02-22',11),
('luluh18@example.com','u8fGcsi3_KI_','Luhung Permadi','2004-01-06',21),
('maliksirait@example.net','zu4wCi&%&y7F','Raisa Lazuardi','1996-07-25',28),
('maman39@example.com','$CzT7GwD00qU','Yuliana Narpati','2002-06-21',22),
('mangunsongmustika@example.net','lO2NPFkDP+Bl','Yulia Gunawan','1994-05-20',31),
('marsito79@example.com','xW^EJW_rT0Sm','Bahuraksa Rajata','1947-12-16',77),
('maryadipermadi@example.net','$RZ6MRpwd$0b','Karimah Irawan, M.M.','2000-05-29',25),
('mayasarigalur@example.net','j0I%0@(9&Z2a','T. Virman Tampubolon, S.Gz','2011-04-09',14),
('mila76@example.org','pBKJLdoT@5Bu','Luhung Wacana','1966-04-01',59),
('mramadan@example.org',')mlOcNTstuy1','Ir. Lidya Nababan','1996-03-03',29),
('mulyanicinta@example.org','t4awFfHg+9ri','Tiara Uyainah, S.Gz','1969-06-20',55),
('narji07@example.net','6jBb#3BtXCSe','Aisyah Habibi','1986-05-12',39),
('narjihardiansyah@example.net',')w1(gvJWasFB','Rina Sihombing','1974-06-15',50),
('nasyiahlimar@example.org','#pS3R@(z455t','Kani Yulianti, S.E.I','2014-05-10',11),
('nasyiahrafi@example.org','3jsPCZcl4_E&','Nyana Yuniar','1945-05-14',80),
('novi13@example.com','J^lNf(6if_4F','Tgk. Ana Setiawan, S.Pd','1985-11-21',39),
('nurdiyantisilvia@example.org','!g%Jl%da4e5T','Vera Puspasari','1959-11-09',65),
('nwijayanti@example.com','C0FN33Ui@6)w','Slamet Prasasta, S.H.','1955-08-13',69),
('onashiruddin@example.net','m54_zlT0OHiK','Dr. Siti Maulana, M.Pd','1997-12-30',27),
('opan84@example.com','!9L4Ovr7K#^7','Cut Wani Usamah','2010-07-02',14),
('oskar41@example.org','%9#OR(vTKyAK','Tgk. Cindy Tamba','1965-01-27',60),
('pandu86@example.org','+wClBZL12UiB','Teguh Wacana','1959-07-14',65),
('pnashiruddin@example.net','2N4p!l3e5@+O','Salwa Prasasta','1976-11-04',48),
('ppalastri@example.com','$luyJkNaFZO5','Oliva Mayasari','1978-02-14',47),
('prabowowasis@example.net','%o(wcjhG6L)D','Lidya Rajasa','1963-05-06',62),
('prasetyakania@example.net','^VBDsFqzVLN6','Cinthia Pratiwi','1961-05-22',64),
('prayogaemil@example.com','_dqmcBzQI%56','Dr. Mahmud Prasetya, S.E.I','1980-06-05',45),
('prayogaoliva@example.net','+Ak6Ql6Y_kId','Hj. Salimah Wijaya, S.E.','1980-05-30',45),
('qadriansyah@example.com','Kcw4VKIl)V(Z','Danang Puspasari, S.I.Kom','1955-04-04',70),
('qnasyiah@example.com','X9f*7&Te$74&','Laila Januar','1962-01-05',63),
('qori59@example.com','$FD)YxzO58M2','Dinda Hassanah','1993-12-07',31),
('qrahayu@example.com','&oKPs9+Hb6#3','Tgk. Alika Prakasa, M.M.','1995-10-08',29),
('queen58@example.net','#NsMvlX329MW','R.M. Lulut Mansur','1960-02-20',65),
('rafidfirmansyah@example.net','#M7FJcckFL)g','Galiono Wasita','1962-07-03',62),
('rahimahmursinin@example.com','UCGXuR4dm^3#','Endah Samosir','1988-02-28',37),
('rahmiagustina@example.net','bw0ZoHzw*I4*','Tgk. Aurora Astuti','1996-12-28',28),
('rgunarto@example.com','^9681KqtIc2V','Nadine Widodo','2014-04-13',11),
('rpurnawati@example.com','0+2oFd0(u_O5','Gabriella Wijaya','1964-04-23',61),
('rsuryatmi@example.org','3!7Rzx_M0Qzb','Tgk. Asman Pradipta','1992-09-21',32),
('ryuliarti@example.net',')1V&Ql%Ncuv2','Labuh Prasetyo','1978-10-20',46),
('saadattamba@example.net','8+6K1qYNi*X#','Tgk. Prayitna Prakasa','1980-06-15',44),
('safinarahimah@example.com','e(lLLFlb5th6','Dono Hasanah','1991-09-21',33),
('sakaprabowo@example.net','&g@4TM3me680','Pranata Hutapea','1961-12-06',63),
('salsabilapratama@example.net','^Y72YpaK@wi6','Wasis Sinaga','1949-05-15',76),
('shalim@example.net',')uiTHvly#3AO','Yahya Winarsih','1963-09-07',61),
('shartati@example.com','SP_RSjeF_B6$','KH. Maras Tarihoran, S.IP','1984-04-16',41),
('sihombingdipa@example.net','!0r5WKb13vKl','Hilda Marpaung','1969-08-11',55),
('sihombinghendri@example.com','$23Rdfgd+OFJ','Cahyono Hidayat','2000-02-15',25),
('simanjuntakkamaria@example.net','H(drSgzz$@4Q','Mutia Halim','1949-04-12',76),
('siraitdarman@example.net','+XIh3nTT+v5A','Hairyanto Rahayu','1987-02-17',38),
('solehmarpaung@example.org','RR6)Frsdd_^5','Aslijan Mangunsong','1983-05-10',42),
('starihoran@example.net','*5F02_aA+lz@','Bala Andriani','1988-06-16',36),
('suryatmiasmuni@example.com','rD1RuudsBa@^','Drs. Karen Mayasari, M.Kom.','1964-09-19',60),
('suryatmisabri@example.net','L&zqwvYb&O3C','Sutan Emin Purwanti','1967-10-05',57),
('suwarnoirnanto@example.net','Zy0@$HJt)4nd','Simon Rahmawati','1957-08-21',67),
('talianugroho@example.org','BRa5Woux^aQq','dr. Irma Saptono, S.Gz','2013-02-14',12),
('timbulsiregar@example.net','&1Ktc9s%eE_1','Zulaikha Wahyudin','1985-05-27',40),
('tirafirmansyah@example.com','l^uVvtOF3&3x','Faizah Purnawati','1946-01-05',79),
('uchitariyanti@example.com','G$9VhxE3RRR(','Hani Yuniar','1948-09-18',76),
('unjanithamrin@example.com','%gKbzft&31cp','Wadi Firgantoro, S.Farm','1950-12-09',74),
('verakusumo@example.net','$638Kua0nkE6','Winda Nugroho','1998-07-28',26),
('victoria27@example.com','kwHcvyWD+4PQ','Prayoga Prasetyo, M.M.','1984-04-18',41),
('vpermata@example.net','*gTGkZrYQ2mL','Jelita Simbolon','1982-05-22',43),
('vsitompul@example.org','Bv3rEgEyU+Rc','T. Paiman Mayasari, M.TI.','1995-09-16',29),
('waluyogandi@example.com','+1q+kRp#lEWC','Garda Usada','2005-02-27',20),
('warji42@example.net','@eiUW0Bkda5W','Bakijan Firgantoro, S.Ked','1967-01-24',58),
('wijayantigandi@example.net','VBqHY^acBe@1','Catur Suryatmi','1950-03-04',75),
('wijayapangeran@example.com','XVNZX9aN1&DH','Wardaya Sihombing, S.Farm','1951-01-13',74),
('yogaputra@example.net','h1x&cm9m%#1B','Ulva Dabukke','1981-04-19',44),
('ypuspita@example.net','(KU2iLt!#cLm','Gantar Saragih','1968-01-19',57),
('yunita00@example.net','%2Dy*(e9!L#k','Ismail Ardianto, S.H.','1984-04-16',41),
('zpradipta@example.org','V0Bm5ly#!uLS','Drs. Wadi Hidayat','1954-01-25',71),
('zulaikasabar@example.net','@pFNcc#hW3wE','Anggabaya Pranowo','2008-10-31',16);
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
(74,27178,'1x sehari 2 tablet','Sebelum makan',5),
(74,56600,'2x sehari 1 tablet','Saat makan',3),
(74,79915,'2x sehari 1 tablet','Saat makan',2),
(77,10123,'1x sehari 2 tablet','Sesudah makan',1),
(77,58880,'3x sehari 1 tablet','Sesudah makan',4),
(77,61592,'3x sehari 1 tablet','Saat makan',1),
(77,65090,'2x sehari 1 tablet','Saat makan',3),
(77,70545,'1x sehari 2 tablet','Sesudah makan',5),
(219,47626,'2x sehari 1 tablet','Sesudah makan',3),
(219,48347,'1x sehari 1 tablet','Sebelum makan',2),
(219,55981,'1x sehari 1 tablet','Saat makan',5),
(219,68435,'3x sehari 2 tablet','Sesudah makan',3),
(219,70545,'1x sehari 1 tablet','Sebelum makan',1),
(493,5917,'3x sehari 2 tablet','Sesudah makan',3),
(493,40654,'2x sehari 2 tablet','Sebelum makan',2),
(493,47626,'2x sehari 2 tablet','Sesudah makan',2),
(493,57628,'1x sehari 2 tablet','Saat makan',4),
(493,61153,'1x sehari 1 tablet','Saat makan',4),
(493,64578,'3x sehari 1 tablet','Sesudah makan',5),
(584,49995,'2x sehari 2 tablet','Sesudah makan',5),
(584,58524,'1x sehari 2 tablet','Sebelum makan',3),
(584,61592,'2x sehari 2 tablet','Saat makan',3),
(584,84797,'2x sehari 2 tablet','Saat makan',5),
(584,89328,'2x sehari 1 tablet','Sesudah makan',3),
(584,96954,'2x sehari 1 tablet','Saat makan',1),
(929,38378,'1x sehari 2 tablet','Sesudah makan',3),
(929,39422,'3x sehari 1 tablet','Saat makan',4),
(929,51505,'1x sehari 1 tablet','Sebelum makan',3),
(929,57628,'3x sehari 1 tablet','Saat makan',2),
(929,58880,'1x sehari 1 tablet','Sebelum makan',5),
(929,62917,'1x sehari 2 tablet','Sebelum makan',1),
(929,63960,'3x sehari 2 tablet','Sebelum makan',5),
(929,71601,'2x sehari 2 tablet','Sebelum makan',1),
(929,84797,'2x sehari 1 tablet','Sebelum makan',1),
(929,87141,'1x sehari 1 tablet','Sebelum makan',3),
(1547,16394,'1x sehari 2 tablet','Saat makan',2),
(1547,39422,'2x sehari 2 tablet','Sesudah makan',4),
(1547,60124,'2x sehari 1 tablet','Saat makan',3),
(3202,21557,'1x sehari 1 tablet','Sebelum makan',4),
(3202,46987,'3x sehari 1 tablet','Sesudah makan',3),
(3202,64631,'2x sehari 2 tablet','Sesudah makan',1),
(3202,68435,'1x sehari 2 tablet','Saat makan',5),
(3202,71601,'2x sehari 1 tablet','Sesudah makan',2),
(3681,49995,'3x sehari 2 tablet','Sesudah makan',5),
(3681,58524,'2x sehari 2 tablet','Sebelum makan',4),
(3681,89328,'2x sehari 1 tablet','Sebelum makan',2),
(5020,6297,'1x sehari 1 tablet','Sesudah makan',4),
(5020,34460,'2x sehari 1 tablet','Saat makan',2),
(5020,40654,'3x sehari 2 tablet','Sesudah makan',5),
(5020,48495,'2x sehari 1 tablet','Sebelum makan',2),
(5020,50003,'3x sehari 1 tablet','Sesudah makan',4),
(5020,56828,'3x sehari 1 tablet','Sesudah makan',5),
(6947,6297,'2x sehari 1 tablet','Sesudah makan',5),
(6947,10123,'3x sehari 2 tablet','Sebelum makan',5),
(6947,18373,'1x sehari 2 tablet','Saat makan',4),
(6947,26038,'2x sehari 1 tablet','Sebelum makan',2),
(6947,74298,'3x sehari 1 tablet','Sesudah makan',3),
(7332,28701,'1x sehari 2 tablet','Sebelum makan',3),
(7332,38378,'1x sehari 2 tablet','Saat makan',2),
(7332,45210,'2x sehari 1 tablet','Saat makan',4),
(7332,48495,'2x sehari 2 tablet','Sebelum makan',5),
(7332,60345,'1x sehari 1 tablet','Saat makan',4),
(7332,87141,'2x sehari 2 tablet','Saat makan',1),
(7402,64631,'1x sehari 1 tablet','Sesudah makan',3),
(7402,85858,'2x sehari 1 tablet','Sebelum makan',1),
(7988,5917,'2x sehari 2 tablet','Sebelum makan',1),
(7988,21557,'2x sehari 1 tablet','Sesudah makan',1),
(7988,29350,'2x sehari 2 tablet','Sesudah makan',1),
(7988,55981,'1x sehari 1 tablet','Saat makan',3),
(7988,60345,'2x sehari 1 tablet','Sesudah makan',3),
(7988,64578,'1x sehari 2 tablet','Sesudah makan',1),
(7988,79915,'3x sehari 2 tablet','Sebelum makan',5),
(8052,15253,'1x sehari 2 tablet','Saat makan',3),
(8052,16394,'3x sehari 2 tablet','Sesudah makan',1),
(8052,46987,'3x sehari 1 tablet','Saat makan',3),
(8052,50003,'1x sehari 1 tablet','Sesudah makan',4),
(8052,51505,'2x sehari 1 tablet','Sesudah makan',4),
(8052,56600,'1x sehari 1 tablet','Sesudah makan',4),
(8052,74298,'3x sehari 1 tablet','Sesudah makan',3),
(8197,45210,'3x sehari 2 tablet','Saat makan',5),
(8197,60124,'3x sehari 1 tablet','Saat makan',3),
(8197,84296,'3x sehari 1 tablet','Sesudah makan',4),
(8197,96954,'3x sehari 1 tablet','Sesudah makan',2),
(8687,18373,'3x sehari 2 tablet','Sebelum makan',3),
(8687,26038,'2x sehari 2 tablet','Saat makan',5),
(8687,27178,'3x sehari 2 tablet','Sebelum makan',3),
(8687,48347,'2x sehari 1 tablet','Saat makan',2),
(9095,61153,'3x sehari 1 tablet','Saat makan',1),
(9095,62917,'2x sehari 2 tablet','Sebelum makan',4),
(9095,84296,'2x sehari 1 tablet','Saat makan',3),
(9110,29350,'2x sehari 2 tablet','Sesudah makan',2),
(9110,34460,'1x sehari 1 tablet','Saat makan',4),
(9110,38730,'1x sehari 2 tablet','Sesudah makan',1),
(9110,56828,'2x sehari 1 tablet','Saat makan',4),
(9110,63960,'2x sehari 2 tablet','Sebelum makan',5),
(9110,65090,'2x sehari 2 tablet','Saat makan',5),
(9110,85858,'1x sehari 1 tablet','Saat makan',2),
(9806,15253,'1x sehari 1 tablet','Saat makan',3),
(9806,28701,'2x sehari 2 tablet','Saat makan',3),
(9806,38730,'3x sehari 1 tablet','Saat makan',2);
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
(39,'RS Tbk Bengkulu','Jawa Tengah','Kota Administrasi Jakarta Selatan','Jl. Ciwastra No. 17'),
(125,'RS (Persero) Tbk Surabaya','Sulawesi Barat','Madiun','Jl. Jayawijaya No. 358'),
(199,'RS Tbk Jambi','Riau','Purwokerto','Gg. Surapati No. 006'),
(227,'RS (Persero) Tbk Tebingtinggi','Kalimantan Selatan','Payakumbuh','Jalan Surapati No. 3'),
(269,'RS (Persero) Tbk Kupang','Sumatera Barat','Bau-Bau','Gang Rajawali Timur No. 172'),
(273,'RS (Persero) Tbk Lubuklinggau','Jambi','Prabumulih','Jalan Siliwangi No. 419'),
(300,'RS (Persero) Tbk Bandung','Lampung','Pangkalpinang','Jl. Setiabudhi No. 130'),
(357,'RS (Persero) Tbk Binjai','DKI Jakarta','Tebingtinggi','Jalan Lembong No. 779'),
(385,'RS Tbk Pariaman','Maluku Utara','Banjarbaru','Gang Cihampelas No. 10'),
(409,'RS Tbk Jayapura','Kepulauan Riau','Denpasar','Jl. Laswi No. 886'),
(412,'RS Tbk Cirebon','Kalimantan Tengah','Tual','Gang Cikutra Timur No. 59'),
(484,'RS (Persero) Tbk Parepare','Jawa Tengah','Kotamobagu','Jalan Antapani Lama No. 16'),
(561,'RS Tbk Kota Administrasi Jakarta Selatan','Sulawesi Utara','Ternate','Gg. Kiaracondong No. 8'),
(602,'RS (Persero) Tbk Surabaya','DI Yogyakarta','Tangerang Selatan','Gang Ahmad Dahlan No. 011'),
(642,'RS Tbk Sibolga','Lampung','Banjarmasin','Gang Raya Setiabudhi No. 0'),
(680,'RS (Persero) Tbk Bekasi','Kalimantan Tengah','Meulaboh','Gang W.R. Supratman No. 656'),
(736,'RS (Persero) Tbk Cilegon','DI Yogyakarta','Dumai','Jl. W.R. Supratman No. 87'),
(760,'RS Tbk Tual','Kalimantan Barat','Kupang','Gang Jend. Sudirman No. 06'),
(800,'RS Tbk Depok','Maluku Utara','Pangkalpinang','Gang Monginsidi No. 479'),
(967,'RS Tbk Tomohon','Bali','Surabaya','Gang Rajawali Timur No. 45');
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
(11236,'full','Abu-abu'),
(12259,'medium','Kuning'),
(13151,'full','Hijau'),
(13670,'full','Putih'),
(13773,'full','Putih'),
(16658,'low','Putih'),
(16757,'low','Abu-abu'),
(18668,'low','Merah'),
(20887,'full','Hijau'),
(21010,'medium','Hitam'),
(25619,'medium','Hitam'),
(27346,'full','Putih'),
(29013,'medium','Merah'),
(30380,'low','Putih'),
(30810,'full','Merah'),
(31138,'full','Merah'),
(31188,'low','Hijau'),
(32937,'full','Biru'),
(33005,'medium','Hitam'),
(37069,'medium','Merah'),
(37104,'low','Hijau'),
(37220,'full','Kuning'),
(38037,'full','Biru'),
(38473,'low','Hijau'),
(40099,'full','Hitam'),
(40204,'medium','Hijau'),
(40285,'low','Kuning'),
(42359,'medium','Merah'),
(46236,'full','Merah'),
(52849,'full','Putih'),
(54576,'full','Merah'),
(55240,'low','Putih'),
(56059,'full','Putih'),
(59065,'full','Hijau'),
(61737,'full','Putih'),
(63441,'low','Putih'),
(65621,'low','Biru'),
(73326,'full','Biru'),
(73473,'full','Abu-abu'),
(75919,'full','Hitam'),
(78458,'medium','Hitam'),
(80853,'medium','Abu-abu'),
(81745,'medium','Hijau'),
(81881,'low','Hitam'),
(84970,'medium','Abu-abu'),
(90695,'full','Merah'),
(91536,'full','Kuning'),
(91636,'full','Kuning'),
(93877,'medium','Biru'),
(96038,'low','Hitam');
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
('afirgantoro@example.com','+62-0661-652-6973'),
('ajiono35@example.org','(031) 164-5580'),
('ajiono35@example.org','(0453) 445 8705'),
('ajiono35@example.org','+62-052-887-3013'),
('anahalimah@example.org','+62 (011) 627 4079'),
('anahalimah@example.org','0868733804'),
('anahalimah@example.org','088 276 3528'),
('ardiantokasiyah@example.org','(085) 296-0146'),
('ardiantokasiyah@example.org','+62 (0228) 532 0410'),
('asirwandafirgantoro@example.org','(0556) 335 8104'),
('asirwandafirgantoro@example.org','0899878107'),
('ayuliarti@example.net','+62-099-830-1026'),
('bakionoaryani@example.com','0820177571'),
('balamantri53@example.org','(085) 593-5986'),
('bancarkusmawati@example.org','(0842) 902 6816'),
('bancarkusmawati@example.org','+62 (0764) 834 4834'),
('betaniahutasoit@example.org','(066) 490 9442'),
('betaniahutasoit@example.org','+62 (11) 008 9345'),
('bprabowo@example.com','(0924) 421-6929'),
('bpudjiastuti@example.com','+62 (212) 053-3119'),
('bpudjiastuti@example.com','0889426117'),
('cawisono20@example.net','(060) 292 7707'),
('cawisono25@example.com','+62 (003) 818 2798'),
('cawisonosetiawan@example.net','+62 (0663) 224 1250'),
('cawisonosetiawan@example.net','+62-22-057-8689'),
('cinta97@example.com','(0443) 529-1771'),
('cmanullang@example.com','(0017) 236 4538'),
('cmanullang@example.com','(088) 218 0276'),
('cornelia32@example.org','+62 (09) 622 0506'),
('cornelia32@example.org','+62 (629) 282-4054'),
('darman57@example.org','+62 (0369) 147 0927'),
('devi09@example.org','089 312 6238'),
('emangunsong@example.com','+62 (077) 689-9790'),
('emangunsong@example.com','+62-93-318-2756'),
('emanmulyani@example.org','+62 (046) 317-4666'),
('emanmulyani@example.org','+62 (15) 634-4703'),
('emanmulyani@example.org','+62-13-873-7007'),
('emanmulyani@example.org','0836440525'),
('emong35@example.com','+62-0393-176-5253'),
('enashiruddin@example.com','+62-055-909-6065'),
('eyuliarti@example.com','+62 (030) 614 1502'),
('eyuliarti@example.com','+62 (066) 570 9423'),
('eyuliarti@example.com','083 127 4136'),
('faridacornelia@example.com','(044) 736-6213'),
('faridacornelia@example.com','+62 (0767) 084 6581'),
('faridacornelia@example.com','+62-693-050-6443'),
('ffarida@example.org','(040) 627-8143'),
('ffarida@example.org','+62 (0240) 191 1316'),
('ffarida@example.org','+62-350-561-8852'),
('firmansyahnajwa@example.net','(0847) 561 9885'),
('firmansyahnajwa@example.net','(093) 735-5593'),
('firmansyahnajwa@example.net','088 578 8282'),
('fnajmudin@example.net','(013) 927 4157'),
('gadarahimah@example.org','+62-815-076-0882'),
('gamanimangunsong@example.org','+62 (0764) 135-4042'),
('gamanto30@example.net','+62 (006) 504 1031'),
('garansimanjuntak@example.net','+62 (0027) 009-3566'),
('gardalailasari@example.org','(0243) 687 7471'),
('gardalailasari@example.org','+62 (010) 954 9250'),
('gardalailasari@example.org','+62 (072) 558 6616'),
('grahayu@example.net','+62 (348) 890-9685'),
('grahayu@example.net','+62-022-858-0389'),
('hairyantowaskita@example.net','+62 (849) 710 2966'),
('hamimahutasoit@example.net','+62 (66) 551-6414'),
('hardi19@example.com','+62 (709) 104-3872'),
('harjaya38@example.org','(0518) 359-6502'),
('harjaya38@example.org','+62-033-720-6666'),
('harjaya38@example.org','089 096 9601'),
('hastaprastuti@example.org','0890655125'),
('heryantosiregar@example.com','(039) 895-2805'),
('hidayantobalijan@example.org','(050) 911-4589'),
('hidayantobalijan@example.org','+62 (008) 312 9003'),
('himawansetiawan@example.com','+62 (070) 149 5839'),
('himawansetiawan@example.com','086 480 4878'),
('hjanuar@example.com','+62-0017-304-7821'),
('hjanuar@example.com','0890607411'),
('hutapeasakura@example.com','+62 (840) 895-8309'),
('hutapeasakura@example.com','+62-0616-066-8230'),
('hutapeasakura@example.com','0866900922'),
('hutasoitasirwada@example.com','+62-513-001-2248'),
('hutasoitdamu@example.org','+62 (0688) 412 5767'),
('hutasoitdamu@example.org','084 182 6664'),
('iadriansyah@example.org','+62 (0457) 537 1175'),
('iadriansyah@example.org','+62 (57) 974 9829'),
('ihsan58@example.net','+62 (66) 337-8818'),
('ihsan58@example.net','+62-0551-656-8211'),
('ihsan58@example.net','+62-846-757-5922'),
('inaanggriawan@example.com','+62-514-282-8999'),
('irwan75@example.com','(093) 018-1085'),
('irwan75@example.com','+62 (0026) 285 0930'),
('irwan75@example.com','083 408 3688'),
('iswahyudiida@example.net','(0721) 903 6493'),
('iswahyudiida@example.net','+62-017-314-8235'),
('jabalhidayat@example.net','(0685) 665-1735'),
('jabalhidayat@example.net','+62 (315) 157 6463'),
('jabalhidayat@example.net','+62 (87) 690 4847'),
('jabalhidayat@example.net','+62-0906-375-1608'),
('jagapati55@example.net','(0263) 325-2018'),
('jagapati55@example.net','+62 (0622) 088-8031'),
('jagaragasalahudin@example.com','(0215) 261 9959'),
('jagaragasalahudin@example.com','+62-01-739-3887'),
('jagaragasalahudin@example.com','085 787 4884'),
('januarkemba@example.com','(040) 679 6405'),
('januarkemba@example.com','+62 (0118) 876-0048'),
('januarkemba@example.com','+62 (053) 597-5602'),
('januarlintang@example.net','+62 (43) 857 8184'),
('jayeng38@example.org','+62 (82) 164 7510'),
('jayeng38@example.org','+62-068-063-5143'),
('jayeng38@example.org','+62-75-881-8016'),
('jelitasusanti@example.net','0868348404'),
('jumarihakim@example.com','(065) 982-4579'),
('kamaria67@example.com','+62 (0437) 169 8058'),
('kamaria67@example.com','+62-844-478-6905'),
('kania15@example.com','(024) 335 2815'),
('kartazulaika@example.net','+62 (002) 516-9793'),
('kartazulaika@example.net','+62-02-609-0371'),
('kartazulaika@example.net','083 921 0965'),
('kawaca07@example.net','+62 (00) 900-4218'),
('kmaulana@example.net','(025) 881-8415'),
('kmaulana@example.net','+62-910-944-4747'),
('ksamosir@example.org','+62 (27) 519 3605'),
('ksamosir@example.org','+62 (96) 827 1694'),
('ksamosir@example.org','+62-0649-942-5599'),
('ktampubolon@example.net','(0932) 314 1151'),
('ktampubolon@example.net','+62 (0270) 585-2475'),
('ktampubolon@example.net','+62 (483) 708 1892'),
('ktampubolon@example.net','+62-98-962-6390'),
('kurniawanozy@example.com','+62 (75) 764-9093'),
('kusmawatilaswi@example.net','085 664 6262'),
('kusumorika@example.net','(0537) 592-4743'),
('kuswandarinajam@example.com','(030) 036-3410'),
('kuswandarinajam@example.com','(079) 862-0575'),
('kuswandarinajam@example.com','+62 (0932) 424 9679'),
('laswi67@example.net','+62 (082) 367 4791'),
('laswi67@example.net','+62 (39) 621 2958'),
('laswi67@example.net','+62-0934-920-8364'),
('lfirmansyah@example.net','+62 (018) 118-8878'),
('lfirmansyah@example.net','082 861 6995'),
('lintang09@example.net','(0793) 161 4726'),
('lintang09@example.net','+62 (723) 947 2414'),
('lintang09@example.net','0802058404'),
('lmanullang@example.net','+62 (450) 739-2062'),
('lmanullang@example.net','+62-748-048-0134'),
('lmelani@example.net','(0033) 111-6143'),
('lmelani@example.net','+62-27-365-7226'),
('lsuryatmi@example.net','(016) 929-6108'),
('lsuryatmi@example.net','(034) 936 8560'),
('lsuryatmi@example.net','085 274 9744'),
('ltampubolon@example.com','(0359) 032 3208'),
('ltampubolon@example.com','(066) 452-7584'),
('ltampubolon@example.com','+62 (685) 297 3878'),
('luluh18@example.com','+62 (677) 924 8968'),
('maliksirait@example.net','+62 (055) 741-3129'),
('maman39@example.com','+62 (075) 991-9401'),
('maman39@example.com','+62 (586) 456-4902'),
('mangunsongmustika@example.net','(023) 915 5774'),
('mangunsongmustika@example.net','(0626) 932 9936'),
('mangunsongmustika@example.net','+62-947-697-1362'),
('marsito79@example.com','(0880) 946 6149'),
('maryadipermadi@example.net','+62 (34) 258-5356'),
('maryadipermadi@example.net','+62 (90) 148-7154'),
('mayasarigalur@example.net','+62 (93) 165-2960'),
('mila76@example.org','+62 (69) 224-3470'),
('mila76@example.org','+62-0871-311-4701'),
('mramadan@example.org','(0978) 698 2790'),
('mramadan@example.org','+62 (755) 712-3745'),
('mulyanicinta@example.org','(035) 307-4578'),
('mulyanicinta@example.org','+62 (745) 248-6982'),
('mulyanicinta@example.org','+62 (95) 098-4341'),
('narji07@example.net','(0186) 810 5318'),
('narji07@example.net','+62-886-140-3496'),
('narjihardiansyah@example.net','+62-043-920-7817'),
('nasyiahlimar@example.org','(0125) 274-7546'),
('nasyiahlimar@example.org','(0681) 216 3814'),
('nasyiahrafi@example.org','(0476) 333-5880'),
('novi13@example.com','(053) 335-8301'),
('novi13@example.com','+62 (0476) 361 4531'),
('nurdiyantisilvia@example.org','+62-0088-184-1826'),
('nwijayanti@example.com','+62 (065) 540 2123'),
('onashiruddin@example.net','(0336) 757-0994'),
('onashiruddin@example.net','+62 (055) 602 0997'),
('onashiruddin@example.net','+62-063-241-0511'),
('opan84@example.com','(0129) 359 9129'),
('opan84@example.com','(068) 193 5789'),
('opan84@example.com','+62 (44) 490 0140'),
('oskar41@example.org','+62 (72) 765 3799'),
('pandu86@example.org','(080) 192 5856'),
('pandu86@example.org','+62 (032) 197 4679'),
('pandu86@example.org','+62 (097) 690 5180'),
('pandu86@example.org','+62-0417-481-3101'),
('pnashiruddin@example.net','+62 (0742) 851 9418'),
('ppalastri@example.com','0861693610'),
('prabowowasis@example.net','(0718) 262-0021'),
('prabowowasis@example.net','+62 (0788) 734-9560'),
('prasetyakania@example.net','+62-361-730-0223'),
('prayogaemil@example.com','(079) 765 0222'),
('prayogaemil@example.com','+62 (097) 011-8371'),
('prayogaemil@example.com','+62 (56) 835 3984'),
('prayogaemil@example.com','+62-060-468-7659'),
('prayogaoliva@example.net','+62 (086) 743 8719'),
('prayogaoliva@example.net','086 259 8615'),
('prayogaoliva@example.net','0884027712'),
('qadriansyah@example.com','+62-598-937-3436'),
('qadriansyah@example.com','+62-72-498-2179'),
('qnasyiah@example.com','+62 (0356) 989 9960'),
('qnasyiah@example.com','+62 (0782) 950 6582'),
('qnasyiah@example.com','082 829 2487'),
('qori59@example.com','+62 (86) 720-8292'),
('qori59@example.com','+62-041-191-9739'),
('qori59@example.com','+62-0826-004-2348'),
('qrahayu@example.com','+62 (50) 862-3957'),
('qrahayu@example.com','+62 (932) 539 7980'),
('queen58@example.net','(0225) 317-0679'),
('queen58@example.net','(069) 764-5782'),
('rafidfirmansyah@example.net','+62 (0303) 623 0997'),
('rafidfirmansyah@example.net','+62-03-967-8176'),
('rafidfirmansyah@example.net','0845442310'),
('rahimahmursinin@example.com','+62 (060) 332-5817'),
('rahimahmursinin@example.com','+62 (0770) 306-2009'),
('rahmiagustina@example.net','+62 (077) 958-0613'),
('rgunarto@example.com','(0858) 514 0740'),
('rpurnawati@example.com','+62-0047-715-3701'),
('rsuryatmi@example.org','+62 (303) 790 1224'),
('rsuryatmi@example.org','+62 (365) 645 5355'),
('rsuryatmi@example.org','+62 (75) 445-3517'),
('rsuryatmi@example.org','+62 (908) 413-0843'),
('ryuliarti@example.net','+62 (18) 560-0397'),
('ryuliarti@example.net','+62-816-181-6462'),
('ryuliarti@example.net','+62-954-965-6392'),
('saadattamba@example.net','+62 (417) 697 4762'),
('saadattamba@example.net','082 872 0290'),
('safinarahimah@example.com','+62 (050) 833 7982'),
('safinarahimah@example.com','+62-118-783-7058'),
('safinarahimah@example.com','+62-57-614-7920'),
('sakaprabowo@example.net','(079) 180-3523'),
('sakaprabowo@example.net','+62 (043) 200 8785'),
('sakaprabowo@example.net','+62-015-558-5362'),
('sakaprabowo@example.net','+62-47-545-0042'),
('salsabilapratama@example.net','(064) 660 1466'),
('salsabilapratama@example.net','+62 (010) 348 7164'),
('shalim@example.net','+62 (0066) 592-8124'),
('shartati@example.com','(054) 961 0606'),
('sihombingdipa@example.net','+62 (166) 232 0211'),
('sihombingdipa@example.net','+62 (975) 591-3626'),
('sihombingdipa@example.net','0821438642'),
('sihombinghendri@example.com','(024) 962 3447'),
('sihombinghendri@example.com','+62-100-194-9059'),
('simanjuntakkamaria@example.net','+62 (026) 186-2480'),
('simanjuntakkamaria@example.net','+62 (0576) 820 6374'),
('siraitdarman@example.net','(0959) 682 7983'),
('siraitdarman@example.net','+62 (48) 412 5453'),
('siraitdarman@example.net','+62-196-875-4760'),
('solehmarpaung@example.org','(0338) 831-5747'),
('solehmarpaung@example.org','+62 (0016) 342 5206'),
('solehmarpaung@example.org','+62 (74) 341-7062'),
('starihoran@example.net','(062) 577-1653'),
('starihoran@example.net','+62 (071) 542-6311'),
('starihoran@example.net','+62 (54) 538 4265'),
('suryatmiasmuni@example.com','(066) 005 6881'),
('suryatmiasmuni@example.com','+62 (409) 975 2771'),
('suryatmisabri@example.net','+62 (0098) 809 1334'),
('suryatmisabri@example.net','081 571 7339'),
('suryatmisabri@example.net','0862123387'),
('suwarnoirnanto@example.net','(0369) 130-8932'),
('suwarnoirnanto@example.net','+62 (47) 578-0604'),
('suwarnoirnanto@example.net','+62-469-799-2443'),
('talianugroho@example.org','+62-54-346-0419'),
('timbulsiregar@example.net','+62-0655-561-6306'),
('timbulsiregar@example.net','+62-0719-585-8483'),
('tirafirmansyah@example.com','+62 (076) 782 5497'),
('uchitariyanti@example.com','0877925551'),
('unjanithamrin@example.com','(0606) 386 3371'),
('unjanithamrin@example.com','(081) 766-8848'),
('verakusumo@example.net','+62-0737-561-3079'),
('verakusumo@example.net','+62-243-296-0515'),
('verakusumo@example.net','0802541299'),
('victoria27@example.com','(0628) 132-0258'),
('victoria27@example.com','+62 (13) 560 1887'),
('vpermata@example.net','(015) 583 1603'),
('vpermata@example.net','(0427) 778-8035'),
('vsitompul@example.org','+62 (19) 580 5616'),
('vsitompul@example.org','+62 (969) 257-1415'),
('vsitompul@example.org','+62-0044-601-1352'),
('vsitompul@example.org','+62-38-219-8833'),
('waluyogandi@example.com','+62 (04) 931 0343'),
('waluyogandi@example.com','084 511 3994'),
('warji42@example.net','(042) 737-8043'),
('warji42@example.net','+62 (916) 128-6710'),
('wijayantigandi@example.net','(0662) 115 9171'),
('wijayantigandi@example.net','+62-0005-495-4287'),
('wijayantigandi@example.net','+62-054-918-1005'),
('wijayapangeran@example.com','+62 (388) 719-5917'),
('yogaputra@example.net','(0399) 981-5922'),
('ypuspita@example.net','+62 (50) 314 1992'),
('yunita00@example.net','(028) 799-4369'),
('yunita00@example.net','(0439) 746 1282'),
('yunita00@example.net','+62-392-982-1856'),
('zpradipta@example.org','+62-968-052-5015'),
('zulaikasabar@example.net','(031) 805-9702'),
('zulaikasabar@example.net','+62 (394) 939 1625');
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
(39,'+62 (071) 778-0149'),
(125,'+62-35-582-7627'),
(199,'(025) 679-8892'),
(199,'(033) 208 9231'),
(199,'+62 (968) 790-2714'),
(199,'+62-091-163-8073'),
(199,'+62-092-090-3725'),
(199,'084 110 4643'),
(227,'+62 (0136) 640 0065'),
(269,'(0295) 982 3637'),
(269,'(070) 182-2836'),
(269,'+62 (548) 706 7592'),
(269,'+62-12-356-0266'),
(273,'(0419) 637 4132'),
(300,'+62 (065) 469-1361'),
(300,'+62-040-890-6596'),
(300,'+62-10-827-3071'),
(357,'(035) 751-1100'),
(357,'+62-60-019-2558'),
(385,'(034) 431 9021'),
(385,'+62 (050) 673-2262'),
(385,'+62 (59) 864 8206'),
(385,'+62-0899-574-1570'),
(409,'+62 (0243) 737-6267'),
(409,'+62-05-918-8096'),
(412,'0822035604'),
(484,'+62 (0124) 402-6492'),
(484,'+62-244-346-2691'),
(484,'084 808 0589'),
(484,'0861186153'),
(561,'+62 (0084) 908-7884'),
(561,'+62 (0278) 951-2762'),
(561,'0837431598'),
(561,'0856879776'),
(602,'+62 (096) 625-5323'),
(642,'(0420) 393-7772'),
(680,'(021) 469 0506'),
(680,'(0521) 482-5624'),
(680,'+62-62-563-6654'),
(736,'+62 (0377) 337 1794'),
(736,'+62 (0603) 852-0788'),
(736,'+62-0172-538-6294'),
(760,'+62 (0228) 756-5023'),
(760,'+62 (429) 678-0658'),
(800,'+62 (096) 417 9763'),
(800,'+62-808-900-5413'),
(967,'+62 (0473) 167 1590'),
(967,'+62 (241) 880-8843'),
(967,'+62 (46) 417 0993'),
(967,'+62-757-825-6655');
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
('ajiono35@example.org','Bedah',412,'5490591846982','Perawat'),
('anahalimah@example.org','Umum',680,'5349795564126','Perawat'),
('ardiantokasiyah@example.org','Anak',642,'5898499385280','Dokter'),
('asirwandafirgantoro@example.org','Anak',484,'3054480757067','Perawat'),
('ayuliarti@example.net','Kulit',602,'8120308546085','Perawat'),
('bancarkusmawati@example.org','Kardiologi',300,'1227672577008','Perawat'),
('betaniahutasoit@example.org','Neurologi',39,'3654343841898','Perawat'),
('bpudjiastuti@example.com','Anak',39,'0736161220857','Dokter'),
('cawisono20@example.net','Kulit',736,'0395516019470','Perawat'),
('cinta97@example.com','Anak',357,'0689529465486','Perawat'),
('cmanullang@example.com','Kulit',412,'4258283677082','Perawat'),
('cornelia32@example.org','Neurologi',412,'5833122813365','Perawat'),
('darman57@example.org','Kardiologi',227,'0796970032331','Dokter'),
('emangunsong@example.com','Neurologi',967,'7102092034888','Dokter'),
('emanmulyani@example.org','Umum',680,'7803243870705','Dokter'),
('emong35@example.com','Bedah',199,'3147673316223','Perawat'),
('eyuliarti@example.com','Anak',484,'1989395248039','Perawat'),
('ffarida@example.org','Kulit',409,'1858880281663','Dokter'),
('firmansyahnajwa@example.net','Gigi',357,'0005021676920','Dokter'),
('fnajmudin@example.net','Kardiologi',800,'3412143966834','Perawat'),
('gadarahimah@example.org','Kulit',736,'5415822019690','Dokter'),
('gamanimangunsong@example.org','Kulit',736,'8592728509030','Perawat'),
('gamanto30@example.net','Kardiologi',300,'4517152241275','Dokter'),
('garansimanjuntak@example.net','Umum',199,'8296369798418','Dokter'),
('gardalailasari@example.org','Umum',269,'5060437759747','Perawat'),
('grahayu@example.net','Anak',484,'6990670033931','Perawat'),
('hairyantowaskita@example.net','Neurologi',412,'7148856511875','Dokter'),
('hardi19@example.com','Kulit',642,'3397078057041','Dokter'),
('hastaprastuti@example.org','Neurologi',561,'5436308937482','Dokter'),
('heryantosiregar@example.com','Kulit',409,'3846134820667','Dokter'),
('hidayantobalijan@example.org','Umum',409,'7452498021310','Dokter'),
('hjanuar@example.com','Gigi',602,'0017989891574','Perawat'),
('hutasoitdamu@example.org','Kulit',736,'4765823773482','Perawat'),
('inaanggriawan@example.com','Kulit',561,'6665989838132','Dokter'),
('irwan75@example.com','Gigi',602,'8537060628117','Perawat'),
('iswahyudiida@example.net','Bedah',736,'3656738247933','Dokter'),
('jagapati55@example.net','Umum',680,'8099864341956','Perawat'),
('jagaragasalahudin@example.com','Umum',760,'8070803246983','Dokter'),
('januarkemba@example.com','Kulit',736,'7045638123403','Dokter'),
('januarlintang@example.net','Gigi',385,'2914048361680','Perawat'),
('jayeng38@example.org','Kardiologi',602,'6150314190295','Dokter'),
('jumarihakim@example.com','Kardiologi',800,'8465714188567','Dokter'),
('kamaria67@example.com','Umum',561,'0737443144045','Perawat'),
('kartazulaika@example.net','Anak',642,'8135911600598','Perawat'),
('kawaca07@example.net','Kardiologi',227,'6182435320039','Perawat'),
('kmaulana@example.net','Kulit',409,'8841264415993','Perawat'),
('ktampubolon@example.net','Gigi',385,'7034392137252','Perawat'),
('kuswandarinajam@example.com','Umum',680,'0006403250998','Dokter'),
('lintang09@example.net','Anak',484,'0866046094379','Dokter'),
('lmanullang@example.net','Umum',300,'9377989504746','Dokter'),
('lsuryatmi@example.net','Kulit',39,'9730903979943','Dokter'),
('luluh18@example.com','Bedah',125,'1475702167013','Perawat'),
('maliksirait@example.net','Anak',39,'7762022803474','Dokter'),
('maman39@example.com','Neurologi',412,'3131282246101','Dokter'),
('mangunsongmustika@example.net','Anak',125,'9624881745778','Perawat'),
('maryadipermadi@example.net','Bedah',967,'9823135512351','Dokter'),
('mayasarigalur@example.net','Neurologi',412,'8407263544029','Dokter'),
('mila76@example.org','Anak',484,'8743004805937','Dokter'),
('mramadan@example.org','Kulit',409,'5759725393090','Dokter'),
('narji07@example.net','Umum',409,'8343781813493','Perawat'),
('narjihardiansyah@example.net','Umum',269,'5541680637124','Dokter'),
('nasyiahlimar@example.org','Umum',409,'7840547949157','Dokter'),
('novi13@example.com','Kardiologi',300,'4350052809929','Perawat'),
('nurdiyantisilvia@example.org','Anak',269,'8551011770939','Dokter'),
('opan84@example.com','Gigi',602,'1697302075035','Dokter'),
('oskar41@example.org','Anak',269,'6626310394871','Dokter'),
('pnashiruddin@example.net','Umum',409,'5597527475398','Perawat'),
('ppalastri@example.com','Umum',300,'0104421467111','Dokter'),
('prabowowasis@example.net','Anak',484,'5268074991739','Perawat'),
('prayogaemil@example.com','Umum',269,'1246572417085','Perawat'),
('prayogaoliva@example.net','Kulit',760,'5594015298859','Dokter'),
('qori59@example.com','Umum',680,'7880676365008','Dokter'),
('qrahayu@example.com','Umum',199,'8439051348694','Dokter'),
('queen58@example.net','Anak',125,'2215562929883','Perawat'),
('rafidfirmansyah@example.net','Bedah',273,'9290663969801','Perawat'),
('rahimahmursinin@example.com','Neurologi',412,'0607007939588','Perawat'),
('rahmiagustina@example.net','Kulit',736,'1978174956883','Perawat'),
('rgunarto@example.com','Neurologi',561,'7087932919726','Perawat'),
('saadattamba@example.net','Neurologi',561,'1285012804986','Perawat'),
('sakaprabowo@example.net','Neurologi',561,'7671304689418','Perawat'),
('salsabilapratama@example.net','Gigi',602,'5873995203788','Perawat'),
('shartati@example.com','Anak',269,'5346909498629','Dokter'),
('sihombinghendri@example.com','Umum',300,'1299312968750','Perawat'),
('solehmarpaung@example.org','Umum',125,'1357095627667','Dokter'),
('suryatmiasmuni@example.com','Kulit',602,'2636406197969','Perawat'),
('suryatmisabri@example.net','Kulit',561,'8289781455533','Dokter'),
('suwarnoirnanto@example.net','Kardiologi',300,'2592685312038','Dokter'),
('talianugroho@example.org','Neurologi',800,'5861883180129','Perawat'),
('timbulsiregar@example.net','Gigi',602,'2193610209531','Dokter'),
('uchitariyanti@example.com','Umum',680,'4202147745554','Perawat'),
('unjanithamrin@example.com','Kardiologi',300,'6607944872966','Perawat'),
('victoria27@example.com','Neurologi',412,'2076644836280','Dokter'),
('vpermata@example.net','Bedah',736,'7357284302058','Dokter'),
('vsitompul@example.org','Kardiologi',412,'0194993915257','Dokter'),
('waluyogandi@example.com','Anak',642,'0876584406244','Perawat'),
('warji42@example.net','Kardiologi',680,'9666829596851','Perawat'),
('wijayapangeran@example.com','Bedah',273,'4776706813157','Dokter'),
('yunita00@example.net','Kulit',642,'5573016143672','Perawat'),
('zpradipta@example.org','Gigi',357,'1405787741372','Dokter'),
('zulaikasabar@example.net','Bedah',125,'2966982413017','Dokter');
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

-- Dump completed on 2025-05-31 17:45:04
