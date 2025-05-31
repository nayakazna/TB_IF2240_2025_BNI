/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Halobot
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_medis`
--

LOCK TABLES `layanan_medis` WRITE;
/*!40000 ALTER TABLE `layanan_medis` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_layanan`
--

LOCK TABLES `pemesanan_layanan` WRITE;
/*!40000 ALTER TABLE `pemesanan_layanan` DISABLE KEYS */;
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
-- DELIMITER ;;
-- /*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_validasi_resep_before_insert
--     BEFORE INSERT ON pengeluaran_resep
--     FOR EACH ROW
-- BEGIN
--     DECLARE item_lengkap INT DEFAULT 0;
--     DECLARE pesan_error VARCHAR(255);
    
    
--     SELECT COUNT(*) INTO item_lengkap
--     FROM resep_obat 
--     WHERE id_resep = NEW.id_resep
--       AND id_obat IS NOT NULL 
--       AND id_obat != ''
--       AND cara_pakai IS NOT NULL 
--       AND cara_pakai != ''
--       AND dosis IS NOT NULL 
--       AND dosis != ''
--       AND kuantitas IS NOT NULL 
--       AND kuantitas > 0;
    
    
--     IF item_lengkap = 0 THEN
--         SET pesan_error = CONCAT('Gagal menyimpan pengeluaran resep ID: ', NEW.id_resep,'. Minimal satu item resep harus memiliki informasi lengkap ', '(ID obat, cara pakai, dosis, dan kuantitas).');
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = pesan_error;
--     END IF;
-- END */;;
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
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-05-31 21:49:06
