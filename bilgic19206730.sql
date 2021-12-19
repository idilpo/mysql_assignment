-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: bilgic19206730
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `idcandidate` varchar(45) NOT NULL,
  `cName` varchar(45) NOT NULL,
  `cSurname` varchar(45) NOT NULL,
  `cAddress` varchar(90) DEFAULT NULL,
  `cPhone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('C01','Dhruv','Gupta','Ashfield, House 3, Apartment 4, Room 3, Dublin','0845673210'),('C02','Adam','Burke','Holmwood 54, Cabinteely, Dublin','0834673878'),('C03','Idil','Bilgic','Ashfield, House 3, Apartment 4, Room 5, Dublin','0830081161'),('C04','Asad','Raza','Belgrove, House 3, Apartment 8, Dublin','0798563421'),('C05','Jun Kai','Law','Village, House 2, Apartment 6, Dublin','0675398652'),('C06','Fahad','Ijlal','Glenomena House 3, Apartment 9, Dublin','0365709458'),('C07','Shannon','Bergin','Glenomena, House 10, Apartment 1, Room 4, Dublin','0276543808'),('C08','Bianca','Tham','Village, House 1, Apartment 10, Room 6, Dublin','0675239866'),('C09','Ameer','Johal','Street 409, House 4, Apartment 7, Room 2, Dublin','0907966476'),('C10','Saanvi','Vashisht','Ashfield, House 3, Apartment 8, Room 2, Dublin','0723454321');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateSkills`
--

DROP TABLE IF EXISTS `candidateSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidateSkills` (
  `idcandidate` varchar(45) NOT NULL,
  `idskill` varchar(45) NOT NULL,
  PRIMARY KEY (`idcandidate`,`idskill`),
  KEY `idskills_idx` (`idskill`),
  CONSTRAINT `IDcan` FOREIGN KEY (`idcandidate`) REFERENCES `candidate` (`idcandidate`),
  CONSTRAINT `IDski` FOREIGN KEY (`idskill`) REFERENCES `skills` (`idskill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateSkills`
--

LOCK TABLES `candidateSkills` WRITE;
/*!40000 ALTER TABLE `candidateSkills` DISABLE KEYS */;
INSERT INTO `candidateSkills` VALUES ('C02','AID'),('C03','AID'),('C05','AID'),('C09','AID'),('C10','AID'),('C01','CLE'),('C06','CLE'),('C09','CLE'),('C07','CPR'),('C10','CPR'),('C01','INT'),('C07','INT'),('C08','INT'),('C02','LAB'),('C06','LAB'),('C04','PAT'),('C05','PAT'),('C07','PAT'),('C01','PLA'),('C06','PLA'),('C09','PLA'),('C01','PRE'),('C02','PRE'),('C03','PRE'),('C04','PRE'),('C07','PRE'),('C08','PRE'),('C10','PRE'),('C03','SUR'),('C07','SUR'),('C04','THE'),('C08','THE');
/*!40000 ALTER TABLE `candidateSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idhospital` varchar(45) NOT NULL,
  `hName` varchar(90) NOT NULL,
  `hAddress` varchar(90) NOT NULL,
  `hPhone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES ('H01','AeroMedevac Ireland','Unit 6A, KCR Industrial Estate, Kimmage, Dublin','014907556'),('H02','Beacon Hospital','Beacon Court, Sandyford, Dublin','012936600'),('H03','Coombe Women\'s Hospital','Dolphins Barn, Dublin','014085200'),('H04','Hermitage Medical Clinic','Old Lucan Road, Dublin','016459000'),('H05','Mount Carmel Hospital','Braemor Park, Churchtown, Dublin','014063400'),('H06','National Maternity Hospital','Holles Street, Dublin','016373100'),('H07','Sandyford Oncology Venture','Beacon Hospital, Beacon Court, Sandyford, Dublin ','012936691'),('H08','St. James\' Hospital','P.O. Box 580, James\' Street, Dublin','014162366'),('H09','The Well','Beacon Clinic Sandyford Industrial Estate, Bracken Rd, Sandyford, Dublin','012945444'),('H10','The Adelaide and Meath Hospital','Tallaght, Dublin','014142000');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `idinterview` varchar(45) NOT NULL,
  `idcandidate` varchar(45) NOT NULL,
  `idposition` varchar(45) NOT NULL,
  `interviewDate` varchar(45) NOT NULL,
  `hired` varchar(45) NOT NULL,
  PRIMARY KEY (`idinterview`),
  KEY `idcandidate_idx` (`idcandidate`),
  KEY `idposition_idx` (`idposition`),
  CONSTRAINT `idcandidate` FOREIGN KEY (`idcandidate`) REFERENCES `candidate` (`idcandidate`),
  CONSTRAINT `idposition` FOREIGN KEY (`idposition`) REFERENCES `position` (`idposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES ('I01','C01','DER','2021-11-19','yes'),('I02','C05','ASS','2021-04-27','no'),('I03','C08','NUR','2021-10-06','no'),('I04','C10','SUR','2020-12-18','no'),('I05','C02','VET','2021-02-17','yes'),('I06','C07','SUR','2020-07-05','yes'),('I07','C04','NUR','2020-09-08','no'),('I08','C09','VET','2021-05-23','yes'),('I09','C03','EMB','2020-03-11','no'),('I10','C06','ASS','2021-01-14','no'),('I11','C05','ASS','2020-02-10','no'),('I12','C08','NUR','2021-05-05','no'),('I13','C05','ASS','2020-09-12','no');
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `idposition` varchar(45) NOT NULL,
  `pType` varchar(45) DEFAULT NULL,
  `IDhospital` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idposition`),
  KEY `idhospital_idx` (`IDhospital`),
  CONSTRAINT `idhospital` FOREIGN KEY (`IDhospital`) REFERENCES `hospital` (`idhospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('ASS','Assistant','H01'),('DER','Dermatologist','H02'),('EMB','Embriologist','H03'),('NUR','Nurse','H04'),('ONC','Oncologist','H05'),('PAR','Paramedic','H06'),('PHY','Physical Therapist','H07'),('SEC','Secretary','H08'),('SUR','Surgeon','H09'),('VET','Veterinarian','H10');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionSkills`
--

DROP TABLE IF EXISTS `positionSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionSkills` (
  `idposition` varchar(45) NOT NULL,
  `idskill` varchar(45) NOT NULL,
  KEY `idpos_idx` (`idposition`),
  KEY `idskill_idx` (`idskill`),
  CONSTRAINT `idpos` FOREIGN KEY (`idposition`) REFERENCES `position` (`idposition`),
  CONSTRAINT `idskill` FOREIGN KEY (`idskill`) REFERENCES `skills` (`idskill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionSkills`
--

LOCK TABLES `positionSkills` WRITE;
/*!40000 ALTER TABLE `positionSkills` DISABLE KEYS */;
INSERT INTO `positionSkills` VALUES ('ASS','CPR'),('ASS','AID'),('DER','PRE'),('DER','INT'),('EMB','LAB'),('EMB','PAT'),('NUR','PAT'),('NUR','CLE'),('ONC','PRE'),('ONC','PAT'),('PAR','AID'),('PAR','INT'),('PHY','THE'),('PHY','PAT'),('SEC','CLE'),('SEC','PLA'),('SUR','CPR'),('SUR','SUR'),('VET','PRE'),('VET','LAB');
/*!40000 ALTER TABLE `positionSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `idskill` varchar(45) NOT NULL,
  `skillName` varchar(45) NOT NULL,
  PRIMARY KEY (`idskill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('AID','First Aid'),('CLE','Cleaning'),('CPR','CPR'),('INT','Interpersonal'),('LAB','Laboratory'),('PAT','Nursing'),('PLA','Planning'),('PRE','Prescribing'),('SUR','Surgery'),('THE','Theraphy');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bilgic19206730'
--

--
-- Dumping routines for database 'bilgic19206730'
--
/*!50003 DROP PROCEDURE IF EXISTS `4-Q1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q1`(IN varhosp VARCHAR(45))
BEGIN
	select * 
    from `bilgic19206730`.hospital
    where idhospital = varhosp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q10`(IN inputDate DATE)
BEGIN
	select idcandidate
    from `bilgic19206730`.interview
    where interviewDate = inputDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q11`()
BEGIN
	select i.idcandidate, count(*)
    from `bilgic19206730`.candidate c, `bilgic19206730`.interview i
    where c.idcandidate = i.idcandidate
    group by idcandidate
    having count(*) > 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q2`(IN hospname VARCHAR(45))
BEGIN
	select * 
    from `bilgic19206730`.hospital
    where hName = hospname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q3`(IN inputSurname VARCHAR(45))
BEGIN
	select * 
    from `bilgic19206730`.candidate
    where cSurname = inputSurname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q4`(IN inputPosition VARCHAR(45))
BEGIN
	select distinct c.idcandidate, c.cName, c.cSurname
    from `bilgic19206730`.candidate c, `bilgic19206730`.position p, `bilgic19206730`.positionSkills ps,  `bilgic19206730`.candidateSkills cs, `bilgic19206730`.skills s
    where c.idcandidate = cs.idcandidate and p.idposition = ps.idposition and s.idskill = cs.idskill and s.idskill = ps.idskill
    and p.idposition = inputPosition
    order by c.idcandidate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q5`()
BEGIN
	select distinct c.idcandidate, c.cName, c.cSurname, i.hired
    from `bilgic19206730`.candidate c, `bilgic19206730`.interview i
    where i.idcandidate = c.idcandidate and i.hired = 'yes'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q6`(IN inputSkill VARCHAR(45))
BEGIN
	select distinct p.idposition, p.pType, ps.idskill
    from `bilgic19206730`.position p, `bilgic19206730`.positionSkills ps
    where p.idposition = ps.idposition and idskill = inputSkill;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q7`()
BEGIN
	select count(*)
    from `bilgic19206730`.positionSkills ps, `bilgic19206730`.skills s 
    where ps.idskill = s.idskill and skillName = 'Nursing';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q8`()
BEGIN
	select *
    from `bilgic19206730`.position p
    order by IDhospital;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `4-Q9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4-Q9`(IN inputDate DATE)
BEGIN
	select *
    from `bilgic19206730`.interview
    where interviewDate = inputDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 22:56:43
