-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 16 feb 2020 om 23:31
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
-- Tabelstructuur voor tabel `brand_types`
--

DROP TABLE IF EXISTS `brand_types`;
CREATE TABLE IF NOT EXISTS `brand_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_description_nl` varchar(50) NOT NULL,
  `type_description_en` varchar(50) NOT NULL,
  `type_samples` varchar(100) NOT NULL,
  `long_description_nl` varchar(300) NOT NULL,
  `long_description_en` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `brand_types`
--

INSERT INTO `brand_types` (`id`, `type_description_nl`, `type_description_en`, `type_samples`, `long_description_nl`, `long_description_en`) VALUES
(1, 'oprechtheid', 'sincerity', 'fair-trade, national geographic, green peace', 'familie-georienteerd, kleine stad, down-to-earth, oprecht, eerlijk, echt, orgineel, gezond, vrolijk, sentimenteel, vriendelijk', 'family-oriented, small-town, down-to-earth, sincere, honest, real, original, wholesome, cheerful, sentimental, friendly'),
(2, 'opwinding', 'excitement ', 'mc-donalds, pathe, efteling', 'trendy, gedurfd, opwindend, cool, levendig, jong, uniek, fantasierijk, up-to-date, onafhankelijk, eigentijds', 'trendy, daring, exciting, cool, spirited, young, unique, imaginative, up-to-date, independent, contemporary'),
(3, 'bekwaamheid', 'competence', 'intel,volvo', 'betrouwbaar, hardwerkend, veilig, intelligent, technisch, zakelijk, succesvol, leider, zelfvertrouwen', 'reliable, hard-working, secure, intelligent, technical, corporate, successful, leader, confident'),
(4, 'raffinement', 'sophistication ', 'chanel, rolex', 'upper-class, glamoureus, knap, charmant, vrouwelijk, glad', 'upper-class, glamorous, good-looking, charming, feminine, smooth'),
(5, 'robuustheid', 'ruggedness ', 'land rover, outdoor', 'outdoor, mannelijk, westers, onverzettelijk, ruw, ruig', 'outdoorsy, masculine, western, tough, rugged');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
