-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2014 at 05:04 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jwsj4`
--

-- --------------------------------------------------------

--
-- Table structure for table `alpha`
--

CREATE TABLE IF NOT EXISTS `alpha` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Year` varchar(255) NOT NULL DEFAULT '',
  `Chapter` varchar(255) NOT NULL DEFAULT '',
  `Int_Review_R1` varchar(255) DEFAULT NULL,
  `Int_Review_R2` varchar(255) DEFAULT NULL,
  `TSG_RFC` varchar(255) DEFAULT NULL,
  `DSG_RFD` varchar(255) DEFAULT NULL,
  `IWG_RFD` varchar(255) DEFAULT NULL,
  `TSG_RFD` varchar(255) DEFAULT NULL,
  `Signed_Off` varchar(255) DEFAULT NULL,
  `Signed_Off_Timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`,`Year`,`Chapter`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `alpha`
--

INSERT INTO `alpha` (`Id`, `Year`, `Chapter`, `Int_Review_R1`, `Int_Review_R2`, `TSG_RFC`, `DSG_RFD`, `IWG_RFD`, `TSG_RFD`, `Signed_Off`, `Signed_Off_Timestamp`) VALUES
(9, '1', '1', 'Rakesh', 'Debayen', 'Done', 'Done', 'Done', 'Done', 'yes', '2014-11-20 12:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `beta`
--

CREATE TABLE IF NOT EXISTS `beta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Year` varchar(255) NOT NULL DEFAULT '',
  `Chapter` varchar(255) NOT NULL DEFAULT '',
  `Int_Review_R1` varchar(255) DEFAULT NULL,
  `Int_Review_R2` varchar(255) DEFAULT NULL,
  `TSG_RFC` varchar(255) DEFAULT NULL,
  `DSG_RFD` varchar(255) DEFAULT NULL,
  `IWG_RFD` varchar(255) DEFAULT NULL,
  `TSG_RFD` varchar(255) DEFAULT NULL,
  `Signed_Off` varchar(255) DEFAULT NULL,
  `Signed_Off_Timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`,`Year`,`Chapter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `beta`
--


-- --------------------------------------------------------

--
-- Table structure for table `gold`
--

CREATE TABLE IF NOT EXISTS `gold` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Year` varchar(255) NOT NULL DEFAULT '',
  `Chapter` varchar(255) NOT NULL DEFAULT '',
  `Int_Review_R1` varchar(255) DEFAULT NULL,
  `Int_Review_R2` varchar(255) DEFAULT NULL,
  `TSG_RFC` varchar(255) DEFAULT NULL,
  `DSG_RFD` varchar(255) DEFAULT NULL,
  `IWG_RFD` varchar(255) DEFAULT NULL,
  `TSG_RFD` varchar(255) DEFAULT NULL,
  `Signed_Off` varchar(255) DEFAULT NULL,
  `Signed_Off_Timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`,`Year`,`Chapter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `gold`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
