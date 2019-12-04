-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: icoservice
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `_index` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`_index`),
  UNIQUE KEY `URL` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'http://localhost:5000/news');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `_index` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `property` char(1) DEFAULT '-',
  `MLlearning` tinyint(1) DEFAULT '0',
  `URL` bigint(20) unsigned NOT NULL,
  `userID` bigint(20) unsigned NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`_index`),
  KEY `URL` (`URL`),
  KEY `writer` (`userID`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`URL`) REFERENCES `article` (`_index`) ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`_index`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultkeyword`
--

DROP TABLE IF EXISTS `defaultkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defaultkeyword` (
  `_index` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `splited_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`_index`)
) ENGINE=InnoDB AUTO_INCREMENT=1075 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultkeyword`
--

LOCK TABLES `defaultkeyword` WRITE;
/*!40000 ALTER TABLE `defaultkeyword` DISABLE KEYS */;
INSERT INTO `defaultkeyword` VALUES (1,'뒷치기','ㄷㅟㅅㅊㅣㄱㅣ'),(2,'딸딸이','ㄸㅏㄹㄸㅏㄹㅇㅣ'),(3,'떡걸','ㄸㅓㄱㄱㅓㄹ'),(4,'떡치기','ㄸㅓㄱㅊㅣㄱㅣ'),(5,'마나보지','ㅁㅏㄴㅏㅂㅗㅈㅣ'),(6,'만화보지','ㅁㅏㄴㅎㅘㅂㅗㅈㅣ'),(7,'보지나라','ㅂㅗㅈㅣㄴㅏㄹㅏ'),(8,'보지보지','ㅂㅗㅈㅣㅂㅗㅈㅣ'),(9,'보지털','ㅂㅗㅈㅣㅌㅓㄹ'),(10,'빠구리','ㅃㅏㄱㅜㄹㅣ'),(11,'사까시','ㅅㅏㄲㅏㅅㅣ'),(12,'섹스하까','ㅅㅔㄱㅅㅡㅎㅏㄲㅏ'),(13,'섹스해죠','ㅅㅔㄱㅅㅡㅎㅐㅈㅛ'),(14,'섹스헨타이','ㅅㅔㄱㅅㅡㅎㅔㄴㅌㅏㅇㅣ'),(15,'섹스호빠','ㅅㅔㄱㅅㅡㅎㅗㅃㅏ'),(16,'숙모보지','ㅅㅜㄱㅁㅗㅂㅗㅈㅣ'),(17,'쌩보지','ㅆㅐㅇㅂㅗㅈㅣ'),(18,'쌩보지쑈','ㅆㅐㅇㅂㅗㅈㅣㅆㅛ'),(19,'아색기가','ㅇㅏㅅㅐㄱㄱㅣㄱㅏ'),(20,'에로팬티','ㅇㅔㄹㅗㅍㅐㄴㅌㅣ'),(21,'여자보지','ㅇㅕㅈㅏㅂㅗㅈㅣ'),(22,'오나니','ㅇㅗㄴㅏㄴㅣ'),(23,'오럴섹스','ㅇㅗㄹㅓㄹㅅㅔㄱㅅㅡ'),(24,'정우성인용품전문점','ㅈㅓㅇㅇㅜㅅㅓㅇㅇㅣㄴㅇㅛㅇㅍㅜㅁㅈㅓㄴㅁㅜㄴㅈㅓㅁ'),(25,'좆물','ㅈㅗㅈㅁㅜㄹ'),(26,'찌찌','ㅉㅣㅉㅣ'),(27,'포르노bozi','ㅍㅗㄹㅡㄴㅗbozi'),(28,'플레이보지','ㅍㅡㄹㄹㅔㅇㅣㅂㅗㅈㅣ'),(29,'후장','ㅎㅜㅈㅏㅇ'),(30,'잠지만화','ㅈㅏㅁㅈㅣㅁㅏㄴㅎㅘ'),(31,'잠지','ㅈㅏㅁㅈㅣ'),(32,'야한거벌끈벌끈','ㅇㅑㅎㅏㄴㄱㅓㅂㅓㄹㄲㅡㄴㅂㅓㄹㄲㅡㄴ'),(33,'조쟁이.잠지.키스','ㅈㅗㅈㅐㅇㅇㅣ.ㅈㅏㅁㅈㅣ.ㅋㅣㅅㅡ'),(34,'잠지hentai','ㅈㅏㅁㅈㅣhentai'),(35,'에로키위','ㅇㅔㄹㅗㅋㅣㅇㅟ'),(36,'조갯살','ㅈㅗㄱㅐㅅㅅㅏㄹ'),(37,'빨간궁뎅이','ㅃㅏㄹㄱㅏㄴㄱㅜㅇㄷㅔㅇㅇㅣ'),(38,'ya-han','ya-han'),(39,'sex','sex'),(40,'빡촌','ㅃㅏㄱㅊㅗㄴ'),(41,'꼬추','ㄲㅗㅊㅜ'),(42,'와레즈','ㅇㅘㄹㅔㅈㅡ'),(43,'warez','warez'),(44,'오레즈','ㅇㅗㄹㅔㅈㅡ'),(45,'따무라','ㄸㅏㅁㅜㄹㅏ'),(46,'야덩','ㅇㅑㄷㅓㅇ'),(47,'졸라섹스','ㅈㅗㄹㄹㅏㅅㅔㄱㅅㅡ'),(48,'미씨촌','ㅁㅣㅆㅣㅊㅗㄴ'),(49,'폰섹스','ㅍㅗㄴㅅㅔㄱㅅㅡ'),(50,'폰팅','ㅍㅗㄴㅌㅣㅇ'),(51,'클리토리스','ㅋㅡㄹㄹㅣㅌㅗㄹㅣㅅㅡ'),(52,'노팬티','ㄴㅗㅍㅐㄴㅌㅣ'),(53,'딜도','ㄷㅣㄹㄷㅗ'),(54,'마스터베이션','ㅁㅏㅅㅡㅌㅓㅂㅔㅇㅣㅅㅕㄴ'),(55,'망까','ㅁㅏㅇㄲㅏ'),(56,'본디지','ㅂㅗㄴㄷㅣㅈㅣ'),(57,'부랄','ㅂㅜㄹㅏㄹ'),(58,'빙신','ㅂㅣㅇㅅㅣㄴ'),(59,'빠걸','ㅃㅏㄱㅓㄹ'),(60,'빠꾸리','ㅃㅏㄲㅜㄹㅣ'),(61,'빠라','ㅃㅏㄹㅏ'),(62,'빠라줘','ㅃㅏㄹㅏㅈㅝ'),(63,'빨기','ㅃㅏㄹㄱㅣ'),(64,'빨어','ㅃㅏㄹㅇㅓ'),(65,'빽보지','ㅃㅐㄱㅂㅗㅈㅣ'),(66,'뽀로노','ㅃㅗㄹㅗㄴㅗ'),(67,'사까치','ㅅㅏㄲㅏㅊㅣ'),(68,'색골','ㅅㅐㄱㄱㅗㄹ'),(69,'성감대','ㅅㅓㅇㄱㅏㅁㄷㅐ'),(70,'세엑','ㅅㅔㅇㅔㄱ'),(71,'섹골','ㅅㅔㄱㄱㅗㄹ'),(72,'섹녀','ㅅㅔㄱㄴㅕ'),(73,'섹도우즈','ㅅㅔㄱㄷㅗㅇㅜㅈㅡ'),(74,'섹무비','ㅅㅔㄱㅁㅜㅂㅣ'),(75,'섹보지','ㅅㅔㄱㅂㅗㅈㅣ'),(76,'섹소리','ㅅㅔㄱㅅㅗㄹㅣ'),(77,'섹티즌','ㅅㅔㄱㅌㅣㅈㅡㄴ'),(78,'섹할','ㅅㅔㄱㅎㅏㄹ'),(79,'쌕스','ㅆㅐㄱㅅㅡ'),(80,'야껨','ㅇㅑㄲㅔㅁ'),(81,'야똥','ㅇㅑㄸㅗㅇ'),(82,'야섹','ㅇㅑㅅㅔㄱ'),(83,'영계','ㅇㅕㅇㄱㅖ'),(84,'오랄','ㅇㅗㄹㅏㄹ'),(85,'육봉','ㅇㅠㄱㅂㅗㅇ'),(86,'재랄','ㅈㅐㄹㅏㄹ'),(87,'정사','ㅈㅓㅇㅅㅏ'),(88,'조루','ㅈㅗㄹㅜ'),(89,'쫒','ㅉㅗㅈ'),(90,'크리토리스','ㅋㅡㄹㅣㅌㅗㄹㅣㅅㅡ'),(91,'페니스','ㅍㅔㄴㅣㅅㅡ'),(92,'패티시','ㅍㅐㅌㅣㅅㅣ'),(93,'펨돔','ㅍㅔㅁㄷㅗㅁ'),(94,'펨섭','ㅍㅔㅁㅅㅓㅂ'),(95,'포르느','ㅍㅗㄹㅡㄴㅡ'),(96,'핸타이','ㅎㅐㄴㅌㅏㅇㅣ'),(97,'헴타이','ㅎㅔㅁㅌㅏㅇㅣ'),(98,'호빠','ㅎㅗㅃㅏ'),(99,'bo지','boㅈㅣ'),(100,'bozi','bozi'),(101,'dildo','dildo'),(102,'hardcore','hardcore'),(103,'hentai','hentai'),(104,'porn','porn'),(105,'빠굴','ㅃㅏㄱㅜㄹ'),(106,'빠순이','ㅃㅏㅅㅜㄴㅇㅣ'),(107,'빨아','ㅃㅏㄹㅇㅏ'),(108,'뻐킹','ㅃㅓㅋㅣㅇ'),(109,'수간','ㅅㅜㄱㅏㄴ'),(110,'쌕쉬','ㅆㅐㄱㅅㅟ'),(111,'쎄끈','ㅆㅔㄲㅡㄴ'),(112,'와래즈','ㅇㅘㄹㅐㅈㅡ'),(113,'애널','ㅇㅐㄴㅓㄹ'),(114,'오럴','ㅇㅗㄹㅓㄹ'),(115,'육갑','ㅇㅠㄱㄱㅏㅂ'),(116,'윤간','ㅇㅠㄴㄱㅏㄴ'),(117,'음욕','ㅇㅡㅁㅇㅛㄱ'),(118,'컴섹','ㅋㅓㅁㅅㅔㄱ'),(119,'폰색','ㅍㅗㄴㅅㅐㄱ'),(120,'호스트빠','ㅎㅗㅅㅡㅌㅡㅃㅏ'),(121,'fuck','fuck'),(122,'jfantasy','jfantasy'),(123,'jasal','jasal'),(124,'prno','prno'),(125,'귀두','ㄱㅟㄷㅜ'),(126,'난교','ㄴㅏㄴㄱㅛ'),(127,'바이브레이터','ㅂㅏㅇㅣㅂㅡㄹㅔㅇㅣㅌㅓ'),(128,'뻐르너','ㅃㅓㄹㅡㄴㅓ'),(129,'뻐르노','ㅃㅓㄹㅡㄴㅗ'),(130,'뻘노','ㅃㅓㄹㄴㅗ'),(131,'뽀르너','ㅃㅗㄹㅡㄴㅓ'),(132,'뽀지','ㅃㅗㅈㅣ'),(133,'뽈노','ㅃㅗㄹㄴㅗ'),(134,'삽입','ㅅㅏㅂㅇㅣㅂ'),(135,'색쓰','ㅅㅐㄱㅆㅡ'),(136,'섹쑤','ㅅㅔㄱㅆㅜ'),(137,'섹쓰','ㅅㅔㄱㅆㅡ'),(138,'수음','ㅅㅜㅇㅡㅁ'),(139,'스너프','ㅅㅡㄴㅓㅍㅡ'),(140,'스왑','ㅅㅡㅇㅘㅂ'),(141,'애액','ㅇㅐㅇㅐㄱ'),(142,'음란','ㅇㅡㅁㄹㅏㄴ'),(143,'최음제','ㅊㅚㅇㅡㅁㅈㅔ'),(144,'치마속','ㅊㅣㅁㅏㅅㅗㄱ'),(145,'패니스','ㅍㅐㄴㅣㅅㅡ'),(146,'퍼르노','ㅍㅓㄹㅡㄴㅗ'),(147,'포르너','ㅍㅗㄹㅡㄴㅓ'),(148,'폰쎅','ㅍㅗㄴㅆㅔㄱ'),(149,'히로뽕','ㅎㅣㄹㅗㅃㅗㅇ'),(150,'asiangirl','asiangirl'),(151,'ecstasy','ecstasy'),(152,'oral','oral'),(153,'penis','penis'),(154,'penthouse','penthouse'),(155,'porner','porner'),(156,'suck','suck'),(157,'swaping','swaping'),(158,'넣어줘','ㄴㅓㅎㅇㅓㅈㅝ'),(159,'무삭제원판','ㅁㅜㅅㅏㄱㅈㅔㅇㅝㄴㅍㅏㄴ'),(160,'색녀','ㅅㅐㄱㄴㅕ'),(161,'좃물','ㅈㅗㅅㅁㅜㄹ'),(162,'퇴폐이발소','ㅌㅚㅍㅖㅇㅣㅂㅏㄹㅅㅗ'),(163,'보짓물','ㅂㅗㅈㅣㅅㅁㅜㄹ'),(164,'씹물','ㅆㅣㅂㅁㅜㄹ'),(165,'스와핑모임','ㅅㅡㅇㅘㅍㅣㅇㅁㅗㅇㅣㅁ'),(166,'부부교환섹스','ㅂㅜㅂㅜㄱㅛㅎㅘㄴㅅㅔㄱㅅㅡ'),(167,'섹스나이트','ㅅㅔㄱㅅㅡㄴㅏㅇㅣㅌㅡ'),(168,'보지빨기','ㅂㅗㅈㅣㅃㅏㄹㄱㅣ'),(169,'여자옷벗기기','ㅇㅕㅈㅏㅇㅗㅅㅂㅓㅅㄱㅣㄱㅣ'),(170,'폰섹','ㅍㅗㄴㅅㅔㄱ'),(171,'화상폰팅','ㅎㅘㅅㅏㅇㅍㅗㄴㅌㅣㅇ'),(172,'티켓다방','ㅌㅣㅋㅔㅅㄷㅏㅂㅏㅇ'),(173,'여자따먹기','ㅇㅕㅈㅏㄸㅏㅁㅓㄱㄱㅣ'),(174,'보지먹기','ㅂㅗㅈㅣㅁㅓㄱㄱㅣ'),(175,'보지따기','ㅂㅗㅈㅣㄸㅏㄱㅣ'),(176,'포르노키위','ㅍㅗㄹㅡㄴㅗㅋㅣㅇㅟ'),(177,'포르노배우','ㅍㅗㄹㅡㄴㅗㅂㅐㅇㅜ'),(178,'성인포르노','ㅅㅓㅇㅇㅣㄴㅍㅗㄹㅡㄴㅗ'),(179,'공짜포르노','ㄱㅗㅇㅉㅏㅍㅗㄹㅡㄴㅗ'),(180,'포르노스타','ㅍㅗㄹㅡㄴㅗㅅㅡㅌㅏ'),(181,'한국포르노','ㅎㅏㄴㄱㅜㄱㅍㅗㄹㅡㄴㅗ'),(182,'포르노비디오','ㅍㅗㄹㅡㄴㅗㅂㅣㄷㅣㅇㅗ'),(183,'포르노자키','ㅍㅗㄹㅡㄴㅗㅈㅏㅋㅣ'),(184,'슬림페티쉬','ㅅㅡㄹㄹㅣㅁㅍㅔㅌㅣㅅㅟ'),(185,'무료페티쉬','ㅁㅜㄹㅛㅍㅔㅌㅣㅅㅟ'),(186,'스타킹페티쉬','ㅅㅡㅌㅏㅋㅣㅇㅍㅔㅌㅣㅅㅟ'),(187,'무료성인게시판','ㅁㅜㄹㅛㅅㅓㅇㅇㅣㄴㄱㅔㅅㅣㅍㅏㄴ'),(188,'여자자위','ㅇㅕㅈㅏㅈㅏㅇㅟ'),(189,'화장실몰카','ㅎㅘㅈㅏㅇㅅㅣㄹㅁㅗㄹㅋㅏ'),(190,'몰카동영상','ㅁㅗㄹㅋㅏㄷㅗㅇㅇㅕㅇㅅㅏㅇ'),(191,'여고생몰카','ㅇㅕㄱㅗㅅㅐㅇㅁㅗㄹㅋㅏ'),(192,'몰카리스트','ㅁㅗㄹㅋㅏㄹㅣㅅㅡㅌㅡ'),(193,'스와핑몰카','ㅅㅡㅇㅘㅍㅣㅇㅁㅗㄹㅋㅏ'),(194,'이발소몰카','ㅇㅣㅂㅏㄹㅅㅗㅁㅗㄹㅋㅏ'),(195,'몰카사진','ㅁㅗㄹㅋㅏㅅㅏㅈㅣㄴ'),(196,'몰카사이트','ㅁㅗㄹㅋㅏㅅㅏㅇㅣㅌㅡ'),(197,'변태사진','ㅂㅕㄴㅌㅐㅅㅏㅈㅣㄴ'),(198,'변태게임','ㅂㅕㄴㅌㅐㄱㅔㅇㅣㅁ'),(199,'변태만화','ㅂㅕㄴㅌㅐㅁㅏㄴㅎㅘ'),(200,'변태이야기','ㅂㅕㄴㅌㅐㅇㅣㅇㅑㄱㅣ'),(201,'변태섹스','ㅂㅕㄴㅌㅐㅅㅔㄱㅅㅡ'),(202,'변태사이트','ㅂㅕㄴㅌㅐㅅㅏㅇㅣㅌㅡ'),(203,'아줌마보지','ㅇㅏㅈㅜㅁㅁㅏㅂㅗㅈㅣ'),(204,'아줌마섹스','ㅇㅏㅈㅜㅁㅁㅏㅅㅔㄱㅅㅡ'),(205,'아줌마페티쉬','ㅇㅏㅈㅜㅁㅁㅏㅍㅔㅌㅣㅅㅟ'),(206,'아줌마야동','ㅇㅏㅈㅜㅁㅁㅏㅇㅑㄷㅗㅇ'),(207,'자지털','ㅈㅏㅈㅣㅌㅓㄹ'),(208,'보지자지','ㅂㅗㅈㅣㅈㅏㅈㅣ'),(209,'자지빨기','ㅈㅏㅈㅣㅃㅏㄹㄱㅣ'),(210,'누드동영상','ㄴㅜㄷㅡㄷㅗㅇㅇㅕㅇㅅㅏㅇ'),(211,'무료성인야설','ㅁㅜㄹㅛㅅㅓㅇㅇㅣㄴㅇㅑㅅㅓㄹ'),(212,'소라의야설','ㅅㅗㄹㅏㅇㅢㅇㅑㅅㅓㄹ'),(213,'야설록','ㅇㅑㅅㅓㄹㄹㅗㄱ'),(214,'공짜야설','ㄱㅗㅇㅉㅏㅇㅑㅅㅓㄹ'),(215,'소라가이드야설','ㅅㅗㄹㅏㄱㅏㅇㅣㄷㅡㅇㅑㅅㅓㄹ'),(216,'소라의야설가이드','ㅅㅗㄹㅏㅇㅢㅇㅑㅅㅓㄹㄱㅏㅇㅣㄷㅡ'),(217,'소라야설공작소','ㅅㅗㄹㅏㅇㅑㅅㅓㄹㄱㅗㅇㅈㅏㄱㅅㅗ'),(218,'야한미소녀','ㅇㅑㅎㅏㄴㅁㅣㅅㅗㄴㅕ'),(219,'미아리야동','ㅁㅣㅇㅏㄹㅣㅇㅑㄷㅗㅇ'),(220,'빠구리야동','ㅃㅏㄱㅜㄹㅣㅇㅑㄷㅗㅇ'),(221,'무료섹스페티쉬','ㅁㅜㄹㅛㅅㅔㄱㅅㅡㅍㅔㅌㅣㅅㅟ'),(222,'갈보','ㄱㅏㄹㅂㅗ'),(223,'개년','ㄱㅐㄴㅕㄴ'),(224,'개놈','ㄱㅐㄴㅗㅁ'),(225,'개뇬','ㄱㅐㄴㅛㄴ'),(226,'개보지','ㄱㅐㅂㅗㅈㅣ'),(227,'개삽년','ㄱㅐㅅㅏㅂㄴㅕㄴ'),(228,'개새끼','ㄱㅐㅅㅐㄲㅣ'),(229,'개세이','ㄱㅐㅅㅔㅇㅣ'),(230,'개쉐이','ㄱㅐㅅㅞㅇㅣ'),(231,'개지랄','ㄱㅐㅈㅣㄹㅏㄹ'),(232,'니미','ㄴㅣㅁㅣ'),(233,'니미랄','ㄴㅣㅁㅣㄹㅏㄹ'),(234,'니미럴','ㄴㅣㅁㅣㄹㅓㄹ'),(235,'니애미','ㄴㅣㅇㅐㅁㅣ'),(236,'니에미','ㄴㅣㅇㅔㅁㅣ'),(237,'등신','ㄷㅡㅇㅅㅣㄴ'),(238,'또라이','ㄸㅗㄹㅏㅇㅣ'),(239,'레즈비언','ㄹㅔㅈㅡㅂㅣㅇㅓㄴ'),(240,'미친넘','ㅁㅣㅊㅣㄴㄴㅓㅁ'),(241,'미친년','ㅁㅣㅊㅣㄴㄴㅕㄴ'),(242,'미친놈','ㅁㅣㅊㅣㄴㄴㅗㅁ'),(243,'미친뇬','ㅁㅣㅊㅣㄴㄴㅛㄴ'),(244,'병신','ㅂㅕㅇㅅㅣㄴ'),(245,'불알','ㅂㅜㄹㅇㅏㄹ'),(246,'새꺄','ㅅㅐㄲㅑ'),(247,'새끼','ㅅㅐㄲㅣ'),(248,'세꺄','ㅅㅔㄲㅑ'),(249,'섹스','ㅅㅔㄱㅅㅡ'),(250,'섹 스','ㅅㅔㄱ ㅅㅡ'),(251,'쉬팔','ㅅㅟㅍㅏㄹ'),(252,'쉬펄','ㅅㅟㅍㅓㄹ'),(253,'스발','ㅅㅡㅂㅏㄹ'),(254,'시발','ㅅㅣㅂㅏㄹ'),(255,'시벌','ㅅㅣㅂㅓㄹ'),(256,'시파','ㅅㅣㅍㅏ'),(257,'시펄','ㅅㅣㅍㅓㄹ'),(258,'쌍넘','ㅆㅏㅇㄴㅓㅁ'),(259,'쌍년','ㅆㅏㅇㄴㅕㄴ'),(260,'쌍놈','ㅆㅏㅇㄴㅗㅁ'),(261,'쌕쓰','ㅆㅐㄱㅆㅡ'),(262,'쌕폰','ㅆㅐㄱㅍㅗㄴ'),(263,'썅','ㅆㅑㅇ'),(264,'썅넘','ㅆㅑㅇㄴㅓㅁ'),(265,'썅년','ㅆㅑㅇㄴㅕㄴ'),(266,'썅놈','ㅆㅑㅇㄴㅗㅁ'),(267,'쒸팔','ㅆㅟㅍㅏㄹ'),(268,'쒸펄','ㅆㅟㅍㅓㄹ'),(269,'쓰바','ㅆㅡㅂㅏ'),(270,'씌팍','ㅆㅢㅍㅏㄱ'),(271,'씨바','ㅆㅣㅂㅏ'),(272,'씨발','ㅆㅣㅂㅏㄹ'),(273,'씨발넘','ㅆㅣㅂㅏㄹㄴㅓㅁ'),(274,'씨발년','ㅆㅣㅂㅏㄹㄴㅕㄴ'),(275,'씨발놈','ㅆㅣㅂㅏㄹㄴㅗㅁ'),(276,'씨발뇬','ㅆㅣㅂㅏㄹㄴㅛㄴ'),(277,'씨방','ㅆㅣㅂㅏㅇ'),(278,'씨방새','ㅆㅣㅂㅏㅇㅅㅐ'),(279,'씨버럴','ㅆㅣㅂㅓㄹㅓㄹ'),(280,'씨벌','ㅆㅣㅂㅓㄹ'),(281,'씨보랄','ㅆㅣㅂㅗㄹㅏㄹ'),(282,'씨보럴','ㅆㅣㅂㅗㄹㅓㄹ'),(283,'씨부랄','ㅆㅣㅂㅜㄹㅏㄹ'),(284,'씨부럴','ㅆㅣㅂㅜㄹㅓㄹ'),(285,'씨부리','ㅆㅣㅂㅜㄹㅣ'),(286,'씨불','ㅆㅣㅂㅜㄹ'),(287,'씨브랄','ㅆㅣㅂㅡㄹㅏㄹ'),(288,'씨파','ㅆㅣㅍㅏ'),(289,'씨팍','ㅆㅣㅍㅏㄱ'),(290,'씨팔','ㅆㅣㅍㅏㄹ'),(291,'씨펄','ㅆㅣㅍㅓㄹ'),(292,'씹보지','ㅆㅣㅂㅂㅗㅈㅣ'),(293,'씹새','ㅆㅣㅂㅅㅐ'),(294,'씹새끼','ㅆㅣㅂㅅㅐㄲㅣ'),(295,'씹색','ㅆㅣㅂㅅㅐㄱ'),(296,'씹세','ㅆㅣㅂㅅㅔ'),(297,'씹세이','ㅆㅣㅂㅅㅔㅇㅣ'),(298,'씹쉐','ㅆㅣㅂㅅㅞ'),(299,'씹쉐이','ㅆㅣㅂㅅㅞㅇㅣ'),(300,'씹쌔','ㅆㅣㅂㅆㅐ'),(301,'씹쌔기','ㅆㅣㅂㅆㅐㄱㅣ'),(302,'씹자지','ㅆㅣㅂㅈㅏㅈㅣ'),(303,'씹창','ㅆㅣㅂㅊㅏㅇ'),(304,'씹탱','ㅆㅣㅂㅌㅐㅇ'),(305,'씹팔','ㅆㅣㅂㅍㅏㄹ'),(306,'씹펄','ㅆㅣㅂㅍㅓㄹ'),(307,'씹할','ㅆㅣㅂㅎㅏㄹ'),(308,'야캠','ㅇㅑㅋㅐㅁ'),(309,'젖꼭지','ㅈㅓㅈㄲㅗㄱㅈㅣ'),(310,'젖탱','ㅈㅓㅈㅌㅐㅇ'),(311,'젖탱이','ㅈㅓㅈㅌㅐㅇㅇㅣ'),(312,'조까','ㅈㅗㄲㅏ'),(313,'좃','ㅈㅗㅅ'),(314,'좆','ㅈㅗㅈ'),(315,'좆꼴리','ㅈㅗㅈㄲㅗㄹㄹㅣ'),(316,'좆빠','ㅈㅗㅈㅃㅏ'),(317,'좇','ㅈㅗㅊ'),(318,'좇꼴려','ㅈㅗㅊㄲㅗㄹㄹㅕ'),(319,'좇꼴리','ㅈㅗㅊㄲㅗㄹㄹㅣ'),(320,'좇빠','ㅈㅗㅊㅃㅏ'),(321,'지랄','ㅈㅣㄹㅏㄹ'),(322,'지미랄','ㅈㅣㅁㅣㄹㅏㄹ'),(323,'캠색','ㅋㅐㅁㅅㅐㄱ'),(324,'캠섹','ㅋㅐㅁㅅㅔㄱ'),(325,'컴색','ㅋㅓㅁㅅㅐㄱ'),(326,'폰쌕','ㅍㅗㄴㅆㅐㄱ'),(327,'호로새끼','ㅎㅗㄹㅗㅅㅐㄲㅣ'),(328,'⊥','⊥'),(329,'┴','┴'),(330,'jonna','jonna'),(331,'mi쳤','miㅊㅕㅆ'),(332,'시부럴','ㅅㅣㅂㅜㄹㅓㄹ'),(333,'시뷰럴','ㅅㅣㅂㅠㄹㅓㄹ'),(334,'씨뷰럴','ㅆㅣㅂㅠㄹㅓㄹ'),(335,'시부렬','ㅅㅣㅂㅜㄹㅕㄹ'),(336,'시뷰렬','ㅅㅣㅂㅠㄹㅕㄹ'),(337,'씨부렬','ㅆㅣㅂㅜㄹㅕㄹ'),(338,'씨뷰렬','ㅆㅣㅂㅠㄹㅕㄹ'),(339,'스벌','ㅅㅡㅂㅓㄹ'),(340,'개부랄','ㄱㅐㅂㅜㄹㅏㄹ'),(341,'개새기','ㄱㅐㅅㅐㄱㅣ'),(342,'개 새끼','ㄱㅐ ㅅㅐㄲㅣ'),(343,'죶','ㅈㅛㅈ'),(344,'맘충','ㅁㅏㅁㅊㅜㅇ'),(345,'tlqkf','tlqkf'),(346,'wlfkf','wlfkf'),(347,'엿같','ㅇㅕㅅㄱㅏㅌ'),(348,'젖 같','ㅈㅓㅈ ㄱㅏㅌ'),(349,'졏 같','ㅈㅕㅊ ㄱㅏㅌ'),(350,'닥치세','ㄷㅏㄱㅊㅣㅅㅔ'),(351,'슈벌','ㅅㅠㅂㅓㄹ'),(352,'슈우벌','ㅅㅠㅇㅜㅂㅓㄹ'),(353,'빻은','ㅃㅏㅎㅇㅡㄴ'),(354,'빻았','ㅃㅏㅎㅇㅏㅆ'),(355,'괘새끼','ㄱㅙㅅㅐㄲㅣ'),(356,'구1씹','ㄱㅜ1ㅆㅣㅂ'),(357,'구씹','ㄱㅜㅆㅣㅂ'),(358,'년놈','ㄴㅕㄴㄴㅗㅁ'),(359,'늬믜','ㄴㅢㅁㅢ'),(360,'늬미','ㄴㅢㅁㅣ'),(361,'니년','ㄴㅣㄴㅕㄴ'),(362,'니믜','ㄴㅣㅁㅢ'),(363,'애미','ㅇㅐㅁㅣ'),(364,'앰','ㅇㅐㅁ'),(365,'시바알','ㅅㅣㅂㅏㅇㅏㄹ'),(366,'은새끼','ㅇㅡㄴㅅㅐㄲㅣ'),(367,'씹뻐럴','ㅆㅣㅂㅃㅓㄹㅓㄹ'),(368,'또라인','ㄸㅗㄹㅏㅇㅣㄴ'),(369,'쉬버','ㅅㅟㅂㅓ'),(370,'미친개','ㅁㅣㅊㅣㄴㄱㅐ'),(371,'찝째끼','ㅉㅣㅂㅉㅐㄲㅣ'),(372,'개돼지','ㄱㅐㄷㅙㅈㅣ'),(373,'시바류','ㅅㅣㅂㅏㄹㅠ'),(374,'시바','ㅅㅣㅂㅏ'),(375,'미친~','ㅁㅣㅊㅣㄴ~'),(376,'시바라지','ㅅㅣㅂㅏㄹㅏㅈㅣ'),(377,'졸라','ㅈㅗㄹㄹㅏ'),(378,'개같이','ㄱㅐㄱㅏㅌㅇㅣ'),(379,'빡새끼','ㅃㅏㄱㅅㅐㄲㅣ'),(380,'새끼야','ㅅㅐㄲㅣㅇㅑ'),(381,'ㅈ리','ㅈㄹㅣ'),(382,'G리','Gㄹㅣ'),(383,'Z리','Zㄹㅣ'),(384,'새끼라','ㅅㅐㄲㅣㄹㅏ'),(385,'도라이','ㄷㅗㄹㅏㅇㅣ'),(386,'똘아이','ㄸㅗㄹㅇㅏㅇㅣ'),(387,'레1친','ㄹㅔ1ㅊㅣㄴ'),(388,'레친','ㄹㅔㅊㅣㄴ'),(389,'ㅁㅊ','ㅁㅊ'),(390,'ㅁ친','ㅁㅊㅣㄴ'),(391,'믜칀','ㅁㅢㅊㅢㄴ'),(392,'믜친','ㅁㅢㅊㅣㄴ'),(393,'미1친','ㅁㅣ1ㅊㅣㄴ'),(394,'미시친발','ㅁㅣㅅㅣㅊㅣㄴㅂㅏㄹ'),(395,'미쳣네','ㅁㅣㅊㅕㅅㄴㅔ'),(396,'미쳤나','ㅁㅣㅊㅕㅆㄴㅏ'),(397,'미쳤니','ㅁㅣㅊㅕㅆㄴㅣ'),(398,'미췬','ㅁㅣㅊㅟㄴ'),(399,'미칀','ㅁㅣㅊㅢㄴ'),(400,'미친ㅋ','ㅁㅣㅊㅣㄴㅋ'),(401,'미친새','ㅁㅣㅊㅣㄴㅅㅐ'),(402,'미친 새','ㅁㅣㅊㅣㄴ ㅅㅐ'),(403,'미친색','ㅁㅣㅊㅣㄴㅅㅐㄱ'),(404,'미틴','ㅁㅣㅌㅣㄴ'),(405,'및힌','ㅁㅣㅊㅎㅣㄴ'),(406,'발놈','ㅂㅏㄹㄴㅗㅁ'),(407,'병1신','ㅂㅕㅇ1ㅅㅣㄴ'),(408,'병1크','ㅂㅕㅇ1ㅋㅡ'),(409,'병크','ㅂㅕㅇㅋㅡ'),(410,'븅신','ㅂㅠㅇㅅㅣㄴ'),(411,'빠큐','ㅃㅏㅋㅠ'),(412,'뻐규','ㅃㅓㄱㅠ'),(413,'뻐큐','ㅃㅓㅋㅠ'),(414,'뻑유','ㅃㅓㄱㅇㅠ'),(415,'뻑큐','ㅃㅓㄱㅋㅠ'),(416,'뻨큐','ㅃㅓㅋㅋㅠ'),(417,'뼈큐','ㅃㅕㅋㅠ'),(418,'ㅅ.ㅂ','ㅅ.ㅂ'),(419,'ㅅ1ㅂ','ㅅ1ㅂ'),(420,'ㅅ1발','ㅅ1ㅂㅏㄹ'),(421,'ㅅㄲ네','ㅅㄲㄴㅔ'),(422,'ㅅㄲ들','ㅅㄲㄷㅡㄹ'),(423,'새1끼','ㅅㅐ1ㄲㅣ'),(424,'새1키','ㅅㅐ1ㅋㅣ'),(425,'새77ㅣ','ㅅㅐ77ㅣ'),(426,'새퀴','ㅅㅐㅋㅟ'),(427,'새킈','ㅅㅐㅋㅢ'),(428,'새키','ㅅㅐㅋㅣ'),(429,'색희','ㅅㅐㄱㅎㅢ'),(430,'색히','ㅅㅐㄱㅎㅣ'),(431,'샊기','ㅅㅐㄲㄱㅣ'),(432,'샊히','ㅅㅐㄲㅎㅣ'),(433,'샹년','ㅅㅑㅇㄴㅕㄴ'),(434,'섀키','ㅅㅒㅋㅣ'),(435,'쉬이바','ㅅㅟㅇㅣㅂㅏ'),(436,'슈1발','ㅅㅠ1ㅂㅏㄹ'),(437,'슈발','ㅅㅠㅂㅏㄹ'),(438,'슈ㅣ발','ㅅㅠㅣㅂㅏㄹ'),(439,'싑창','ㅅㅢㅂㅊㅏㅇ'),(440,'시1발','ㅅㅣ1ㅂㅏㄹ'),(441,'이새끼','ㅇㅣㅅㅐㄲㅣ'),(442,'시미발친','ㅅㅣㅁㅣㅂㅏㄹㅊㅣㄴ'),(443,'시미친발','ㅅㅣㅁㅣㅊㅣㄴㅂㅏㄹ'),(444,'시새발끼','ㅅㅣㅅㅐㅂㅏㄹㄲㅣ'),(445,'씨새발끼','ㅆㅣㅅㅐㅂㅏㄹㄲㅣ'),(446,'시부울','ㅅㅣㅂㅜㅇㅜㄹ'),(447,'시방새','ㅅㅣㅂㅏㅇㅅㅐ'),(448,'시벌탱','ㅅㅣㅂㅓㄹㅌㅐㅇ'),(449,'시볼탱','ㅅㅣㅂㅗㄹㅌㅐㅇ'),(450,'시빨','ㅅㅣㅃㅏㄹ'),(451,'시이발','ㅅㅣㅇㅣㅂㅏㄹ'),(452,'시친발미','ㅅㅣㅊㅣㄴㅂㅏㄹㅁㅣ'),(453,'시팔','ㅅㅣㅍㅏㄹ'),(454,'십창','ㅅㅣㅂㅊㅏㅇ'),(455,'십팔','ㅅㅣㅂㅍㅏㄹ'),(456,'ㅆ1ㅂ','ㅆ1ㅂ'),(457,'ㅆㅂ','ㅆㅂ'),(458,'쌔끼','ㅆㅐㄲㅣ'),(459,'썌끼','ㅆㅒㄲㅣ'),(460,'씝창','ㅆㅢㅂㅊㅏㅇ'),(461,'씨1발','ㅆㅣ1ㅂㅏㄹ'),(462,'씨바라','ㅆㅣㅂㅏㄹㅏ'),(463,'씨벌탱','ㅆㅣㅂㅓㄹㅌㅐㅇ'),(464,'씨볼탱','ㅆㅣㅂㅗㄹㅌㅐㅇ'),(465,'씨빨','ㅆㅣㅃㅏㄹ'),(466,'시바앙','ㅅㅣㅂㅏㅇㅏㅇ'),(467,'시바시바','ㅅㅣㅂㅏㅅㅣㅂㅏ'),(468,'쉬발','ㅅㅟㅂㅏㄹ'),(469,'씨이발','ㅆㅣㅇㅣㅂㅏㄹ'),(470,'씨빠빠','ㅆㅣㅃㅏㅃㅏ'),(471,'사새끼','ㅅㅏㅅㅐㄲㅣ'),(472,'씨바알','ㅆㅣㅂㅏㅇㅏㄹ'),(473,'씹치','ㅆㅣㅂㅊㅣ'),(474,'아오 시바','ㅇㅏㅇㅗ ㅅㅣㅂㅏ'),(475,'아오시바','ㅇㅏㅇㅗㅅㅣㅂㅏ'),(476,'앰창','ㅇㅐㅁㅊㅏㅇ'),(477,'엠뷩신','ㅇㅔㅁㅂㅟㅇㅅㅣㄴ'),(478,'엠븽신','ㅇㅔㅁㅂㅢㅇㅅㅣㄴ'),(479,'엠빙신','ㅇㅔㅁㅂㅣㅇㅅㅣㄴ'),(480,'엠생','ㅇㅔㅁㅅㅐㅇ'),(481,'엠창','ㅇㅔㅁㅊㅏㅇ'),(482,'엿이나','ㅇㅕㅅㅇㅣㄴㅏ'),(483,'옘병','ㅇㅖㅁㅂㅕㅇ'),(484,'ㅈㄴ','ㅈㄴ'),(485,'ㅈ.ㄴ','ㅈ.ㄴ'),(486,'ㅈㄹ','ㅈㄹ'),(487,'젼나','ㅈㅕㄴㄴㅏ'),(488,'졌같은','ㅈㅕㅆㄱㅏㅌㅇㅡㄴ'),(489,'조온','ㅈㅗㅇㅗㄴ'),(490,'조온나','ㅈㅗㅇㅗㄴㄴㅏ'),(491,'족까','ㅈㅗㄱㄲㅏ'),(492,'존 나','ㅈㅗㄴ ㄴㅏ'),(493,'존.나','ㅈㅗㄴ.ㄴㅏ'),(494,'존1','ㅈㅗㄴ1'),(495,'존1나','ㅈㅗㄴ1ㄴㅏ'),(496,'존ㄴ나','ㅈㅗㄴㄴㄴㅏ'),(497,'쥰내','ㅈㅠㄴㄴㅐ'),(498,'존나','ㅈㅗㄴㄴㅏ'),(499,'존쎄','ㅈㅗㄴㅆㅔ'),(500,'존쎼','ㅈㅗㄴㅆㅖ'),(501,'종나','ㅈㅗㅇㄴㅏ'),(502,'봊','ㅂㅗㅈ'),(503,'jot같','jotㄱㅏㅌ'),(504,'이 새끼','ㅇㅣ ㅅㅐㄲㅣ'),(505,'젗같','ㅈㅓㅊㄱㅏㅌ'),(506,'씨버럼','ㅆㅣㅂㅓㄹㅓㅁ'),(507,'개쓰래기','ㄱㅐㅆㅡㄹㅐㄱㅣ'),(508,'좆까','ㅈㅗㅈㄲㅏ'),(509,'죠낸','ㅈㅛㄴㅐㄴ'),(510,'죠온나','ㅈㅛㅇㅗㄴㄴㅏ'),(511,'죤나','ㅈㅛㄴㄴㅏ'),(512,'죤내','ㅈㅛㄴㄴㅐ'),(513,'죵나','ㅈㅛㅇㄴㅏ'),(514,'죽어버려','ㅈㅜㄱㅇㅓㅂㅓㄹㅕ'),(515,'줬같은','ㅈㅝㅆㄱㅏㅌㅇㅡㄴ'),(516,'같은새끼','ㄱㅏㅌㅇㅡㄴㅅㅐㄲㅣ'),(517,'쥐랄','ㅈㅟㄹㅏㄹ'),(518,'쥰나','ㅈㅠㄴㄴㅏ'),(519,'즤랄','ㅈㅢㄹㅏㄹ'),(520,'지 랄','ㅈㅣ ㄹㅏㄹ'),(521,'지1랄','ㅈㅣ1ㄹㅏㄹ'),(522,'지롤','ㅈㅣㄹㅗㄹ'),(523,'와꾸','ㅇㅘㄲㅜ'),(524,'꼴데','ㄲㅗㄹㄷㅔ'),(525,'짱깨','ㅉㅏㅇㄲㅐ'),(526,'짱께','ㅉㅏㅇㄲㅔ'),(527,'쪼녜','ㅉㅗㄴㅖ'),(528,'쪽1바리','ㅉㅗㄱ1ㅂㅏㄹㅣ'),(529,'쪽바리','ㅉㅗㄱㅂㅏㄹㅣ'),(530,'쪽발','ㅉㅗㄱㅂㅏㄹ'),(531,'쫓같','ㅉㅗㅊㄱㅏㅌ'),(532,'쯰질','ㅉㅢㅈㅣㄹ'),(533,'찌1질','ㅉㅣ1ㅈㅣㄹ'),(534,'찍찍이','ㅉㅣㄱㅉㅣㄱㅇㅣ'),(535,'찎찎이','ㅉㅣㄲㅉㅣㄲㅇㅣ'),(536,'창년','ㅊㅏㅇㄴㅕㄴ'),(537,'창놈','ㅊㅏㅇㄴㅗㅁ'),(538,'첫빠','ㅊㅓㅅㅃㅏ'),(539,'쳐발라','ㅊㅕㅂㅏㄹㄹㅏ'),(540,'취ㅈ','ㅊㅟㅈ'),(541,'취좃','ㅊㅟㅈㅗㅅ'),(542,'친 년','ㅊㅣㄴ ㄴㅕㄴ'),(543,'친 놈','ㅊㅣㄴ ㄴㅗㅁ'),(544,'친년','ㅊㅣㄴㄴㅕㄴ'),(545,'친노마','ㅊㅣㄴㄴㅗㅁㅏ'),(546,'친놈','ㅊㅣㄴㄴㅗㅁ'),(547,'텐귀','ㅌㅔㄴㄱㅟ'),(548,'텐덕','ㅌㅔㄴㄷㅓㄱ'),(549,'파1친','ㅍㅏ1ㅊㅣㄴ'),(550,'파친','ㅍㅏㅊㅣㄴ'),(551,'ㅎㅃ','ㅎㅃ'),(552,'할많하않','ㅎㅏㄹㅁㅏㄶㅎㅏㅇㅏㄶ'),(553,'할말하않','ㅎㅏㄹㅁㅏㄹㅎㅏㅇㅏㄶ'),(554,'새.끼','ㅅㅐ.ㄲㅣ'),(555,'화낭년','ㅎㅘㄴㅏㅇㄴㅕㄴ'),(556,'화냥년','ㅎㅘㄴㅑㅇㄴㅕㄴ'),(557,'후.려','ㅎㅜ.ㄹㅕ'),(558,'후1려','ㅎㅜ1ㄹㅕ'),(559,'후1빨','ㅎㅜ1ㅃㅏㄹ'),(560,'후려','ㅎㅜㄹㅕ'),(561,'후빨','ㅎㅜㅃㅏㄹ'),(562,'환멸','ㅎㅘㄴㅁㅕㄹ'),(563,'환1멸','ㅎㅘㄴ1ㅁㅕㄹ'),(564,'ㅗ','ㅗ'),(565,'쌍','ㅆㅏㅇ'),(566,'씹','ㅆㅣㅂ'),(567,'놈','ㄴㅗㅁ'),(568,'잦','ㅈㅏㅈ'),(569,'섹','ㅅㅔㄱ'),(570,'거른다','ㄱㅓㄹㅡㄴㄷㅏ'),(571,'가지가지','ㄱㅏㅈㅣㄱㅏㅈㅣ'),(572,'개.웃','ㄱㅐ.ㅇㅜㅅ'),(573,'개오바','ㄱㅐㅇㅗㅂㅏ'),(574,'쌉','ㅆㅏㅂ'),(575,'개간','ㄱㅐㄱㅏㄴ'),(576,'럼들','ㄹㅓㅁㄷㅡㄹ'),(577,'쳐받는','ㅊㅕㅂㅏㄷㄴㅡㄴ'),(578,'그따구','ㄱㅡㄸㅏㄱㅜ'),(579,'닝기리','ㄴㅣㅇㄱㅣㄹㅣ'),(580,'호로잡','ㅎㅗㄹㅗㅈㅏㅂ'),(581,'개념빠가','ㄱㅐㄴㅕㅁㅃㅏㄱㅏ'),(582,'개독','ㄱㅐㄷㅗㄱ'),(583,'개련','ㄱㅐㄹㅕㄴ'),(584,'개무시','ㄱㅐㅁㅜㅅㅣ'),(585,'개무식','ㄱㅐㅁㅜㅅㅣㄱ'),(586,'개민폐','ㄱㅐㅁㅣㄴㅍㅖ'),(587,'개빡','ㄱㅐㅃㅏㄱ'),(588,'개섹','ㄱㅐㅅㅔㄱ'),(589,'개소리','ㄱㅐㅅㅗㄹㅣ'),(590,'개쉽','ㄱㅐㅅㅟㅂ'),(591,'개싫','ㄱㅐㅅㅣㅀ'),(592,'개쎔','ㄱㅐㅆㅔㅁ'),(593,'개웃','ㄱㅐㅇㅜㅅ'),(594,'개이득','ㄱㅐㅇㅣㄷㅡㄱ'),(595,'개자식','ㄱㅐㅈㅏㅅㅣㄱ'),(596,'개죠','ㄱㅐㅈㅛ'),(597,'개짜증','ㄱㅐㅉㅏㅈㅡㅇ'),(598,'개짱','ㄱㅐㅉㅏㅇ'),(599,'개짲','ㄱㅐㅉㅏㅈ'),(600,'개쩐','ㄱㅐㅉㅓㄴ'),(601,'개쩔','ㄱㅐㅉㅓㄹ'),(602,'개힘들','ㄱㅐㅎㅣㅁㄷㅡㄹ'),(603,'계새끼','ㄱㅖㅅㅐㄲㅣ'),(604,'개저씨','ㄱㅐㅈㅓㅆㅣ'),(605,'김치녀','ㄱㅣㅁㅊㅣㄴㅕ'),(606,'존낙','ㅈㅗㄴㄴㅏㄱ'),(607,'눈새','ㄴㅜㄴㅅㅐ'),(608,'개꿀','ㄱㅐㄲㅜㄹ'),(609,'골 빈','ㄱㅗㄹ ㅂㅣㄴ'),(610,'골1빈','ㄱㅗㄹ1ㅂㅣㄴ'),(611,'골빈','ㄱㅗㄹㅂㅣㄴ'),(612,'글러 먹','ㄱㅡㄹㄹㅓ ㅁㅓㄱ'),(613,'글러먹','ㄱㅡㄹㄹㅓㅁㅓㄱ'),(614,'그1켬','ㄱㅡ1ㅋㅕㅁ'),(615,'그켬','ㄱㅡㅋㅕㅁ'),(616,'극1혐','ㄱㅡㄱ1ㅎㅕㅁ'),(617,'극혐','ㄱㅡㄱㅎㅕㅁ'),(618,'기레기','ㄱㅣㄹㅔㄱㅣ'),(619,'기자레기','ㄱㅣㅈㅏㄹㅔㄱㅣ'),(620,'까내리','ㄲㅏㄴㅐㄹㅣ'),(621,'껒여','ㄲㅓㅈㅇㅕ'),(622,'꼬라지','ㄲㅗㄹㅏㅈㅣ'),(623,'꼴갑','ㄲㅗㄹㄱㅏㅂ'),(624,'꼴값','ㄲㅗㄹㄱㅏㅄ'),(625,'꼴깝','ㄲㅗㄹㄲㅏㅂ'),(626,'꼴랑','ㄲㅗㄹㄹㅏㅇ'),(627,'꼴보기','ㄲㅗㄹㅂㅗㄱㅣ'),(628,'꼴뵈기','ㄲㅗㄹㅂㅚㄱㅣ'),(629,'나빼썅','ㄴㅏㅃㅐㅆㅑㅇ'),(630,'남1혐','ㄴㅏㅁ1ㅎㅕㅁ'),(631,'넌씨눈','ㄴㅓㄴㅆㅣㄴㅜㄴ'),(632,'노무노무','ㄴㅗㅁㅜㄴㅗㅁㅜ'),(633,'노알라','ㄴㅗㅇㅏㄹㄹㅏ'),(634,'노친네','ㄴㅗㅊㅣㄴㄴㅔ'),(635,'눈깔 파','ㄴㅜㄴㄲㅏㄹ ㅍㅏ'),(636,'눈깔파','ㄴㅜㄴㄲㅏㄹㅍㅏ'),(637,'닥1','ㄷㅏㄱ1'),(638,'닥2','ㄷㅏㄱ2'),(639,'대가리','ㄷㅐㄱㅏㄹㅣ'),(640,'머갈','ㅁㅓㄱㅏㄹ'),(641,'대갈','ㄷㅐㄱㅏㄹ'),(642,'뚝배기','ㄸㅜㄱㅂㅐㄱㅣ'),(643,'덜떨어','ㄷㅓㄹㄸㅓㄹㅇㅓ'),(644,'도랐','ㄷㅗㄹㅏㅆ'),(645,'돌앗구만','ㄷㅗㄹㅇㅏㅅㄱㅜㅁㅏㄴ'),(646,'돌앗나','ㄷㅗㄹㅇㅏㅅㄴㅏ'),(647,'돌았구만','ㄷㅗㄹㅇㅏㅆㄱㅜㅁㅏㄴ'),(648,'돌았나','ㄷㅗㄹㅇㅏㅆㄴㅏ'),(649,'돌았네','ㄷㅗㄹㅇㅏㅆㄴㅔ'),(650,'둄마','ㄷㅛㅁㅁㅏ'),(651,'뒈져','ㄷㅞㅈㅕ'),(652,'뒤져야','ㄷㅟㅈㅕㅇㅑ'),(653,'쓰레기새','ㅆㅡㄹㅔㄱㅣㅅㅐ'),(654,'쓰레기 새','ㅆㅡㄹㅔㄱㅣ ㅅㅐ'),(655,'뒤져라','ㄷㅟㅈㅕㄹㅏ'),(656,'뒤져버','ㄷㅟㅈㅕㅂㅓ'),(657,'뒤져야지','ㄷㅟㅈㅕㅇㅑㅈㅣ'),(658,'뒤졌','ㄷㅟㅈㅕㅆ'),(659,'뒤지겠','ㄷㅟㅈㅣㄱㅔㅆ'),(660,'뒤지고싶','ㄷㅟㅈㅣㄱㅗㅅㅣㅍ'),(661,'디지고','ㄷㅣㅈㅣㄱㅗ'),(662,'D지고','Dㅈㅣㄱㅗ'),(663,'D쥐고','Dㅈㅟㄱㅗ'),(664,'씹못','ㅆㅣㅂㅁㅗㅅ'),(665,'ssㅑ','ssㅑ'),(666,'망해라','ㅁㅏㅇㅎㅐㄹㅏ'),(667,'디져라','ㄷㅣㅈㅕㄹㅏ'),(668,'찌질한','ㅉㅣㅈㅣㄹㅎㅏㄴ'),(669,'ㅉ질한','ㅉㅈㅣㄹㅎㅏㄴ'),(670,'ㅅㅂ','ㅅㅂ'),(671,'쪼다','ㅉㅗㄷㅏ'),(672,'뒤지길','ㄷㅟㅈㅣㄱㅣㄹ'),(673,'뒤진다','ㄷㅟㅈㅣㄴㄷㅏ'),(674,'뒤질','ㄷㅟㅈㅣㄹ'),(675,'디졌','ㄷㅣㅈㅕㅆ'),(676,'디질','ㄷㅣㅈㅣㄹ'),(677,'딴년','ㄸㅏㄴㄴㅕㄴ'),(678,'듣보','ㄷㅡㄷㅂㅗ'),(679,'뚫린 입','ㄸㅜㅀㄹㅣㄴ ㅇㅣㅂ'),(680,'런년','ㄹㅓㄴㄴㅕㄴ'),(681,'롬들','ㄹㅗㅁㄷㅡㄹ'),(682,'멍멍 소리','ㅁㅓㅇㅁㅓㅇ ㅅㅗㄹㅣ'),(683,'멍소리','ㅁㅓㅇㅅㅗㄹㅣ'),(684,'멍멍이소리','ㅁㅓㅇㅁㅓㅇㅇㅣㅅㅗㄹㅣ'),(685,'명존','ㅁㅕㅇㅈㅗㄴ'),(686,'죽여버리고','ㅈㅜㄱㅇㅕㅂㅓㄹㅣㄱㅗ'),(687,'죽여뿌고','ㅈㅜㄱㅇㅕㅃㅜㄱㅗ'),(688,'죽여 버리고','ㅈㅜㄱㅇㅕ ㅂㅓㄹㅣㄱㅗ'),(689,'죽여불고','ㅈㅜㄱㅇㅕㅂㅜㄹㄱㅗ'),(690,'별창','ㅂㅕㄹㅊㅏㅇ'),(691,'뽄새','ㅃㅗㄴㅅㅐ'),(692,'뽄세','ㅃㅗㄴㅅㅔ'),(693,'ㅄ','ㅄ'),(694,'ㅅ,ㅂ','ㅅ,ㅂ'),(695,'ㅅㅋ','ㅅㅋ'),(696,'ㅅㅡ루','ㅅㅡㄹㅜ'),(697,'성괴','ㅅㅓㅇㄱㅚ'),(698,'쉬이이','ㅅㅟㅇㅣㅇㅣ'),(699,'쉬이이이','ㅅㅟㅇㅣㅇㅣㅇㅣ'),(700,'슈레기','ㅅㅠㄹㅔㄱㅣ'),(701,'스죄','ㅅㅡㅈㅚ'),(702,'슨상님','ㅅㅡㄴㅅㅏㅇㄴㅣㅁ'),(703,'거지같은','ㄱㅓㅈㅣㄱㅏㅌㅇㅡㄴ'),(704,'나쁜 새끼','ㄴㅏㅃㅡㄴ ㅅㅐㄲㅣ'),(705,'다꺼져','ㄷㅏㄲㅓㅈㅕ'),(706,'ㅆ1ㄺ','ㅆ1ㄺ'),(707,'ㅆㄹㄱ','ㅆㄹㄱ'),(708,'ㅆㄺ','ㅆㄺ'),(709,'싸가지 없','ㅆㅏㄱㅏㅈㅣ ㅇㅓㅄ'),(710,'싸가지없','ㅆㅏㄱㅏㅈㅣㅇㅓㅄ'),(711,'쓰1레기','ㅆㅡ1ㄹㅔㄱㅣ'),(712,'쓰렉','ㅆㅡㄹㅔㄱ'),(713,'쳐마','ㅊㅕㅁㅏ'),(714,'개쩌','ㄱㅐㅉㅓ'),(715,'개 같','ㄱㅐ ㄱㅏㅌ'),(716,'씹귀','ㅆㅣㅂㄱㅟ'),(717,'씹덕','ㅆㅣㅂㄷㅓㄱ'),(718,'아닥','ㅇㅏㄷㅏㄱ'),(719,'오크','ㅇㅗㅋㅡ'),(720,'왜저럼','ㅇㅙㅈㅓㄹㅓㅁ'),(721,'은년','ㅇㅡㄴㄴㅕㄴ'),(722,'인간말종','ㅇㅣㄴㄱㅏㄴㅁㅏㄹㅈㅗㅇ'),(723,'입 털','ㅇㅣㅂ ㅌㅓㄹ'),(724,'입털','ㅇㅣㅂㅌㅓㄹ'),(725,'저따위','ㅈㅓㄸㅏㅇㅟ'),(726,'정떨','ㅈㅓㅇㄸㅓㄹ'),(727,'정신나갓','ㅈㅓㅇㅅㅣㄴㄴㅏㄱㅏㅅ'),(728,'정신나갔','ㅈㅓㅇㅅㅣㄴㄴㅏㄱㅏㅆ'),(729,'젼낰','ㅈㅕㄴㄴㅏㅋ'),(730,'졀라','ㅈㅕㄹㄹㅏ'),(731,'조낸','ㅈㅗㄴㅐㄴ'),(732,'존,나','ㅈㅗㄴ,ㄴㅏ'),(733,'존내','ㅈㅗㄴㄴㅐ'),(734,'존싫','ㅈㅗㄴㅅㅣㅀ'),(735,'존트','ㅈㅗㄴㅌㅡ'),(736,'졸싫','ㅈㅗㄹㅅㅣㅀ'),(737,'좁밥','ㅈㅗㅂㅂㅏㅂ'),(738,'아가리','ㅇㅏㄱㅏㄹㅣ'),(739,'닥쳐라','ㄷㅏㄱㅊㅕㄹㅏ'),(740,'쓰래기같','ㅆㅡㄹㅐㄱㅣㄱㅏㅌ'),(741,'쥰니','ㅈㅠㄴㄴㅣ'),(742,'쥰트','ㅈㅠㄴㅌㅡ'),(743,'지뢰','ㅈㅣㄹㅚ'),(744,'지1뢰','ㅈㅣ1ㄹㅚ'),(745,'지껄이','ㅈㅣㄲㅓㄹㅇㅣ'),(746,'쬰잘','ㅉㅛㄴㅈㅏㄹ'),(747,'미-친','ㅁㅣ-ㅊㅣㄴ'),(748,'시-발','ㅅㅣ-ㅂㅏㄹ'),(749,'지-랄','ㅈㅣ-ㄹㅏㄹ'),(750,'개-새-끼','ㄱㅐ-ㅅㅐ-ㄲㅣ'),(751,'또-라-이','ㄸㅗ-ㄹㅏ-ㅇㅣ'),(752,'디-질','ㄷㅣ-ㅈㅣㄹ'),(753,'걸-레','ㄱㅓㄹ-ㄹㅔ'),(754,'닥-쳐','ㄷㅏㄱ-ㅊㅕ'),(755,'등-신','ㄷㅡㅇ-ㅅㅣㄴ'),(756,'뇌-텅텅','ㄴㅚ-ㅌㅓㅇㅌㅓㅇ'),(757,'대-가-리','ㄷㅐ-ㄱㅏ-ㄹㅣ'),(758,'갈보년','ㄱㅏㄹㅂㅗㄴㅕㄴ'),(759,'같은년','ㄱㅏㅌㅇㅡㄴㄴㅕㄴ'),(760,'같은뇬','ㄱㅏㅌㅇㅡㄴㄴㅛㄴ'),(761,'개같은','ㄱㅐㄱㅏㅌㅇㅡㄴ'),(762,'개구라','ㄱㅐㄱㅜㄹㅏ'),(763,'개대중','ㄱㅐㄷㅐㅈㅜㅇ'),(764,'개돼중','ㄱㅐㄷㅙㅈㅜㅇ'),(765,'개랄','ㄱㅐㄹㅏㄹ'),(766,'개뿔','ㄱㅐㅃㅜㄹ'),(767,'개새','ㄱㅐㅅㅐ'),(768,'개새키','ㄱㅐㅅㅐㅋㅣ'),(769,'개색기','ㄱㅐㅅㅐㄱㄱㅣ'),(770,'개색끼','ㄱㅐㅅㅐㄱㄲㅣ'),(771,'개색키','ㄱㅐㅅㅐㄱㅋㅣ'),(772,'개색히','ㄱㅐㅅㅐㄱㅎㅣ'),(773,'개섀끼','ㄱㅐㅅㅒㄲㅣ'),(774,'개세','ㄱㅐㅅㅔ'),(775,'개세끼','ㄱㅐㅅㅔㄲㅣ'),(776,'개쑈','ㄱㅐㅆㅛ'),(777,'개쇳기','ㄱㅐㅅㅚㅅㄱㅣ'),(778,'개수작','ㄱㅐㅅㅜㅈㅏㄱ'),(779,'개쉐','ㄱㅐㅅㅞ'),(780,'개쉐리','ㄱㅐㅅㅞㄹㅣ'),(781,'개쉑','ㄱㅐㅅㅞㄱ'),(782,'개스끼','ㄱㅐㅅㅡㄲㅣ'),(783,'개시키','ㄱㅐㅅㅣㅋㅣ'),(784,'개십새기','ㄱㅐㅅㅣㅂㅅㅐㄱㅣ'),(785,'개십새끼','ㄱㅐㅅㅣㅂㅅㅐㄲㅣ'),(786,'개쐑','ㄱㅐㅆㅙㄱ'),(787,'개씹','ㄱㅐㅆㅣㅂ'),(788,'개자슥','ㄱㅐㅈㅏㅅㅡㄱ'),(789,'개자지','ㄱㅐㅈㅏㅈㅣ'),(790,'개접','ㄱㅐㅈㅓㅂ'),(791,'개좆','ㄱㅐㅈㅗㅈ'),(792,'개허접','ㄱㅐㅎㅓㅈㅓㅂ'),(793,'걔새','ㄱㅒㅅㅐ'),(794,'걔수작','ㄱㅒㅅㅜㅈㅏㄱ'),(795,'걔시끼','ㄱㅒㅅㅣㄲㅣ'),(796,'걔시키','ㄱㅒㅅㅣㅋㅣ'),(797,'걔썌','ㄱㅒㅆㅒ'),(798,'걸레','ㄱㅓㄹㄹㅔ'),(799,'게색기','ㄱㅔㅅㅐㄱㄱㅣ'),(800,'게색끼','ㄱㅔㅅㅐㄱㄲㅣ'),(801,'광뇬','ㄱㅘㅇㄴㅛㄴ'),(802,'구녕','ㄱㅜㄴㅕㅇ'),(803,'구라','ㄱㅜㄹㅏ'),(804,'그년','ㄱㅡㄴㅕㄴ'),(805,'그새끼','ㄱㅡㅅㅐㄲㅣ'),(806,'냄비','ㄴㅐㅁㅂㅣ'),(807,'놈현','ㄴㅗㅁㅎㅕㄴ'),(808,'눈깔','ㄴㅜㄴㄲㅏㄹ'),(809,'뉘미럴','ㄴㅟㅁㅣㄹㅓㄹ'),(810,'니귀미','ㄴㅣㄱㅟㅁㅣ'),(811,'니기미','ㄴㅣㄱㅣㅁㅣ'),(812,'니미씹','ㄴㅣㅁㅣㅆㅣㅂ'),(813,'니아배','ㄴㅣㅇㅏㅂㅐ'),(814,'니아베','ㄴㅣㅇㅏㅂㅔ'),(815,'니아비','ㄴㅣㅇㅏㅂㅣ'),(816,'니어매','ㄴㅣㅇㅓㅁㅐ'),(817,'니어메','ㄴㅣㅇㅓㅁㅔ'),(818,'니어미','ㄴㅣㅇㅓㅁㅣ'),(819,'닝기미','ㄴㅣㅇㄱㅣㅁㅣ'),(820,'뎡신','ㄷㅕㅇㅅㅣㄴ'),(821,'돈놈','ㄷㅗㄴㄴㅗㅁ'),(822,'돌아이','ㄷㅗㄹㅇㅏㅇㅣ'),(823,'돌은놈','ㄷㅗㄹㅇㅡㄴㄴㅗㅁ'),(824,'되질래','ㄷㅚㅈㅣㄹㄹㅐ'),(825,'뒈져라','ㄷㅞㅈㅕㄹㅏ'),(826,'뒈진','ㄷㅞㅈㅣㄴ'),(827,'뒈진다','ㄷㅞㅈㅣㄴㄷㅏ'),(828,'뒈질','ㄷㅞㅈㅣㄹ'),(829,'뒤질래','ㄷㅟㅈㅣㄹㄹㅐ'),(830,'디진다','ㄷㅣㅈㅣㄴㄷㅏ'),(831,'디질래','ㄷㅣㅈㅣㄹㄹㅐ'),(832,'따식','ㄸㅏㅅㅣㄱ'),(833,'때놈','ㄸㅐㄴㅗㅁ'),(834,'뙈놈','ㄸㅙㄴㅗㅁ'),(835,'뙤놈','ㄸㅚㄴㅗㅁ'),(836,'뙨넘','ㄸㅚㄴㄴㅓㅁ'),(837,'뙨놈','ㄸㅚㄴㄴㅗㅁ'),(838,'뚜쟁','ㄸㅜㅈㅐㅇ'),(839,'띠바','ㄸㅣㅂㅏ'),(840,'띠발','ㄸㅣㅂㅏㄹ'),(841,'띠불','ㄸㅣㅂㅜㄹ'),(842,'띠팔','ㄸㅣㅍㅏㄹ'),(843,'메친넘','ㅁㅔㅊㅣㄴㄴㅓㅁ'),(844,'메친놈','ㅁㅔㅊㅣㄴㄴㅗㅁ'),(845,'미친','ㅁㅣㅊㅣㄴ'),(846,'미친새끼','ㅁㅣㅊㅣㄴㅅㅐㄲㅣ'),(847,'미친스까이','ㅁㅣㅊㅣㄴㅅㅡㄲㅏㅇㅣ'),(848,'바랄년','ㅂㅏㄹㅏㄹㄴㅕㄴ'),(849,'병자','ㅂㅕㅇㅈㅏ'),(850,'벼엉신','ㅂㅕㅇㅓㅇㅅㅣㄴ'),(851,'병쉰','ㅂㅕㅇㅅㅟㄴ'),(852,'부럴','ㅂㅜㄹㅓㄹ'),(853,'불할','ㅂㅜㄹㅎㅏㄹ'),(854,'붕가','ㅂㅜㅇㄱㅏ'),(855,'붙어먹','ㅂㅜㅌㅇㅓㅁㅓㄱ'),(856,'뷰웅','ㅂㅠㅇㅜㅇ'),(857,'빙시','ㅂㅣㅇㅅㅣ'),(858,'뽁큐','ㅃㅗㄱㅋㅠ'),(859,'상넘이','ㅅㅏㅇㄴㅓㅁㅇㅣ'),(860,'상놈을','ㅅㅏㅇㄴㅗㅁㅇㅡㄹ'),(861,'상놈의','ㅅㅏㅇㄴㅗㅁㅇㅢ'),(862,'상놈이','ㅅㅏㅇㄴㅗㅁㅇㅣ'),(863,'새갸','ㅅㅐㄱㅑ'),(864,'새새끼','ㅅㅐㅅㅐㄲㅣ'),(865,'색끼','ㅅㅐㄱㄲㅣ'),(866,'생쑈','ㅅㅐㅇㅆㅛ'),(867,'세갸','ㅅㅔㄱㅑ'),(868,'쇼하네','ㅅㅛㅎㅏㄴㅔ'),(869,'쉐기','ㅅㅞㄱㅣ'),(870,'쉐끼','ㅅㅞㄲㅣ'),(871,'쉐리','ㅅㅞㄹㅣ'),(872,'쉐에기','ㅅㅞㅇㅔㄱㅣ'),(873,'쉐키','ㅅㅞㅋㅣ'),(874,'쉑','ㅅㅞㄱ'),(875,'쉣','ㅅㅞㅅ'),(876,'쉨','ㅅㅞㅋ'),(877,'쉬밸','ㅅㅟㅂㅐㄹ'),(878,'쉬벌','ㅅㅟㅂㅓㄹ'),(879,'쉬뻘','ㅅㅟㅃㅓㄹ'),(880,'쉽알','ㅅㅟㅂㅇㅏㄹ'),(881,'스패킹','ㅅㅡㅍㅐㅋㅣㅇ'),(882,'스팽','ㅅㅡㅍㅐㅇ'),(883,'시궁창','ㅅㅣㄱㅜㅇㅊㅏㅇ'),(884,'시끼','ㅅㅣㄲㅣ'),(885,'시랄','ㅅㅣㄹㅏㄹ'),(886,'시부랄','ㅅㅣㅂㅜㄹㅏㄹ'),(887,'시부리','ㅅㅣㅂㅜㄹㅣ'),(888,'시브랄','ㅅㅣㅂㅡㄹㅏㄹ'),(889,'심탱','ㅅㅣㅁㅌㅐㅇ'),(890,'십8','ㅅㅣㅂ8'),(891,'십새','ㅅㅣㅂㅅㅐ'),(892,'십새끼','ㅅㅣㅂㅅㅐㄲㅣ'),(893,'십세','ㅅㅣㅂㅅㅔ'),(894,'십쉐','ㅅㅣㅂㅅㅞ'),(895,'십쉐이','ㅅㅣㅂㅅㅞㅇㅣ'),(896,'십스키','ㅅㅣㅂㅅㅡㅋㅣ'),(897,'십쌔','ㅅㅣㅂㅆㅐ'),(898,'십탱','ㅅㅣㅂㅌㅐㅇ'),(899,'싶알','ㅅㅣㅍㅇㅏㄹ'),(900,'싸가지','ㅆㅏㄱㅏㅈㅣ'),(901,'싹아지','ㅆㅏㄱㅇㅏㅈㅣ'),(902,'쌉년','ㅆㅏㅂㄴㅕㄴ'),(903,'쌍뇬','ㅆㅏㅇㄴㅛㄴ'),(904,'쌩쑈','ㅆㅐㅇㅆㅛ'),(905,'쌴년','ㅆㅑㄴㄴㅕㄴ'),(906,'썡쇼','ㅆㅒㅇㅅㅛ'),(907,'썩을년','ㅆㅓㄱㅇㅡㄹㄴㅕㄴ'),(908,'썩을놈','ㅆㅓㄱㅇㅡㄹㄴㅗㅁ'),(909,'쎄꺄','ㅆㅔㄲㅑ'),(910,'쎄엑','ㅆㅔㅇㅔㄱ'),(911,'쒸벌','ㅆㅟㅂㅓㄹ'),(912,'쒸뻘','ㅆㅟㅃㅓㄹ'),(913,'쓰박','ㅆㅡㅂㅏㄱ'),(914,'쓰발','ㅆㅡㅂㅏㄹ'),(915,'쓰벌','ㅆㅡㅂㅓㄹ'),(916,'쓰팔','ㅆㅡㅍㅏㄹ'),(917,'씁새','ㅆㅡㅂㅅㅐ'),(918,'씁얼','ㅆㅡㅂㅇㅓㄹ'),(919,'씌파','ㅆㅢㅍㅏ'),(920,'씨8','ㅆㅣ8'),(921,'씨끼','ㅆㅣㄲㅣ'),(922,'씨댕','ㅆㅣㄷㅐㅇ'),(923,'씨뎅','ㅆㅣㄷㅔㅇ'),(924,'씨박','ㅆㅣㅂㅏㄱ'),(925,'씨방세','ㅆㅣㅂㅏㅇㅅㅔ'),(926,'씨밸','ㅆㅣㅂㅐㄹ'),(927,'씨뱅','ㅆㅣㅂㅐㅇ'),(928,'씨벨','ㅆㅣㅂㅔㄹ'),(929,'씨봉','ㅆㅣㅂㅗㅇ'),(930,'씨봉알','ㅆㅣㅂㅗㅇㅇㅏㄹ'),(931,'씨부렁','ㅆㅣㅂㅜㄹㅓㅇ'),(932,'씨붕','ㅆㅣㅂㅜㅇ'),(933,'씨빠','ㅆㅣㅃㅏ'),(934,'씨뽀랄','ㅆㅣㅃㅗㄹㅏㄹ'),(935,'씨앙','ㅆㅣㅇㅏㅇ'),(936,'씸년','ㅆㅣㅁㄴㅕㄴ'),(937,'씸뇬','ㅆㅣㅁㄴㅛㄴ'),(938,'씸새끼','ㅆㅣㅁㅅㅐㄲㅣ'),(939,'씹같','ㅆㅣㅂㄱㅏㅌ'),(940,'씹년','ㅆㅣㅂㄴㅕㄴ'),(941,'씹뇬','ㅆㅣㅂㄴㅛㄴ'),(942,'씹새기','ㅆㅣㅂㅅㅐㄱㅣ'),(943,'씹새리','ㅆㅣㅂㅅㅐㄹㅣ'),(944,'씹스키','ㅆㅣㅂㅅㅡㅋㅣ'),(945,'씹질','ㅆㅣㅂㅈㅣㄹ'),(946,'씹퇭','ㅆㅣㅂㅌㅙㅇ'),(947,'씹헐','ㅆㅣㅂㅎㅓㄹ'),(948,'아갈','ㅇㅏㄱㅏㄹ'),(949,'아갈통','ㅇㅏㄱㅏㄹㅌㅗㅇ'),(950,'아구창','ㅇㅏㄱㅜㅊㅏㅇ'),(951,'아구통','ㅇㅏㄱㅜㅌㅗㅇ'),(952,'아굴','ㅇㅏㄱㅜㄹ'),(953,'양넘','ㅇㅑㅇㄴㅓㅁ'),(954,'양년','ㅇㅑㅇㄴㅕㄴ'),(955,'양놈','ㅇㅑㅇㄴㅗㅁ'),(956,'엄창','ㅇㅓㅁㅊㅏㅇ'),(957,'엠병','ㅇㅔㅁㅂㅕㅇ'),(958,'염병','ㅇㅕㅁㅂㅕㅇ'),(959,'옘빙','ㅇㅖㅁㅂㅣㅇ'),(960,'왜년','ㅇㅙㄴㅕㄴ'),(961,'왜놈','ㅇㅙㄴㅗㅁ'),(962,'욤병','ㅇㅛㅁㅂㅕㅇ'),(963,'을년','ㅇㅡㄹㄴㅕㄴ'),(964,'이년','ㅇㅣㄴㅕㄴ'),(965,'이새키','ㅇㅣㅅㅐㅋㅣ'),(966,'이스끼','ㅇㅣㅅㅡㄲㅣ'),(967,'이스키','ㅇㅣㅅㅡㅋㅣ'),(968,'임마','ㅇㅣㅁㅁㅏ'),(969,'자슥','ㅈㅏㅅㅡㄱ'),(970,'잡것','ㅈㅏㅂㄱㅓㅅ'),(971,'잡넘','ㅈㅏㅂㄴㅓㅁ'),(972,'잡년','ㅈㅏㅂㄴㅕㄴ'),(973,'잡놈','ㅈㅏㅂㄴㅗㅁ'),(974,'저년','ㅈㅓㄴㅕㄴ'),(975,'저새끼','ㅈㅓㅅㅐㄲㅣ'),(976,'접년','ㅈㅓㅂㄴㅕㄴ'),(977,'젖밥','ㅈㅓㅈㅂㅏㅂ'),(978,'조까치','ㅈㅗㄲㅏㅊㅣ'),(979,'조또','ㅈㅗㄸㅗ'),(980,'조랭','ㅈㅗㄹㅐㅇ'),(981,'조빠','ㅈㅗㅃㅏ'),(982,'조지냐','ㅈㅗㅈㅣㄴㅑ'),(983,'조진다','ㅈㅗㅈㅣㄴㄷㅏ'),(984,'조찐','ㅈㅗㅉㅣㄴ'),(985,'조질래','ㅈㅗㅈㅣㄹㄹㅐ'),(986,'존나게','ㅈㅗㄴㄴㅏㄱㅔ'),(987,'존니','ㅈㅗㄴㄴㅣ'),(988,'존만','ㅈㅗㄴㅁㅏㄴ'),(989,'존만한','ㅈㅗㄴㅁㅏㄴㅎㅏㄴ'),(990,'좁년','ㅈㅗㅂㄴㅕㄴ'),(991,'좃까','ㅈㅗㅅㄲㅏ'),(992,'좃또','ㅈㅗㅅㄸㅗ'),(993,'좃만','ㅈㅗㅅㅁㅏㄴ'),(994,'좃밥','ㅈㅗㅅㅂㅏㅂ'),(995,'좃이','ㅈㅗㅅㅇㅣ'),(996,'좃찐','ㅈㅗㅅㅉㅣㄴ'),(997,'좆같','ㅈㅗㅈㄱㅏㅌ'),(998,'좆나','ㅈㅗㅈㄴㅏ'),(999,'좆또','ㅈㅗㅈㄸㅗ'),(1000,'좆만','ㅈㅗㅈㅁㅏㄴ'),(1001,'좆밥','ㅈㅗㅈㅂㅏㅂ'),(1002,'좆이','ㅈㅗㅈㅇㅣ'),(1003,'좆찐','ㅈㅗㅈㅉㅣㄴ'),(1004,'좇같','ㅈㅗㅊㄱㅏㅌ'),(1005,'좇이','ㅈㅗㅊㅇㅣ'),(1006,'주글래','ㅈㅜㄱㅡㄹㄹㅐ'),(1007,'주데이','ㅈㅜㄷㅔㅇㅣ'),(1008,'주뎅','ㅈㅜㄷㅔㅇ'),(1009,'주뎅이','ㅈㅜㄷㅔㅇㅇㅣ'),(1010,'주둥아리','ㅈㅜㄷㅜㅇㅇㅏㄹㅣ'),(1011,'주둥이','ㅈㅜㄷㅜㅇㅇㅣ'),(1012,'주접','ㅈㅜㅈㅓㅂ'),(1013,'주접떨','ㅈㅜㅈㅓㅂㄸㅓㄹ'),(1014,'죽고잡','ㅈㅜㄱㄱㅗㅈㅏㅂ'),(1015,'죽을래','ㅈㅜㄱㅇㅡㄹㄹㅐ'),(1016,'죽통','ㅈㅜㄱㅌㅗㅇ'),(1017,'쥐롤','ㅈㅟㄹㅗㄹ'),(1018,'쥬디','ㅈㅠㄷㅣ'),(1019,'지럴','ㅈㅣㄹㅓㄹ'),(1020,'짜식','ㅉㅏㅅㅣㄱ'),(1021,'쫍빱','ㅉㅗㅂㅃㅏㅂ'),(1022,'찌랄','ㅉㅣㄹㅏㄹ'),(1023,'창녀','ㅊㅏㅇㄴㅕ'),(1024,'캐년','ㅋㅐㄴㅕㄴ'),(1025,'캐놈','ㅋㅐㄴㅗㅁ'),(1026,'캐스끼','ㅋㅐㅅㅡㄲㅣ'),(1027,'캐스키','ㅋㅐㅅㅡㅋㅣ'),(1028,'캐시키','ㅋㅐㅅㅣㅋㅣ'),(1029,'탱구','ㅌㅐㅇㄱㅜ'),(1030,'팔럼','ㅍㅏㄹㄹㅓㅁ'),(1031,'퍽큐','ㅍㅓㄱㅋㅠ'),(1032,'호로','ㅎㅗㄹㅗ'),(1033,'호로놈','ㅎㅗㄹㅗㄴㅗㅁ'),(1034,'호로색','ㅎㅗㄹㅗㅅㅐㄱ'),(1035,'호로쉑','ㅎㅗㄹㅗㅅㅞㄱ'),(1036,'호로스까이','ㅎㅗㄹㅗㅅㅡㄲㅏㅇㅣ'),(1037,'호로스키','ㅎㅗㄹㅗㅅㅡㅋㅣ'),(1038,'후라들','ㅎㅜㄹㅏㄷㅡㄹ'),(1039,'후래자식','ㅎㅜㄹㅐㅈㅏㅅㅣㄱ'),(1040,'후레','ㅎㅜㄹㅔ'),(1041,'후뢰','ㅎㅜㄹㅚ'),(1042,'씨ㅋ발','ㅆㅣㅋㅂㅏㄹ'),(1043,'ㅆ1발','ㅆ1ㅂㅏㄹ'),(1044,'씌발','ㅆㅢㅂㅏㄹ'),(1045,'띄발','ㄸㅢㅂㅏㄹ'),(1046,'뛰발','ㄸㅟㅂㅏㄹ'),(1047,'띠ㅋ발','ㄸㅣㅋㅂㅏㄹ'),(1048,'뉘뮈','ㄴㅟㅁㅟ'),(1049,'앱창','ㅇㅐㅂㅊㅏㅇ'),(1050,'에미','ㅇㅔㅁㅣ'),(1051,'틀딱','ㅌㅡㄹㄸㅏㄱ'),(1052,'쓰레기','ㅆㅡㄹㅔㄱㅣ'),(1053,'좃문가','ㅈㅗㅅㅁㅜㄴㄱㅏ'),(1054,'섹히','ㅅㅔㄱㅎㅣ'),(1055,'쳐발','ㅊㅕㅂㅏㄹ'),(1056,'족가튼','ㅈㅗㄱㄱㅏㅌㅡㄴ'),(1057,'한남충','ㅎㅏㄴㄴㅏㅁㅊㅜㅇ'),(1058,'닥치','ㄷㅏㄱㅊㅣ'),(1059,'꼴','ㄲㅗㄹ'),(1060,'쿵쾅','ㅋㅜㅇㅋㅘㅇ'),(1061,'줜나','ㅈㅝㄴㄴㅏ'),(1062,'개박살','ㄱㅐㅂㅏㄱㅅㅏㄹ'),(1063,'ㅂㅅ','ㅂㅅ'),(1064,'ㅅㄲ','ㅅㄲ'),(1065,'ㅂㅈ','ㅂㅈ'),(1066,'ㄷㅊ','ㄷㅊ'),(1067,'ㄴㄱㅁ','ㄴㄱㅁ'),(1068,'대깨문','ㄷㅐㄲㅐㅁㅜㄴ'),(1069,'대깨','ㄷㅐㄲㅐ'),(1070,'매퇘지','ㅁㅐㅌㅙㅈㅣ'),(1071,'상폐','ㅅㅏㅇㅍㅖ'),(1072,'메갈','ㅁㅔㄱㅏㄹ'),(1073,'한년','ㅎㅏㄴㄴㅕㄴ'),(1074,'빼액','ㅃㅐㅇㅐㄱ');
/*!40000 ALTER TABLE `defaultkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalkeyword`
--

DROP TABLE IF EXISTS `personalkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personalkeyword` (
  `_index` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `user` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`_index`),
  KEY `user` (`user`),
  CONSTRAINT `personalkeyword_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`_index`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalkeyword`
--

LOCK TABLES `personalkeyword` WRITE;
/*!40000 ALTER TABLE `personalkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `personalkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `_index` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`_index`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1','1','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 21:03:27
