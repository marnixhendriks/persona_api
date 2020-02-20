-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 19 feb 2020 om 09:59
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
-- Tabelstructuur voor tabel `names_female_names`
--

DROP TABLE IF EXISTS `names_female_names`;
CREATE TABLE IF NOT EXISTS `names_female_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year_start` mediumint(9) NOT NULL DEFAULT 1920,
  `year_end` mediumint(9) NOT NULL DEFAULT 2020,
  `firstname` varchar(20) NOT NULL,
  `fn_origin` char(2) NOT NULL DEFAULT 'NL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `names_female_names`
--

INSERT INTO `names_female_names` (`id`, `year_start`, `year_end`, `firstname`, `fn_origin`) VALUES
(175, 1985, 2100, 'Amber', 'NL'),
(176, 1920, 2100, 'Anna', 'NL'),
(177, 1934, 2100, 'Anne', 'NL'),
(178, 1968, 2100, 'Anouk', 'NL'),
(179, 1987, 2015, 'Britt', 'NL'),
(180, 1992, 2100, 'Demi', 'NL'),
(181, 1920, 2100, 'Emma', 'NL'),
(182, 1920, 2100, 'Eva', 'NL'),
(183, 1964, 2100, 'Femke', 'NL'),
(184, 1973, 2100, 'Fleur', 'NL'),
(185, 1977, 2100, 'Floor', 'NL'),
(186, 1960, 2100, 'Ilse', 'NL'),
(187, 1967, 2013, 'Ilja', 'NL'),
(188, 1996, 2100, 'Isa', 'NL'),
(189, 1920, 2100, 'Julia', 'NL'),
(190, 1926, 1987, 'Jannie', 'NL'),
(191, 1953, 2100, 'Laura', 'NL'),
(192, 1978, 2100, 'Lieke', 'NL'),
(193, 1980, 2100, 'Lisa', 'NL'),
(194, 1977, 2100, 'Lotte', 'NL'),
(195, 1972, 2100, 'Myrthe', 'NL'),
(196, 1970, 2100, 'Marit', 'NL'),
(197, 1972, 2100, 'Maud', 'NL'),
(198, 1966, 2016, 'Michelle', 'NL'),
(199, 1972, 2100, 'Naomi', 'NL'),
(200, 1979, 2100, 'Nina', 'NL'),
(201, 1996, 2100, 'Noa', 'NL'),
(202, 1985, 2100, 'Romy', 'NL'),
(203, 1986, 2100, 'Roos', 'NL'),
(204, 1976, 2100, 'Sanne', 'NL'),
(205, 1980, 2100, 'Sophie', 'NL'),
(206, 1965, 2009, 'Susan', 'NL'),
(207, 1956, 1994, 'Brigitte', 'NL'),
(208, 1920, 1998, 'Paula', 'NL'),
(209, 1946, 2000, 'Annemieke', 'NL'),
(210, 1938, 1999, 'Annemarie', 'NL'),
(211, 1991, 2100, 'Beau', 'NL'),
(212, 1959, 1996, 'Bianca', 'NL'),
(213, 1966, 2006, 'Chantal', 'NL'),
(214, 1966, 2008, 'Danielle', 'NL'),
(215, 1968, 1998, 'Daniella', 'NL'),
(216, 1962, 2002, 'Denise', 'NL'),
(217, 1983, 2100, 'Eline', 'NL'),
(218, 1930, 2100, 'Else', 'NL'),
(219, 1957, 2005, 'Esther', 'NL'),
(220, 1978, 2015, 'Eefje', 'NL'),
(221, 1961, 1999, 'Ilona', 'NL'),
(222, 1966, 2100, 'Iris', 'NL'),
(223, 1966, 2002, 'Jessica', 'NL'),
(224, 1920, 1973, 'Johanna', 'NL'),
(225, 1954, 1992, 'Jolanda', 'NL'),
(226, 1955, 2008, 'Joyce', 'NL'),
(227, 1955, 2005, 'Judith', 'NL'),
(228, 1947, 1997, 'Karin', 'NL'),
(229, 1978, 2002, 'Kelly', 'NL'),
(230, 1970, 2014, 'Kim', 'NL'),
(231, 1970, 2100, 'Lara', 'NL'),
(232, 1952, 2003, 'Linda', 'NL'),
(233, 1956, 1990, 'Liesbeth', 'NL'),
(234, 1985, 2100, 'Lorena', 'NL'),
(235, 1920, 2100, 'Louise', 'NL'),
(236, 1920, 2015, 'Maaike', 'NL'),
(237, 1966, 2008, 'Mandy', 'NL'),
(238, 1962, 2009, 'Manon', 'NL'),
(239, 1920, 1986, 'Maria', 'NL'),
(240, 1958, 2010, 'Marieke', 'NL'),
(241, 1963, 2000, 'Mariska', 'NL'),
(242, 1971, 2004, 'Marloes', 'NL'),
(243, 1976, 2012, 'Melissa', 'NL'),
(244, 1939, 1981, 'Magda', 'NL'),
(245, 1959, 1998, 'Miranda', 'NL'),
(246, 1950, 1995, 'Monique', 'NL'),
(247, 1965, 2009, 'Nathalie', 'NL'),
(248, 1959, 2002, 'Nicole', 'NL'),
(249, 1947, 1995, 'Patricia', 'NL'),
(250, 1970, 2007, 'Samantha', 'NL'),
(251, 1957, 1998, 'Sandra', 'NL'),
(252, 1972, 1996, 'Patty', 'NL'),
(253, 1946, 2004, 'Saskia', 'NL'),
(254, 1968, 2004, 'Sharon', 'NL'),
(255, 1969, 1999, 'Stephanie', 'NL'),
(256, 1962, 2010, 'Suzanne', 'NL'),
(257, 1969, 2100, 'Tessa', 'NL'),
(258, 1963, 2003, 'Wendy', 'NL'),
(259, 1964, 1997, 'Willeke', 'NL'),
(260, 1938, 1997, 'Yvonne', 'NL'),
(261, 1920, 1973, 'Aaltje', 'NL'),
(262, 1920, 1999, 'Adriana', 'NL'),
(263, 1920, 1995, 'Alida', 'NL'),
(264, 1920, 2100, 'Annemie', 'NL'),
(265, 1933, 1986, 'Ans', 'NL'),
(266, 1920, 1976, 'Antonia', 'NL'),
(267, 1961, 1994, 'Carolien', 'NL'),
(268, 1920, 2000, 'Catharina', 'NL'),
(269, 1920, 1997, 'Christina', 'NL'),
(270, 1920, 1977, 'Cornelia', 'NL'),
(271, 1920, 2100, 'Doortje', 'NL'),
(272, 1968, 1998, 'Dorien', 'NL'),
(273, 1920, 1994, 'Elisabeth', 'NL'),
(274, 1946, 2010, 'Els', 'NL'),
(275, 1920, 1959, 'Geertruida', 'NL'),
(276, 1920, 1971, 'Grietje', 'NL'),
(277, 1960, 1998, 'Hanneke', 'NL'),
(278, 1920, 1973, 'Helena', 'NL'),
(279, 1920, 1970, 'Hendrika', 'NL'),
(280, 1920, 1971, 'Jacoba', 'NL'),
(281, 1924, 1955, 'Janni', 'NL'),
(282, 1996, 2100, 'Lot', 'NL'),
(283, 1920, 1972, 'Margaretha', 'NL'),
(284, 1933, 2005, 'Margot', 'NL'),
(285, 1970, 2007, 'Meriam', 'NL'),
(286, 1964, 2002, 'Marlies', 'NL'),
(287, 1920, 1971, 'Neeltje', 'NL'),
(288, 1932, 1974, 'Nel', 'NL'),
(289, 1920, 1968, 'Petronella', 'NL'),
(290, 1940, 1964, 'Riet', 'NL'),
(291, 1940, 1962, 'Rietje', 'NL'),
(292, 1920, 1962, 'Stientje', 'NL'),
(293, 1920, 1970, 'Thea', 'NL'),
(294, 1940, 1970, 'Theodora', 'NL'),
(295, 1920, 1989, 'Trijntje', 'NL'),
(296, 1946, 1977, 'Trudy', 'NL'),
(297, 1932, 1962, 'Truus', 'NL'),
(298, 1932, 1974, 'Wil', 'NL'),
(299, 1953, 1993, 'Silvia', 'NL'),
(300, 1920, 1964, 'Wilhelmina', 'NL'),
(301, 1988, 2100, 'Bo', 'NL'),
(302, 1961, 1997, 'Heleen', 'NL'),
(303, 1976, 1990, 'Lies', 'NL'),
(304, 1925, 1975, 'Nellie', 'NL'),
(305, 1940, 1972, 'Ria', 'NL'),
(306, 1946, 1984, 'Wilma', 'NL'),
(307, 1920, 1985, 'Jenneke', 'NL'),
(308, 1976, 2100, 'Josje', 'NL'),
(309, 1953, 2003, 'Miriam', 'NL'),
(310, 1960, 2005, 'Paola', 'NL');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
