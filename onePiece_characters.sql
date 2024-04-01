-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2024 at 08:45 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onePiece_characters`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `epithet` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `character_image` varchar(255) NOT NULL,
  `affiliation` varchar(255) NOT NULL,
  `devil_fruit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `epithet`, `occupation`, `character_image`, `affiliation`, `devil_fruit`) VALUES
(1, 'MONkEY D LUFFY', 'Straw Hat', 'Captain', 'character_luffy.png', 'Straw Hat Pirates', 'Gum-Gum Fruit'),
(2, 'Nami', 'Cat Burglar', 'Navigator', 'character_nami.png', 'Straw Hat Pirates', ''),
(3, 'Roronoa Zoro', 'Pirate Hunter', 'Swordsman', 'character_zoro.png', 'Straw Hat Pirates', ''),
(4, 'Sanji', 'Black Leg', 'Cook', 'character_sanji.png', 'Straw Hat Pirates', ''),
(5, 'Usopp', 'King of Snipers', 'Sniper', 'character_usopp.png', 'Straw Hat Pirates', '');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `character_id` int(11) DEFAULT NULL,
  `bg_image` varchar(255) NOT NULL,
  `description_image` varchar(255) NOT NULL,
  `battle_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `character_id`, `bg_image`, `description_image`, `battle_image`) VALUES
(1, 1, 'character_luffy_bg.jpg', 'character_luffy_des.png', 'character_luffy_cap1.jpg'),
(2, 2, 'character_nami_bg.jpg', 'character_nami_des.png', 'character_nami_cap1.jpg'),
(3, 3, 'character_zoro_bg.jpg', 'character_zoro_des.png', 'character_zoro_cap1.jpg'),
(4, 4, 'character_sanji_bg.jpg', 'character_sanji_des.png', 'character_sanji_cap1.jpg'),
(5, 5, 'character_usopp_bg.jpg', 'character_usopp_des.png', 'character_usopp_cap1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
