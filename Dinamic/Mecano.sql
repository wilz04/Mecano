-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.11-beta-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mecano
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ mecano;
USE mecano;

--
-- Table structure for table `mecano`.`bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mecano`.`bills`
--

/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` (`id`,`value`) VALUES 
 (10,'1695'),
 (11,'1695'),
 (12,'1695'),
 (13,'1695'),
 (14,'1695'),
 (15,'1695'),
 (16,'45087'),
 (17,'47458'),
 (18,'47458'),
 (19,'36047'),
 (20,'36047'),
 (21,'36047'),
 (22,'36047'),
 (23,'36047'),
 (24,'1695'),
 (25,'1695'),
 (26,'27007'),
 (27,'27007'),
 (28,'45087'),
 (29,'45087'),
 (30,'35030'),
 (31,'35030'),
 (32,'345891'),
 (33,'345891'),
 (34,'345891'),
 (35,'345891'),
 (36,'345891'),
 (37,'345891'),
 (38,'345891'),
 (39,'345891'),
 (40,'345891'),
 (41,'345891'),
 (42,'345891'),
 (43,'345891'),
 (44,'345891'),
 (45,'345891'),
 (46,'1695'),
 (47,'1695');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;


--
-- Table structure for table `mecano`.`cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards` (
  `id` varchar(45) NOT NULL,
  `owner` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mecano`.`cards`
--

/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` (`id`,`owner`,`value`,`type`) VALUES 
 ('050004','3396579','5500027','0'),
 ('050005','3396579','10000000','1');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;


--
-- Table structure for table `mecano`.`pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE `pays` (
  `client` varchar(45) NOT NULL,
  `card` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `pay` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mecano`.`pays`
--

/*!40000 ALTER TABLE `pays` DISABLE KEYS */;
INSERT INTO `pays` (`client`,`card`,`date`,`pay`,`type`) VALUES 
 ('3396579','050004','2006-10-26','1695','0'),
 ('3396579','050004','2006-10-26','1695','0'),
 ('3396579','050005','2006-10-26','1695','1'),
 ('3396579','050005','2006-10-26','1695','1'),
 ('3396579','050004','2006-10-27','1695','0'),
 ('3396579','050004','2006-10-27','1695','0'),
 ('3396579','050004','2006-10-27','45087','0'),
 ('3396579','050004','2006-10-27','47458','0'),
 ('3396579','050004','2006-10-27','47458','0'),
 ('3396579','050004','2006-10-27','36047','0'),
 ('3396579','050004','2006-10-27','36047','0'),
 ('3396579','050004','2006-10-27','36047','0'),
 ('3396579','050004','2006-10-27','36047','0'),
 ('3396579','050004','2006-10-27','36047','0'),
 ('3396579','050004','2006-10-27','1695','0'),
 ('3396579','050004','2006-10-28','1695','0'),
 ('3396579','050004','2006-10-28','27007','0'),
 ('3396579','050004','2006-10-28','27007','0'),
 ('3396579','050004','2006-10-28','45087','0'),
 ('3396579','050004','2006-10-28','45087','0'),
 ('3396579','050004','2006-10-28','35030','0');
INSERT INTO `pays` (`client`,`card`,`date`,`pay`,`type`) VALUES 
 ('3396579','050004','2006-10-28','35030','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','345891','0'),
 ('3396579','050004','2006-10-28','1695','0'),
 ('3396579','050004','2006-10-29','1695','0');
/*!40000 ALTER TABLE `pays` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
