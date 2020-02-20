-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 19 feb 2020 om 10:00
-- Serverversie: 10.4.10-MariaDB
-- PHP-versie: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `persona_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `regions_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_references` varchar(14) NOT NULL DEFAULT '-' COMMENT 'see table ''provinces''',
  `region_description` varchar(50) NOT NULL,
  PRIMARY KEY (`regions_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `regions`
--

INSERT INTO `regions` (`regions_id`, `province_references`, `region_description`) VALUES
(1, '-', 'all provinces'),
(2, 'ABC', 'Fr,Gr,Tw: upper north of Netherlands'),
(3, 'ABCDKL', 'Fr,Gr,Dr,Ov,Fl,NH: north of Netherlands'),
(4, 'EIJ', 'Gld,Ut,ZH, middle of Netherlands'),
(5, 'FGH', 'Lb,NB,Ze: south of Netherlands'),
(6, 'IJ', 'ZH,Ut: Randstad'),
(7, 'BC', 'Gr,Dr: north east of Netherlands'),
(8, 'DE', 'Gld,Ov: east of Netherlands'),
(9, 'EF', 'Gld, Lb: south east of Netherlands'),
(10, 'HI', 'Ze,ZH: south west of Netherlands'),
(11, 'AL', 'Fr,NH: north east of Netherlands'),
(12, 'A', 'Fr: province of Friesland');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
