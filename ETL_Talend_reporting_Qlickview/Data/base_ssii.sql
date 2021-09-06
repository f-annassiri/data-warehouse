# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     test
# Server version:               5.1.41-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2010-10-29 14:54:57
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table test.dim_agence
DROP TABLE IF EXISTS `dim_agence`;
CREATE TABLE IF NOT EXISTS `dim_agence` (
  `agence_id` int(5) NOT NULL,
  `agence_nom_ville` varchar(60) DEFAULT NULL,
  `agence_pays` varchar(54) DEFAULT NULL,
  `zone_nom` varchar(16) DEFAULT NULL,
  `zone_id` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`agence_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table test.dim_client
DROP TABLE IF EXISTS `dim_client`;
CREATE TABLE IF NOT EXISTS `dim_client` (
  `client_id` int(7) NOT NULL,
  `client_nom` varchar(100) DEFAULT NULL,
  `client_ville` varchar(50) DEFAULT NULL,
  `client_pays` varchar(54) DEFAULT NULL,
  `etat_nom` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table test.dim_service
DROP TABLE IF EXISTS `dim_service`;
CREATE TABLE IF NOT EXISTS `dim_service` (
  `service_id` int(2) NOT NULL,
  `service_nom` varchar(31) DEFAULT NULL,
  `categorie_nom` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table test.dim_temps
DROP TABLE IF EXISTS `dim_temps`;
CREATE TABLE IF NOT EXISTS `dim_temps` (
  `temps_id` varchar(8) NOT NULL,
  `jour` varchar(2) DEFAULT NULL,
  `mois` varchar(2) DEFAULT NULL,
  `annee` varchar(4) DEFAULT NULL,
  `jour_nom` varchar(10) DEFAULT NULL,
  `mois_nom` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`temps_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table test.faits_contrat
DROP TABLE IF EXISTS `faits_contrat`;
CREATE TABLE IF NOT EXISTS `faits_contrat` (
  `contrat_id` int(2) NOT NULL,
  `client_id` int(7) NOT NULL,
  `service_id` int(2) NOT NULL,
  `agence_id` int(5) NOT NULL,
  `temps_id` varchar(10) NOT NULL,
  `contrat_montant` int(5) DEFAULT NULL,
  `contrat_nbjour` int(3) DEFAULT NULL,
  PRIMARY KEY (`contrat_id`),
  KEY `FK_F_CONTRAT_AGENCE` (`agence_id`),
  KEY `FK_F_CONTRAT_SERVICE` (`service_id`),
  KEY `FK_F_CONTRAT_TEMPS` (`temps_id`),
  KEY `FK_F_CONTRAT_CLIENT` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

# Data exporting was unselected.
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
