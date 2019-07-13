-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2019 at 01:04 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_boris_jankovic_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `street` varchar(50) NOT NULL,
  `house_nr` varchar(10) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `country` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `street`, `house_nr`, `zip`, `country`, `city`) VALUES
(1, 'Diagon Alley', '18a', '05350', 'United Kingdom', 'London'),
(2, 'Diagon Alley', '54b', '05350', 'United Kingdom', 'London'),
(3, 'Unknown', 'Unknown', 'Unknown', 'United Kingdom', 'London'),
(4, 'Glen Arbor Road', '24', '95005', 'USA', 'Ben lomond');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `author` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'book',
  `publish_date` date NOT NULL,
  `description` varchar(360) NOT NULL,
  `image` varchar(165) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'available',
  `isbn` varchar(25) NOT NULL,
  `fk_publisher` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `title`, `author`, `type`, `publish_date`, `description`, `image`, `status`, `isbn`, `fk_publisher`) VALUES
(1, 'Fantastic Beasts and where to Find them', ' Newt Scamander', 'book', '1927-03-19', 'Fantastic Beasts and Where to Find Them is a book written by Newt Scamander detailing magizoology and describing magical creatures.Unicorns', 'https://vignette.wikia.nocookie.net/harrypotter/images/c/ce/FantasticBeastsProp.jpg/revision/latest/scale-to-width-down/350?cb=20140226062334', 'available', '978-3-16-148410-0', 1),
(3, 'Advanced Potion-Making ', 'Libatious Borage', 'book', '1940-07-12', 'Advanced Potion-Making is a Potions textbook used by Hogwarts for N.E.W.T level Potions classes and authored by Libatius Borage.', 'https://vignette.wikia.nocookie.net/harrypotter/images/b/b9/Advanced_Potion_Making..png/revision/latest/scale-to-width-down/323?cb=20150115070805', 'available', '978-3-16-148410-0', 2),
(4, 'The Standard Book of Spells, Grade 5', 'Miranda Goshawk', 'book', '1975-10-20', 'The Standard Book of Spells, Grade 5 was the fifth book in The Standard Book of Spells series, written by Miranda Goshawk.', 'https://vignette.wikia.nocookie.net/harrypotter/images/1/1b/StandardBookofSpells5.jpg/revision/latest/scale-to-width-down/312?cb=20111102124711', 'available', '978-3-16-148410-2', 2),
(5, 'Gilderoy Lockharts Guide to Household Pests', 'Gilderoy Lockhart', 'book', '1982-05-10', 'Gilderoy Lockharts Guide to Household Pests was one of the many books written by Gilderoy Lockhart. It included advice on how to get rid of household pests.', 'https://vignette.wikia.nocookie.net/harrypotter/images/e/e2/Gilderoy-lockharts-guide-to-household-pests-lrg.png/revision/latest?cb=20180708155205', 'unavailable', '978-3-16-148410-7', 3),
(6, 'Break with a Banshee', 'Gilderoy Lockhart', 'book', '1991-02-15', 'More tales from adventurer Gilderoy Lockhart.', 'https://vignette.wikia.nocookie.net/harrypotter/images/a/a0/BreakWithABanshee.png/revision/latest?cb=20180708160643', 'unavailable', '978-3-16-148410-5', 3),
(7, 'Gadding with Ghouls', 'Gilderoy Lockhart', 'book', '1990-08-01', 'Gilderoy Lockhart explains how he trapped a ghoul using only a tea-strainer', 'https://vignette.wikia.nocookie.net/harrypotter/images/0/03/GaddingWithGhouls.png/revision/latest?cb=20180708160829', 'available', '978-3-16-148410-4', 3),
(8, 'Magical Me', 'Gilderoy Lockhart', 'book', '1990-04-20', 'Gilderoy Lockharts autobiography, containing highlights from a life dedicated to the eradication of the Dark Forces', 'https://vignette.wikia.nocookie.net/harrypotter/images/0/03/Magical-me-lrg.png/revision/latest?cb=20120711063808', 'available', '978-3-16-145410-1', 3),
(9, 'Horcrux Hunt', '142 Staircases', 'Audio CD', '2005-12-01', '142 Staircases is a Wizard Rock band named after the 142 Staircases found in Hogwarts School of Wizardry', 'https://f4.bcbits.com/img/a3337280254_16.jpg', 'available', '978-2-16-148410-1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `size` varchar(10) NOT NULL DEFAULT 'small',
  `fk_address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `size`, `fk_address`) VALUES
(1, 'Obscurus Books', 'Medium', 1),
(2, 'Merge Books', 'small', 2),
(3, 'Gilderoy Lockhart', 'small', 3),
(4, '142 Staircases', 'small', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_publisher` (`fk_publisher`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD KEY `fk_address` (`fk_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_publisher`) REFERENCES `publisher` (`publisher_id`);

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`fk_address`) REFERENCES `address` (`address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
