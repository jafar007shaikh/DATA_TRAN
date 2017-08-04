-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.7-beta-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema online_tpa
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ datatransmission3;
USE datatransmission3;

--
-- Table structure for table `online_tpa`.`register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `Name` varchar(45) NOT NULL default '',
  `Email` varchar(45) NOT NULL default '',
  `Pass` varchar(45) NOT NULL default '',
  `Contact` varchar(45) NOT NULL default '',
  `Address` varchar(45) NOT NULL default '',
  `Color` varchar(45) NOT NULL default '',
  `School` varchar(45) NOT NULL default '',
  `Food` varchar(45) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_tpa`.`register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`Name`,`Email`,`Pass`,`Contact`,`Address`,`Color`,`School`,`Food`) VALUES 
 ('Shikha','s@gmail.com','1234','9878654889','Indore','blue','Indore','sweet');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
