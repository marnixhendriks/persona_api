-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 21 feb 2020 om 09:14
-- Serverversie: 5.7.26
-- PHP-versie: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `persona_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `province` varchar(50) NOT NULL,
  `province_reference` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `provinces`
--

INSERT INTO `provinces` (`id`, `province`, `province_reference`) VALUES
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

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
