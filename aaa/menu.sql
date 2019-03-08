-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Pi 08.Mar 2019, 15:03
-- Verzia serveru: 10.1.38-MariaDB
-- Verzia PHP: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `kesjar`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '0 if menu is root level or menuid if this is child on any menu',
  `link` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 for disabled menu or 1 for enabled menu'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sťahujem dáta pre tabuľku `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `parent_id`, `link`, `status`) VALUES
(1, 'Domov', 0, '#home', '1'),
(2, 'Blbost 1', 0, '#web-dev', '1'),
(5, 'Blbost 2', 2, '#', '1'),
(6, 'Blbost 3', 2, '#', '1'),
(8, 'Nic', 5, '#electic-ip', '1'),
(9, 'Nic 2', 5, '#load-balancing', '1'),
(10, 'Nic 3', 5, '#cluster-indexes', '1'),
(11, 'Nic 4', 5, '#rds-db', '1'),
(12, 'Nic 5', 6, '#', '1'),
(13, 'Nic 6', 6, '#', '1'),
(14, 'Nic 7', 6, '#', '1'),
(21, 'Nic 8', 6, '#', '1');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
