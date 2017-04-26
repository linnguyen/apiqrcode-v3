-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: thietbi
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-04-13 02:32:04','2017-04-13 02:32:04');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_chi_tiet_nhap_xuat`
--

DROP TABLE IF EXISTS `tb_chi_tiet_nhap_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_chi_tiet_nhap_xuat` (
  `thiet_bi_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_thiet_bi` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_thiet_bi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `don_vi_tinh` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_luong` int(10) DEFAULT NULL,
  `han_bao_hanh` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_hieu_tscd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cong_xuat` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguyen_gia` int(20) DEFAULT NULL,
  `mo_ta` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khau_hao` int(10) DEFAULT NULL,
  `hang_san_xuat` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ma_nuoc_san_xuat` int(10) DEFAULT NULL,
  `ma_phieu_nhap` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_phieu_xuat` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_san_xuat` date DEFAULT NULL,
  `thong_so_ki_thuat` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`thiet_bi_id`),
  KEY `ma_thiet_bi` (`ma_thiet_bi`,`ma_nuoc_san_xuat`,`ma_phieu_nhap`,`ma_phieu_xuat`),
  KEY `ma_thiet_bi_2` (`ma_thiet_bi`),
  KEY `ma_nuoc_san_xuat` (`ma_nuoc_san_xuat`),
  KEY `ma_phieu_nhap` (`ma_phieu_nhap`),
  KEY `ma_phieu_nhap_2` (`ma_phieu_nhap`),
  CONSTRAINT `tb_chi_tiet_nhap_xuat_ibfk_2` FOREIGN KEY (`ma_nuoc_san_xuat`) REFERENCES `tb_nuoc_san_xuat` (`ma_nuoc_san_xuat`),
  CONSTRAINT `tb_chi_tiet_nhap_xuat_ibfk_3` FOREIGN KEY (`ma_thiet_bi`) REFERENCES `tb_danh_muc_thiet_bi` (`ma_thiet_bi`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_chi_tiet_nhap_xuat`
--

LOCK TABLES `tb_chi_tiet_nhap_xuat` WRITE;
/*!40000 ALTER TABLE `tb_chi_tiet_nhap_xuat` DISABLE KEYS */;
INSERT INTO `tb_chi_tiet_nhap_xuat` VALUES (1,'TB00001','Bộ máy tính để bàn Dell optiplex 990','Bộ',4,'24 tháng','Tem463','30W',1200000,'CPU vỏ đen, kích thước 50*50*50',11,'Dell',3,'N0804171','','TL2017MT','2016-07-05',NULL),(2,'TB00002','Máy vi tính G41 và Intel core 2 Dual','Bộ',7,'10 tháng','Tem464','20W',13000000,'CPU vỏ đồng, kích thước 40*40*20',19,'Intel',5,'N0804171','','US2017MT','2016-08-29',NULL),(3,'TB00003','Roto','Bộ',43,'12 tháng','Tem468','20W',23000000,'Dải áp xuất làm việc 300Kp - 1200Kp',13,'Yoko',3,'N0804172','','TL2017RT','2017-09-30',NULL),(4,'TB00004','Stato','Bộ',100,'7 tháng','Tem967','100W',12000000,'Hoạt động tốt trong vùng có áp xuất 100Mp',13,'Roki',5,'N0804173','','US2017ST','2016-09-21',NULL),(5,'TB00001','Bộ máy tính để bàn Dell optiplex 990','Bộ',7,'24 tháng','Tem463','30W',12000000,'CPU vỏ đen, kích thước 50*50*50',11,'Dell',3,'N0804174','','TL2017MT','2016-05-14',NULL),(6,'TB00001','Bộ máy tính để bàn Dell optiplex 990','Bộ',5,'24 tháng','Tem463','30W',12000000,'CPU vỏ đen, kích thước 50*50*50',11,'Dell',3,'','X12341','TL2017MT','2016-11-12',NULL),(7,'TB00001','Bộ máy tính để bàn Dell optiplex 990','Bộ',2,'24 tháng','Tem463','30W',12000000,'CPU vỏ đen, kích thước 50*50*50',11,'Dell',3,'','X12342','TL2017MT','2016-11-25',NULL),(8,'TB00003','Roto','Bộ',50,'12 tháng','Tem468','20W',2300000,'Dải áp xuất làm việc 300Kp - 1200Kp',13,'Yoko',3,'N0804175','','TL2017RT','2017-01-10',NULL),(9,'TB00004','Stato','Bộ',40,'7 tháng','Tem967','100W',12000000,'Hoạt động tốt trong vùng có áp xuất 100Mp',13,'Roki',5,NULL,'X12342','US2017ST','2015-01-09',NULL);
/*!40000 ALTER TABLE `tb_chi_tiet_nhap_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_chi_tiet_thiet_bi_xuat`
--

DROP TABLE IF EXISTS `tb_chi_tiet_thiet_bi_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_chi_tiet_thiet_bi_xuat` (
  `ma_ctpx` int(11) NOT NULL AUTO_INCREMENT,
  `ma_qr` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_phieu_xuat` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_tinh_trang` int(10) DEFAULT NULL,
  PRIMARY KEY (`ma_ctpx`),
  KEY `ma_tinh_trang` (`ma_tinh_trang`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_chi_tiet_thiet_bi_xuat`
--

LOCK TABLES `tb_chi_tiet_thiet_bi_xuat` WRITE;
/*!40000 ALTER TABLE `tb_chi_tiet_thiet_bi_xuat` DISABLE KEYS */;
INSERT INTO `tb_chi_tiet_thiet_bi_xuat` VALUES (1,'US2017MTM00011','X019293',NULL);
/*!40000 ALTER TABLE `tb_chi_tiet_thiet_bi_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_danh_muc_chung_loai`
--

DROP TABLE IF EXISTS `tb_danh_muc_chung_loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_danh_muc_chung_loai` (
  `ma_chung_loai` int(10) NOT NULL AUTO_INCREMENT,
  `ten_chung_loai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_nhom_thiet_bi` int(10) DEFAULT NULL,
  `ghi_chu` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_chung_loai`),
  KEY `ma_nhom_thiet_bi` (`ma_nhom_thiet_bi`),
  CONSTRAINT `tb_danh_muc_chung_loai_ibfk_1` FOREIGN KEY (`ma_nhom_thiet_bi`) REFERENCES `tb_nhom_thiet_bi` (`ma_nhom_thiet_bi`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_danh_muc_chung_loai`
--

LOCK TABLES `tb_danh_muc_chung_loai` WRITE;
/*!40000 ALTER TABLE `tb_danh_muc_chung_loai` DISABLE KEYS */;
INSERT INTO `tb_danh_muc_chung_loai` VALUES (1,'Thiết bị tin học, viễn thông',1,NULL),(2,'Máy móc cơ học',1,NULL),(3,'Thiết bị cơ khí',1,NULL),(4,'Thiết bị điện, điện tử',1,NULL),(5,'Thiết bị đo lường, thí nghiệm',1,NULL),(6,'Thiết bị ánh sáng',1,NULL),(7,'Thiết bị âm thanh',1,NULL),(8,'Máy móc, thiết bị khác',1,NULL),(9,'Thiết bị phục vụ giảng dạy khác',1,NULL),(10,'Bàn họp',2,NULL),(11,'Bàn làm việc',2,NULL),(12,'Ghế làm việc',2,NULL),(13,'Giá đặt tài liệu',2,NULL),(14,'Tủ chứa tài liệu',2,NULL),(16,'Máy photocopy',2,NULL),(17,'Máy in',2,NULL),(18,'Điều hòa không khi',2,NULL),(19,'Máy hút bụi',2,NULL),(20,'Thiết bị liên lạc',2,NULL),(21,'Quạt điện',2,NULL),(22,'Máy lọc nước',2,NULL),(23,'Máy vi tính văn phòng',2,NULL),(24,'Thiết bị văn phòng khác',2,NULL);
/*!40000 ALTER TABLE `tb_danh_muc_chung_loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_danh_muc_thiet_bi`
--

DROP TABLE IF EXISTS `tb_danh_muc_thiet_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_danh_muc_thiet_bi` (
  `ma_thiet_bi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ten_thiet_bi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dac_tinh_ky_thuat` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_chung_loai` int(10) DEFAULT NULL,
  PRIMARY KEY (`ma_thiet_bi`),
  KEY `ma_chung_loai` (`ma_chung_loai`),
  CONSTRAINT `tb_danh_muc_thiet_bi_ibfk_1` FOREIGN KEY (`ma_chung_loai`) REFERENCES `tb_danh_muc_chung_loai` (`ma_chung_loai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_danh_muc_thiet_bi`
--

LOCK TABLES `tb_danh_muc_thiet_bi` WRITE;
/*!40000 ALTER TABLE `tb_danh_muc_thiet_bi` DISABLE KEYS */;
INSERT INTO `tb_danh_muc_thiet_bi` VALUES ('TB00001','Bộ máy tính để bàn Dell optiplex 99','Chipset: Intel Q45 Bộ vi xử lý - CPU: Intel Core2 Duo E8400 (6M Cache, 3.00 GHz)Card màn hình - VGA: Tích hợp Intel GMA 4500Bộ nhớ trong - Ram: 2GB DDR3 - Hỗ trợ Ram Dual Chanel (4 khe cắm DDR3 -  1066MHz)Ổ đia cứng - HDD: 250 GBỔ đĩa quang - ODD: DVD Slim-line',1),('TB00002','Máy Bộ G41 Và Intel Core 2 Duo E7500','Mainboard :  Socket 775 G41/G45 Asus, Gigabyte, \r\nChip CPU :  Intel ( R ) Core 2 Duo E7500 ( 2.93Ghz x 2 ), L2 Cache 3M, FSB Bus 1066, chơi Game xử lý rất nhanh và mạnh. \r\nHDD :  80G Seagate / Hitachi / Samsung / Western \r\n\r\nBộ Nhớ Ram :  DDR3 4G Bus 1333.\r\n\r\nCard Màn Hình ( VGA ) :  Dung lượng lên đến 1Gb Intel ( R ) G41/G45 Express Family Chipset Onboard.\r\nSound ( Âm thanh ) :  Audio Onboard',1),('TB00003','Máy Bộ G41 Và Intel Core 2 Duo E4500','Mainboard :  G41 Jetstart support all CPU, socket 775.\r\nChip CPU :  Intel ( R ) Core 2 Duo E4500 ( 2.2 GHz, Cache 2M, Bus 800 ).\r\nHDD :  80G Seagate / Hitachi / Samsung / Western Digital.\r\n\r\n\r\nBộ Nhớ Ram :  DDR3 2G Bus 1333 \r\n\r\nCard Màn Hình ( VGA ) :  Onboard.\r\n\r\nSound ( Âm thanh ) :  Audio Onboard ',1),('TB00004','Màn hình vi tính LG Model: 19M38A','Hãng sản xuất: LG.\r\nModel: 19M38A.\r\nKích thước màn hình: 18.5 inch.\r\nKiểu màn hình: LED HD.\r\nĐộ phân giải: 1366×768 pexels.\r\nGóc nhìn: 90⸰(H)/60⸰(V).\r\nKhả năng hiển thị: 16.7 triệu màu.\r\nĐộ sáng màn hình: 200cd/m2.\r\nĐộ tương phản: 5000000:1.',1),('TB00005','Màn hình máy tính LG 20M38A','Loại màn hình:LED\r\nĐộ phân giải màn hình:1600 x 900 pixels\r\nCổng kết nối:D-Sub\r\nThời gian đáp ứng:5 ms\r\nGóc nhìn:90/65 độ',1),('TB00006','Màn hình vi tính ACER EB192Q\r\n','Loại màn hình: LED\r\nKích thước: 18.5 inch\r\nĐộ phân giải: 1366 x 768\r\nKết nối: VGA\r\nĐộ sáng: 200 cd/m2',1),('TB00007','Đồng hồ vạn năng chỉ thị kim Sanwa SP-18D (3%)','DCV: 0.3/3/12/30/120/600V (20kΩ/V)/3%\r\nACV: 12/30/120/300/600V (9kΩ/V)/3%\r\nDCA: 60µ/30m/0.3A/3%\r\nĐiện trở: 2k/20k/2M/200MΩ/3%\r\nĐiện dung: 1000µF/3%\r\nPin: R6Px2\r\nCầu chì: Ø5.2x20mm (250V/0.5A)\r\nKích thước/cân nặng: 159x129x41/320g',5),('TB00008','Đồng hồ vạn năng KYORITSU 1011, K1011','- Chỉ thị số.\r\n- DCV: 600mV/6/60/600V \r\n- ACV: 600mV/6/60/600V\r\n- HZ: 10/100/1000KHz/10MHz\r\n- DCA: 600/6000µA/60/600mA/6/10A \r\n- ACA: 600/6000µA/60/600mA/6/10A.\r\n- Ω: 400Ω/4/40/400KΩ/4/40MΩ \r\n- Kiểm tra diot: 2.8V/0.4mA\r\n- Kiểm tra tụ: 40nF/400nF/4 µF/40 µF/400µF/4000µF\r\n- Nhiệt độ: -50...300độ C (-58...572độ F) \r\n- Nguồn : R6P (1.5Vx2)\r\n- Kích thước : 161(L) × 82(W) × 50(D)mm',5),('TB00009','Máy may Juki HZL-1000','Xuất xứ Nhật Bản\r\n',2),('TB00010','Máy may Toyota EZ-ONE','Xuất xứ Nhật Bản',2),('TB00011','Mô hình máy quấn quạt bàn - Động cơ','Nguồn cấp: 220v/50Hz\r\nĐộng cơ quấn : 3 Pha 220v - 1kp\r\nBiến tần điều khiển tốc độ: 220v - 1hp\r\nĐộng cơ rãi: servo - truyền động vitme bi\r\nKích thước: 1200x700x1000 mm\r\nTrọng lượng : 200Kg\r\nBước rãi: 0… 10 mm\r\nTốc độ quấn : : 0 … 3000 vòng/ phút\r\nĐường kính dây quấn : 0.05 ... 2.00 mm \r\nPhanh hãm : 24 vdc',3),('TB00012','Rơ le bảo vệ mất pha Samwha PMR-44','Hãng sản xuất: SAMWHA\r\nLoại: Gắn trên Din Rail\r\nXuất xứ: Korea',4),('TB00013','Relay Omron MY2N 110VAC','Hãng sản xuất: OMRON\r\nLoại: Rơ le trung gian',4),('TB00014','Điện thoại cố định PANASONIC KX-TS560','Model: KX-TS560\r\nXuất xứ: Nhật Bản',1),('TB00015','Điện thoại cố định Panasonic KX-TS500MX','Kiểu ống nghe	Có dây\r\nChức năng	• Chọn giai điệu nhạc chuông\r\nMàu sắc	5 màu: trắng, đen,mận chín, xanh da trời, xanh tím than',1);
/*!40000 ALTER TABLE `tb_danh_muc_thiet_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_don_vi`
--

DROP TABLE IF EXISTS `tb_don_vi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_don_vi` (
  `ma_khoa` int(10) NOT NULL AUTO_INCREMENT,
  `ten_khoa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_khoa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_don_vi`
--

LOCK TABLES `tb_don_vi` WRITE;
/*!40000 ALTER TABLE `tb_don_vi` DISABLE KEYS */;
INSERT INTO `tb_don_vi` VALUES (1,'Cơ Khí',NULL),(2,'Cơ Điện Lạnh',NULL),(3,'Công Nghệ Thông Tin',NULL),(4,'Điện - Điện tử',NULL),(5,'Du lịch',NULL),(6,'May',NULL),(7,'Kinh tế',NULL),(8,'Sư phạm nghề',NULL),(9,'Ngoại ngữ',NULL),(10,'Phòng quản lý thiết bị',NULL);
/*!40000 ALTER TABLE `tb_don_vi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kho`
--

DROP TABLE IF EXISTS `tb_kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_kho` (
  `ma_kho` int(10) NOT NULL AUTO_INCREMENT,
  `ten_kho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_phong_ban` int(10) NOT NULL,
  PRIMARY KEY (`ma_kho`),
  KEY `ma_phong_ban` (`ma_phong_ban`),
  CONSTRAINT `tb_kho_ibfk_1` FOREIGN KEY (`ma_phong_ban`) REFERENCES `tb_phong_ban` (`ma_phong_ban`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kho`
--

LOCK TABLES `tb_kho` WRITE;
/*!40000 ALTER TABLE `tb_kho` DISABLE KEYS */;
INSERT INTO `tb_kho` VALUES (1,'Kho thiết bị của phòng quản trị- thiết bị',1);
/*!40000 ALTER TABLE `tb_kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kiem_ke`
--

DROP TABLE IF EXISTS `tb_kiem_ke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_kiem_ke` (
  `ma_kiem_ke` int(11) NOT NULL AUTO_INCREMENT,
  `ma_thiet_bi` varchar(45) DEFAULT NULL,
  `so_luong_thuc_te` int(11) DEFAULT NULL,
  `so_luong_thiet_bi_binh_thuong` int(11) DEFAULT NULL,
  `so_luong_thiet_bi_hong` int(11) DEFAULT NULL,
  `so_luong_thiet_bi_thanh_li` int(11) DEFAULT NULL,
  `ghi_chu` text,
  `ma_pth` varchar(10) DEFAULT NULL,
  `thoi_gian` date DEFAULT NULL,
  PRIMARY KEY (`ma_kiem_ke`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kiem_ke`
--

LOCK TABLES `tb_kiem_ke` WRITE;
/*!40000 ALTER TABLE `tb_kiem_ke` DISABLE KEYS */;
INSERT INTO `tb_kiem_ke` VALUES (125,'TB00001',90,20,70,0,'can xem lai cac cach dung de han che hu hong','D110','2017-04-25'),(126,'TB00004',30,28,2,0,'','D110','2017-04-25'),(127,'TB00001',2,2,1,-1,'','D110','2017-04-25'),(128,'TB00004',1,-1,-1,-1,'','D110','2017-04-25');
/*!40000 ALTER TABLE `tb_kiem_ke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_nhan_vien`
--

DROP TABLE IF EXISTS `tb_nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_nhan_vien` (
  `ma_nql` int(10) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gioi_tinh` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chuc_vu` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_dang_nhap` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mat_khau` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_qtc` int(10) DEFAULT NULL,
  `ma_pth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_phong_ban` int(10) DEFAULT NULL,
  `ma_khoa` int(10) DEFAULT NULL,
  `password_digest` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remember_digest` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nql`),
  KEY `MaKhoa` (`ma_khoa`),
  KEY `ma_quyen_truy_cap` (`ma_qtc`),
  KEY `ma_pth` (`ma_pth`),
  KEY `ma_phong_ban` (`ma_phong_ban`),
  CONSTRAINT `tb_nhan_vien_ibfk_1` FOREIGN KEY (`ma_qtc`) REFERENCES `tb_quyen_truy_cap` (`ma_quyen`),
  CONSTRAINT `tb_nhan_vien_ibfk_2` FOREIGN KEY (`ma_khoa`) REFERENCES `tb_don_vi` (`ma_khoa`),
  CONSTRAINT `tb_nhan_vien_ibfk_3` FOREIGN KEY (`ma_pth`) REFERENCES `tb_phong_thuc_hanh` (`ma_pth`),
  CONSTRAINT `tb_nhan_vien_ibfk_4` FOREIGN KEY (`ma_phong_ban`) REFERENCES `tb_phong_ban` (`ma_phong_ban`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nhan_vien`
--

LOCK TABLES `tb_nhan_vien` WRITE;
/*!40000 ALTER TABLE `tb_nhan_vien` DISABLE KEYS */;
INSERT INTO `tb_nhan_vien` VALUES (2,'Nguyễn Quốc Anh','Nam','56 - Yên Bái','0971336582','qanh@gmail.com','Giảng Viên','NQA001','12345',2,'B307',1,1,'$2a$10$VRWdw/S/4m.MlsyyX7dE.eEocYtuSdoQ8fyazaQqaL9BE8nCTIp3.',NULL),(3,'Nguyễn Thu Thủy ','Nữ','27 - Âu Cơ ','01656003571','tthuy@gmail.com','Giảng viên','NTT001','12345',2,'D110',NULL,2,'$2a$10$HYGCeTWbgOnlq8kd1uOpN.Ep5Npiyyj3.kdnpC7CoF6kHq.QOZkIe',NULL),(4,'Trần Hào Quang','Nam','12 - Trần Phú','0986799731','hquang@gmail.com','Trưởng phòng thiết bị','THQ001','12345',1,'M109',NULL,10,'$2a$10$Wpwmqq6oK3PLF./aH.BkiuDLZE9Au.tgaBUZ1x8dTuURrcED3.0hu',NULL),(5,'Phạm Hồng Phước','Nam','7 - Nguyển Đình Chiểu','072120393934','php@gmail.com','Giảng Viên','PHP001','12345',2,'D110',NULL,1,'$2a$10$2LJYUDmq.qjHh8HM9LCJg.uT3XMXlxobpqgKgmlTDtbvkkxr5gjci',NULL),(6,'Lê Văn Tuấn','Nam ','34 - Nguyễn Khuyến','0120203333','lvt@gmail.com','Trưởng phòng thiết bị','LVT001','12345',1,'D110',1,1,'$2a$10$XN9NeTwIwhT9AknehUlHdeigwIcxc7nFpWlg4e3f1vt9p3TdPbnA6',NULL);
/*!40000 ALTER TABLE `tb_nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_nhom_thiet_bi`
--

DROP TABLE IF EXISTS `tb_nhom_thiet_bi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_nhom_thiet_bi` (
  `ma_nhom_thiet_bi` int(10) NOT NULL AUTO_INCREMENT,
  `ten_nhom_thiet_bi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghi_chu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nhom_thiet_bi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nhom_thiet_bi`
--

LOCK TABLES `tb_nhom_thiet_bi` WRITE;
/*!40000 ALTER TABLE `tb_nhom_thiet_bi` DISABLE KEYS */;
INSERT INTO `tb_nhom_thiet_bi` VALUES (1,'Thiết bị phục vụ giảng dạy','Các loại thiết bị chuyển về các khoa phục vụ giảng dạy học viên phù hợp với từng học phần '),(2,'Thiết bị văn phòng, quản lý','Các loại thiết bị phục vụ công tác quản lý ở các phòng ban quản lý ');
/*!40000 ALTER TABLE `tb_nhom_thiet_bi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_nuoc_san_xuat`
--

DROP TABLE IF EXISTS `tb_nuoc_san_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_nuoc_san_xuat` (
  `ma_nuoc_san_xuat` int(10) NOT NULL AUTO_INCREMENT,
  `nuoc_san_xuat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_viet_tat` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nuoc_san_xuat`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nuoc_san_xuat`
--

LOCK TABLES `tb_nuoc_san_xuat` WRITE;
/*!40000 ALTER TABLE `tb_nuoc_san_xuat` DISABLE KEYS */;
INSERT INTO `tb_nuoc_san_xuat` VALUES (1,'Nhật Bản','JP'),(2,'Hàn Quốc','KR'),(3,'Thái Lan','TH'),(4,'Singapore','SG'),(5,'Hoa Kỳ','US'),(6,'Đức','DE'),(7,'Trung Quốc','CN'),(8,'Ấn Độ','IN'),(9,'Malaysia','MY'),(10,'Nga','RU'),(11,'Pháp','FR'),(12,'Thụy Sĩ','CH'),(13,'Indonesia ','ID'),(14,'Austria','AU'),(15,'Ý','IT'),(16,'Việt Nam','VN'),(17,'Anh','GB'),(18,'Philippines	','PH');
/*!40000 ALTER TABLE `tb_nuoc_san_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_phieu_nhap`
--

DROP TABLE IF EXISTS `tb_phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_phieu_nhap` (
  `ma_phieu_nhap` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_nhap` date NOT NULL,
  `nguoi_mua` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nguyen_gia` int(15) NOT NULL,
  `nguon_goc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nguon_goc_tai_san` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_kho` int(10) NOT NULL,
  PRIMARY KEY (`ma_phieu_nhap`),
  KEY `ma_kho` (`ma_kho`),
  CONSTRAINT `tb_phieu_nhap_ibfk_1` FOREIGN KEY (`ma_kho`) REFERENCES `tb_kho` (`ma_kho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_phieu_nhap`
--

LOCK TABLES `tb_phieu_nhap` WRITE;
/*!40000 ALTER TABLE `tb_phieu_nhap` DISABLE KEYS */;
INSERT INTO `tb_phieu_nhap` VALUES ('N0804171','2017-04-08','Nguyễn Phi Long',4500000,'Công ty TNHH Phong Vũ ','Ngân sách trường phục vụ công tác quản lý',1);
/*!40000 ALTER TABLE `tb_phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_phieu_xuat`
--

DROP TABLE IF EXISTS `tb_phieu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_phieu_xuat` (
  `ma_phieu_xuat` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_xuat` date DEFAULT NULL,
  `ma_kho` int(10) DEFAULT NULL,
  `ma_nganh` int(10) DEFAULT NULL,
  `ma_nql` int(10) DEFAULT NULL,
  PRIMARY KEY (`ma_phieu_xuat`),
  KEY `ma_kho` (`ma_kho`,`ma_nganh`,`ma_nql`),
  KEY `ma_nguoi_quan_ly` (`ma_nql`),
  CONSTRAINT `tb_phieu_xuat_ibfk_1` FOREIGN KEY (`ma_nql`) REFERENCES `tb_nhan_vien` (`ma_nql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_phieu_xuat`
--

LOCK TABLES `tb_phieu_xuat` WRITE;
/*!40000 ALTER TABLE `tb_phieu_xuat` DISABLE KEYS */;
INSERT INTO `tb_phieu_xuat` VALUES ('X12341','2017-04-25',1,NULL,3),('X12342','2017-05-10',1,3,5);
/*!40000 ALTER TABLE `tb_phieu_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_phong_ban`
--

DROP TABLE IF EXISTS `tb_phong_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_phong_ban` (
  `ma_phong_ban` int(10) NOT NULL AUTO_INCREMENT,
  `ten_phong_ban` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_phong_ban`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_phong_ban`
--

LOCK TABLES `tb_phong_ban` WRITE;
/*!40000 ALTER TABLE `tb_phong_ban` DISABLE KEYS */;
INSERT INTO `tb_phong_ban` VALUES (1,'Phòng Quản trị -  Thiết bị','0965883571'),(2,'Phòng công tác học sinh - sinh viên','0965774262'),(3,'Phòng Tài chính - Kế Toán','0965823599');
/*!40000 ALTER TABLE `tb_phong_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_phong_thuc_hanh`
--

DROP TABLE IF EXISTS `tb_phong_thuc_hanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_phong_thuc_hanh` (
  `ma_pth` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phong_thuc_hanh` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ghi_chu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ma_pth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_phong_thuc_hanh`
--

LOCK TABLES `tb_phong_thuc_hanh` WRITE;
/*!40000 ALTER TABLE `tb_phong_thuc_hanh` DISABLE KEYS */;
INSERT INTO `tb_phong_thuc_hanh` VALUES ('A204','Phòng thực hành nấu ăn',NULL),('B307','Phòng thực hành tin học',NULL),('CK205','Phòng thực hành cơ khí',''),('D110','Phòng thực hanh điện - điện tử',''),('D201','Phòng thực hành du lịch',NULL),('F105','Phòng thực hành nước',NULL),('F202','Phòng thực hành dầu khí',NULL),('M109','Phòng thực hành may','');
/*!40000 ALTER TABLE `tb_phong_thuc_hanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_quyen_truy_cap`
--

DROP TABLE IF EXISTS `tb_quyen_truy_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_quyen_truy_cap` (
  `ma_quyen` int(10) NOT NULL AUTO_INCREMENT,
  `quyen` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_quyen`),
  UNIQUE KEY `USER_ROLE_UK` (`quyen`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_quyen_truy_cap`
--

LOCK TABLES `tb_quyen_truy_cap` WRITE;
/*!40000 ALTER TABLE `tb_quyen_truy_cap` DISABLE KEYS */;
INSERT INTO `tb_quyen_truy_cap` VALUES (2,'Người dùng'),(1,'Quản trị viên');
/*!40000 ALTER TABLE `tb_quyen_truy_cap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-26 10:09:31
