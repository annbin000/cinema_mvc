-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql57
-- Generation Time: Jul 29, 2019 at 06:45 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_films`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `surname`, `dob`) VALUES
(1, 'Brad', 'Pitt', '1940-01-11'),
(2, 'Angelina', 'Pitt', '1955-02-22'),
(3, 'Leonardo', 'DiCaprio', '1960-03-21'),
(4, 'Jennifer', 'Lopez', '1965-04-15'),
(5, 'Jennifer', 'Aniston', '1970-05-17'),
(6, 'Mila', 'Kunis', '1975-06-11'),
(7, 'Johnny', 'Depp', '1980-01-11'),
(8, 'Jason', 'Statham', '1985-01-11'),
(9, 'Steven', 'Spielberg', '1990-01-11'),
(10, 'Scarlett', 'Johansson', '1995-01-11'),
(11, 'Julia', 'Roberts', '2000-01-11'),
(12, 'Gwyneth', 'Paltrow', '2001-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `came_out`
--

CREATE TABLE `came_out` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `cinema_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `came_out`
--

INSERT INTO `came_out` (`id`, `film_id`, `cinema_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE `cinema` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`id`, `name`) VALUES
(1, 'Multiplex'),
(2, 'Multiplex2'),
(3, 'Salut');

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `producer` varchar(100) NOT NULL,
  `relese` date NOT NULL,
  `budget` bigint(20) NOT NULL,
  `box_office` bigint(20) NOT NULL,
  `running_time` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `name`, `producer`, `relese`, `budget`, `box_office`, `running_time`, `genre`, `studio_id`) VALUES
(1, 'War Machine', 'David Michod', '2015-01-15', 50000000, 150000000, 135, 1, 1),
(2, 'The Lost City of Z', 'Angelina Jolie', '2012-01-15', 30000000, 500000000, 123, 2, 2),
(3, 'Moonlight', 'Mark Neale', '2011-01-15', 200000000, 400000000, 123, 1, 2),
(4, 'The Big Short', 'Rupert Goold', '2012-01-15', 300000000, 900000000, 234, 3, 1),
(5, 'World War Z', 'Ava DuVernay', '2013-01-15', 40000000, 900000000, 123, 3, 3),
(6, 'Kick-Ass 2', 'David Ayer', '2014-01-15', 12000000, 788000000, 145, 2, 4),
(7, '12 Years a Slave', 'Elliott Lester', '2000-01-15', 44000000, 678000000, 143, 4, 3),
(8, 'The Normal Heart', 'Ryan Murphy', '2002-01-15', 55000000, 567000000, 145, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `film_genres`
--

CREATE TABLE `film_genres` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film_genres`
--

INSERT INTO `film_genres` (`id`, `film_id`, `genre_id`) VALUES
(3, 1, 2),
(4, 1, 1),
(5, 1, 3),
(6, 2, 3),
(7, 2, 5),
(8, 2, 2),
(9, 3, 1),
(10, 3, 2),
(11, 3, 3),
(12, 4, 2),
(13, 4, 1),
(14, 5, 2),
(15, 5, 1),
(16, 5, 3),
(17, 6, 2),
(18, 6, 5),
(19, 6, 1),
(20, 7, 1),
(21, 7, 2),
(22, 7, 3),
(23, 7, 4),
(24, 8, 2),
(25, 8, 5),
(26, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `film_genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `film_genre`) VALUES
(1, 'Western'),
(2, 'Gangster'),
(3, 'Detective'),
(4, 'Drama'),
(5, 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `actor_id`, `film_id`, `amount`) VALUES
(1, 1, 5, 120000000),
(2, 3, 2, 110000000),
(3, 3, 3, 13000000),
(4, 4, 4, 15000000),
(5, 5, 5, 16000000),
(6, 6, 4, 170000000),
(7, 7, 3, 180000000),
(8, 8, 2, 19000000),
(9, 9, 1, 122000000),
(10, 1, 4, 115600000),
(11, 1, 4, 115600000);

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `foundation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studios`
--

INSERT INTO `studios` (`id`, `name`, `foundation`) VALUES
(1, 'Marvel', '1975-01-11'),
(2, 'DC', '1980-01-11'),
(3, 'Disney', '1985-01-11'),
(4, 'Eshekakayatohernya', '1990-01-11'),
(5, 'Tojeeshekakayatohernya', '1995-01-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `came_out`
--
ALTER TABLE `came_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `came_out_fk0` (`film_id`),
  ADD KEY `came_out_fk1` (`cinema_id`);

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `films_fk0` (`studio_id`);

--
-- Indexes for table `film_genres`
--
ALTER TABLE `film_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_genres_fk0` (`film_id`),
  ADD KEY `film_genres_fk1` (`genre_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_fk0` (`actor_id`),
  ADD KEY `payments_fk1` (`film_id`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `came_out`
--
ALTER TABLE `came_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cinema`
--
ALTER TABLE `cinema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `film_genres`
--
ALTER TABLE `film_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studios`
--
ALTER TABLE `studios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `came_out`
--
ALTER TABLE `came_out`
  ADD CONSTRAINT `came_out_fk0` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `came_out_fk1` FOREIGN KEY (`cinema_id`) REFERENCES `cinema` (`id`);

--
-- Constraints for table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_fk0` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`);

--
-- Constraints for table `film_genres`
--
ALTER TABLE `film_genres`
  ADD CONSTRAINT `film_genres_fk0` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `film_genres_fk1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_fk0` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `payments_fk1` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
