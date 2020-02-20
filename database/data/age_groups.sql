-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 19 feb 2020 om 18:35
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
-- Tabelstructuur voor tabel `age_groups`
--

DROP TABLE IF EXISTS `age_groups`;
CREATE TABLE IF NOT EXISTS `age_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age_group` varchar(15) NOT NULL,
  `age_min` tinyint(4) NOT NULL DEFAULT 0,
  `age_max` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `age_groups`
--

INSERT INTO `age_groups` (`id`, `age_group`, `age_min`, `age_max`) VALUES
(1, 'alle leeftijden', 5, 90),
(2, '2-5', 2, 5),
(3, '3-11', 3, 11),
(4, '5-7', 5, 7),
(6, '5-45', 5, 45),
(8, '8-10', 8, 10),
(10, '10-13', 10, 13),
(11, '12+', 12, 90),
(12, '13-17', 13, 17),
(14, '18-24', 18, 24),
(16, '24-29', 24, 29),
(18, '18-65', 18, 65),
(21, '18+', 18, 90),
(24, '25-45', 25, 45),
(25, '30+', 30, 90),
(27, '38-65', 38, 65),
(28, '45+', 45, 90),
(30, '65+', 65, 90);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
