-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 16 feb 2020 om 16:19
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
-- Database: `persona`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `provinces_id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(50) NOT NULL,
  `province_reference` char(2) NOT NULL,
  PRIMARY KEY (`provinces_id`),
  KEY `provincie_id` (`provinces_id`),
  KEY `provincie_verwijzing` (`province_reference`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `provinces`
--

INSERT INTO `provinces` (`provinces_id`, `province`, `province_reference`) VALUES
(1, 'Friesland', 'A'),
(2, 'Groningen', 'B'),
(3, 'Drenthe', 'C'),
(4, 'Overijsel', 'D'),
(5, 'Gelderland', 'E'),
(6, 'Limburg', 'F'),
(7, 'Noord-Brabant', 'G'),
(8, 'Zeeland', 'H'),
(9, 'Zuid-Holland', 'I'),
(10, 'Utrecht', 'J'),
(11, 'Flevoland', 'K'),
(12, 'Noord-Holland', 'L'),
(13, 'nog niet opgegeven', '-');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
