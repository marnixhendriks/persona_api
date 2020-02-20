-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 16 feb 2020 om 16:15
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
-- Tabelstructuur voor tabel `names_primary_schools`
--

DROP TABLE IF EXISTS `names_primary_schools`;
CREATE TABLE IF NOT EXISTS `names_primary_schools` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `names_primary_schools`
--

INSERT INTO `names_primary_schools` (`id`, `school_name`) VALUES
(1, 'basisschool De Fontein'),
(2, 'basisschool De Hoeven'),
(3, 'basisschool Het Schrijverke'),
(4, 'basisschool De Kraal'),
(5, 'basisschool De Groeiboom'),
(6, 'basisschool De Regenboog'),
(7, 'basisschool De Wegwijzer'),
(8, 'basisschool Het Kompas'),
(9, 'basisschool De Schakel'),
(10, 'basisschool Het Palet'),
(11, 'basisschool De Rank'),
(12, 'basisschool De Bron'),
(13, 'basisschool De Hoeksteen'),
(14, 'basisschool De Springplank'),
(15, 'basisschool De Ark'),
(16, 'basisschool De Triangel'),
(17, 'de Mariabasisschool'),
(18, 'de Willem Alexander basisschool'),
(19, 'basisschool Sint Jozef'),
(20, 'basisschool De Koppel'),
(21, 'De Kuyperschool'),
(22, 'basisschool De Peppel'),
(23, 'basisschool De Kameleon');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
