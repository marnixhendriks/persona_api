-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 16 feb 2020 om 16:20
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
-- Tabelstructuur voor tabel `profession_types`
--

DROP TABLE IF EXISTS `profession_types`;
CREATE TABLE IF NOT EXISTS `profession_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prof_type` varchar(3) NOT NULL,
  `description` text NOT NULL,
  `description_en` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `profession_types`
--

INSERT INTO `profession_types` (`id`, `prof_type`, `description`, `description_en`) VALUES
(2, 'BD', 'Bedienend personeel', 'Servicing employee'),
(3, 'BS', 'Beslisser', ''),
(4, 'CS', '', ''),
(5, 'CR', 'Creatief', 'Creative'),
(6, 'MA', 'Manager', 'Manager'),
(7, 'ME', 'Medisch', 'Medical'),
(8, 'SO', 'Sociaal begeleidend', 'Social'),
(9, 'ST', 'Student', 'Student'),
(10, 'SC', 'Basisschool', 'Primary school');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
