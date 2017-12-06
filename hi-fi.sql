-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 06. 10 2017 kl. 10:36:32
-- Serverversion: 10.1.26-MariaDB
-- PHP-version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hi-fi`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `producent`
--

CREATE TABLE `producent` (
  `id` int(11) NOT NULL,
  `navn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `producent`
--

INSERT INTO `producent` (`id`, `navn`) VALUES
(1, 'Creek '),
(2, 'EXP'),
(3, 'Exposure'),
(4, 'Parasound'),
(5, 'Manley'),
(6, 'Project'),
(7, 'Bosendorfer'),
(8, 'Epos'),
(9, 'Harbeth'),
(10, 'Jolida');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `navn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `type`
--

INSERT INTO `type` (`id`, `navn`) VALUES
(1, 'CD afspillere'),
(2, 'DVD afspillere '),
(3, 'effekt forstærkere'),
(4, 'forforstærker'),
(5, 'højtaler'),
(6, 'int forstærkere'),
(7, 'Pladespillere '),
(8, 'Rørforstærker');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `udstyr`
--

CREATE TABLE `udstyr` (
  `id` int(11) NOT NULL,
  `navn` varchar(30) NOT NULL,
  `pris` int(11) NOT NULL,
  `varenr` int(11) NOT NULL,
  `fk_producent` int(11) NOT NULL,
  `fk_type` int(11) NOT NULL,
  `billede` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `udstyr`
--

INSERT INTO `udstyr` (`id`, `navn`, `pris`, `varenr`, `fk_producent`, `fk_type`, `billede`) VALUES
(1, 'Classic CD afspiller', 500, 1, 1, 1, 'creek_classic_cd.jpg'),
(2, 'Destiny CD Afspiller', 700, 2, 1, 1, 'creek_Destiny_CD.jpg'),
(5, 'Evo CD afspiller', 450, 3, 1, 1, 'creek_evo_cd.jpg'),
(6, 'EXP 2010S CD afspiller', 650, 4, 2, 1, 'Exp_2010S_CD.gif'),
(7, 'Creek Classic', 450, 5, 1, 2, 'creek_classic.jpg'),
(8, 'Exposure 2010S', 650, 6, 3, 2, 'exposure_2010S.jpg'),
(9, 'Parasound D200', 700, 7, 4, 2, 'parasound_d200.jpg'),
(10, 'Parasound Halo D3', 800, 8, 4, 2, 'parasound_halod3.jpg'),
(14, 'Manley Mahi', 550, 9, 5, 3, 'manley_mahi.jpg'),
(15, ' Manley Neoclassic c300b', 700, 10, 5, 3, 'manley_neoclassic300b.jpg'),
(16, 'Manley Snapper ', 600, 11, 5, 3, 'manley_snapper.jpg'),
(17, 'Parasound Halo a23', 500, 12, 4, 3, 'parasound_haloa23.jpg'),
(18, 'Creek OBH 22 Passive Preamp', 400, 13, 1, 4, 'Creek_OBH_22_Passive_Preamp.jpg'),
(19, 'Parasound Classic c7100', 500, 14, 4, 4, 'parasound_classic7100.jpg'),
(20, 'Parasound Halo p3', 450, 15, 4, 4, 'parasound_halop3.jpg'),
(21, 'Project Prebox', 350, 16, 6, 4, 'Project_prebox.jpg'),
(22, 'Bosendorfer VCS wall', 850, 17, 7, 5, 'boesendorfer_vcs_wall.gif'),
(23, 'Epos m5', 700, 18, 8, 5, 'epos_m5.gif'),
(24, 'Harbeth hl7es2', 750, 19, 9, 5, 'harbeth_hl7es2.jpg'),
(25, 'Harbeth Monitor 30', 700, 20, 9, 5, 'harbeth_monitor30.jpg'),
(26, 'Harbeth p3es2', 750, 21, 9, 5, 'harbeth_p3es2.jpg'),
(27, 'Creek a50I', 900, 22, 1, 6, 'creek_a50I.jpg'),
(28, 'Creek Classic 5350SE', 750, 23, 1, 6, 'creek_classic5350SE.jpg'),
(29, 'Creek Destiny Amp', 800, 24, 1, 6, 'creek_destinyamp.jpg'),
(30, 'Manley Snapper ', 700, 25, 5, 6, 'manley_snapper.jpg'),
(31, 'Manley Stingray', 900, 26, 5, 6, 'Manley_Stingray.jpg'),
(32, 'Project Debut 3 Blue', 800, 26, 6, 7, 'Pro_ject_Debut_3_bl.jpg'),
(33, 'Project Debut 3 Red', 800, 27, 6, 7, 'Pro_ject_Debut_III_red_1.jpg'),
(34, 'Project Debut Yellow', 800, 28, 6, 7, 'Pro_ject_Debut_III_yellow_1.jpg'),
(35, 'Project rpm 5', 600, 29, 6, 7, 'Pro_ject_rpm_5.jpg'),
(36, 'Project rpm 10', 850, 30, 6, 7, 'Pro_ject_rpm10.jpg'),
(37, 'Jolida JD102b', 850, 26, 10, 8, 'jolida_JD102b.jpg'),
(38, 'Jolida JD202a', 850, 27, 10, 8, 'jolida_JD202a.jpg'),
(39, 'Jolida JD300b', 850, 28, 10, 8, 'jolida_JD300b.jpg'),
(40, 'Jolida JD302b', 850, 29, 10, 8, 'jolida_JD302b.jpg'),
(41, 'Jolida JD502b', 850, 30, 10, 8, 'jolida_JD502b.jpg ');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `producent`
--
ALTER TABLE `producent`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `udstyr`
--
ALTER TABLE `udstyr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producent` (`fk_producent`),
  ADD KEY `fk_type` (`fk_type`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `producent`
--
ALTER TABLE `producent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tilføj AUTO_INCREMENT i tabel `udstyr`
--
ALTER TABLE `udstyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `udstyr`
--
ALTER TABLE `udstyr`
  ADD CONSTRAINT `udstyr_ibfk_1` FOREIGN KEY (`fk_producent`) REFERENCES `producent` (`id`),
  ADD CONSTRAINT `udstyr_ibfk_2` FOREIGN KEY (`fk_type`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
