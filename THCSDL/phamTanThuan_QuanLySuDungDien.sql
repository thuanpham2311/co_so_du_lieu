-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLySuDungDien
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `GHI_CS_DIEN`
--

DROP TABLE IF EXISTS `GHI_CS_DIEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GHI_CS_DIEN` (
  `CS_MOI` smallint DEFAULT NULL,
  `CS_CU` smallint DEFAULT NULL,
  `NGAY_GHI` datetime DEFAULT NULL,
  `SO_DK` varchar(45) NOT NULL,
  `MANV` char(5) NOT NULL,
  PRIMARY KEY (`SO_DK`,`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GHI_CS_DIEN`
--

LOCK TABLES `GHI_CS_DIEN` WRITE;
/*!40000 ALTER TABLE `GHI_CS_DIEN` DISABLE KEYS */;
INSERT INTO `GHI_CS_DIEN` VALUES (100,156,'2020-04-02 00:00:00','1','n004'),(97,157,'2020-04-03 00:00:00','2','n005'),(34,66,'2020-04-03 00:00:00','3','n003'),(22,33,'2020-04-04 00:00:00','4','n003');
/*!40000 ALTER TABLE `GHI_CS_DIEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHI_NHANH`
--

DROP TABLE IF EXISTS `CHI_NHANH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHI_NHANH` (
  `TEN_CN` varchar(50) NOT NULL,
  `DIA_DIEM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TEN_CN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHI_NHANH`
--

LOCK TABLES `CHI_NHANH` WRITE;
/*!40000 ALTER TABLE `CHI_NHANH` DISABLE KEYS */;
INSERT INTO `CHI_NHANH` VALUES ('nh?? b??','46 h????ng l??? 5, huy???n nh?? b??, tp.hcm'),('t??n thu???n','124 ho??ng di???u, p4, q4, tp. hcm');
/*!40000 ALTER TABLE `CHI_NHANH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DIEN_KE`
--

DROP TABLE IF EXISTS `DIEN_KE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DIEN_KE` (
  `SO_DK` smallint NOT NULL,
  `MAKH` char(5) DEFAULT NULL,
  `TEN_CN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TEN_TRAM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`SO_DK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DIEN_KE`
--

LOCK TABLES `DIEN_KE` WRITE;
/*!40000 ALTER TABLE `DIEN_KE` DISABLE KEYS */;
INSERT INTO `DIEN_KE` VALUES (1,'K001','t??n thu???n','tr???m 1 kh??nh h??a'),(2,'K002','t??n thu???n','tr???m 1 kh??nh h??a'),(3,'K003','nh?? b??','tr???m 1 c???n gi???'),(4,'K004','nh?? b??','tr???m 1 c???n gi???');
/*!40000 ALTER TABLE `DIEN_KE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KHACH_HANG`
--

DROP TABLE IF EXISTS `KHACH_HANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KHACH_HANG` (
  `SDT` char(10) DEFAULT NULL,
  `DIA_CHI` varchar(100) DEFAULT NULL,
  `TEN_KH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MAKH` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MAKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KHACH_HANG`
--

LOCK TABLES `KHACH_HANG` WRITE;
/*!40000 ALTER TABLE `KHACH_HANG` DISABLE KEYS */;
INSERT INTO `KHACH_HANG` VALUES ('090121278','12 kh??nh h???i, q4','l?? nam','K001'),('0912323456','13 kh??nh h???i, q4','tr???n ??inh','K002'),('0937823111','???p 5, nh?? b??','??inh l??','K003'),('0933334567','???p 4 nh?? b??','ho??ng k???','K004');
/*!40000 ALTER TABLE `KHACH_HANG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHAN_VIEN`
--

DROP TABLE IF EXISTS `NHAN_VIEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NHAN_VIEN` (
  `MA_NV` varchar(5) NOT NULL,
  `HO_TEN_NV` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TEN_CN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TEN_TRAM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MA_NV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHAN_VIEN`
--

LOCK TABLES `NHAN_VIEN` WRITE;
/*!40000 ALTER TABLE `NHAN_VIEN` DISABLE KEYS */;
INSERT INTO `NHAN_VIEN` VALUES ('n001','an','nh?? b??','tr???m 2 ph?? m??? h??ng'),('n002','l??','nh?? b??','tr???m 2 ph?? m??? h??ng'),('n003','ng???c','nh?? b??','tr???m 1 c???n gi???'),('n004','mai','t??n thu???n','tr???m 1 kh??nh h???i'),('n005','lan','t??n thu???n','tram 1 kh??nh h???i'),('n006','anh ','t??n thu???n','tr???m 2 c???n gi???'),('n007','h???i','t??n thu???n','tr???m 2 c???n gi???');
/*!40000 ALTER TABLE `NHAN_VIEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRAM_DIEN`
--

DROP TABLE IF EXISTS `TRAM_DIEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRAM_DIEN` (
  `TEN_TRAM` varchar(50) NOT NULL,
  `TEN_CN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TEN_TRAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRAM_DIEN`
--

LOCK TABLES `TRAM_DIEN` WRITE;
/*!40000 ALTER TABLE `TRAM_DIEN` DISABLE KEYS */;
INSERT INTO `TRAM_DIEN` VALUES ('tr???m 1 c???n gi???','nh?? b??'),('tr???m 1 kh??nh h???i','t??n thu???n '),('tr???m 2 ph?? m??? h??ng','t??n thu???n'),('tr???m 2 ph?? m??? h??ng ','nh?? b??');
/*!40000 ALTER TABLE `TRAM_DIEN` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-06 15:21:47
