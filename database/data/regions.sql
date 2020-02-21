-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 21 feb 2020 om 09:16
-- Serverversie: 5.7.26
-- PHP-versie: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `persona_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `province_references` varchar(14) NOT NULL DEFAULT '-' COMMENT 'see table ''provinces''',
  `region_description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `regions`
--

INSERT INTO `regions` (`id`, `province_references`, `region_description`) VALUES
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

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
