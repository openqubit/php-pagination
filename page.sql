-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.10-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table sails.student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table sails.student: ~29 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `name`, `number`, `country`) VALUES
	(1, 'logical', 'start', 'Androra'),
	(2, 'title2', 'body', ''),
	(3, 'title3', 'body3', ''),
	(4, 'title4', 'body4', ''),
	(5, 'title4', 'body4', ''),
	(6, 'title4', 'body4', ''),
	(7, 'title3', 'body3', ''),
	(8, 'title4', 'body4', ''),
	(9, 'title4', 'body4', ''),
	(10, 'title3', 'body3', ''),
	(11, 'title4', 'body4', ''),
	(12, 'title4', 'body4', ''),
	(13, 'title4', 'body4', ''),
	(14, 'title4', 'body4', ''),
	(15, 'title4', 'body4', ''),
	(16, 'title4', 'body4', ''),
	(17, 'title4', 'body4', ''),
	(18, 'title4', 'body4', ''),
	(19, 'title4', 'body4', ''),
	(20, 'title4', 'body4', ''),
	(21, 'title4', 'body4', ''),
	(22, 'title4', 'body4', ''),
	(23, 'title4', 'body4', ''),
	(24, 'title4', 'body4', ''),
	(25, 'title4', 'body4', ''),
	(26, 'title4', 'body4', ''),
	(27, 'title4', 'body4', ''),
	(28, 'title4', 'body4', ''),
	(29, 'logical', 'end', 'Zambia');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
