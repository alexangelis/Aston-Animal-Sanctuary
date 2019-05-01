-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2019 at 05:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astonanimalsanctuary`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `availability` int(11) NOT NULL,
  `registrar_id` int(11) NOT NULL,
  `validator_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `vaccinated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='In this table we keep all animal information';

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `date_of_birth`, `description`, `availability`, `registrar_id`, `validator_id`, `type`, `gender`, `vaccinated`) VALUES
(1, 'max', '2019-04-17', 'small, sweet, smart dog', 1, 1, 1, 1, 1, 1),
(2, 'ccccc', '2019-05-22', 'xxxxx', 0, 1, 1, 1, 1, 1),
(3, 'ccccc', '2019-05-22', 'xxxxx', 0, 1, 1, 1, 1, 1),
(4, 'ccccc', '2019-05-22', 'xxxxx', 0, 2, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `animal_pictures`
--

CREATE TABLE `animal_pictures` (
  `id_animal` int(11) NOT NULL,
  `id_picture` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='In this table we keep image filenames';

--
-- Dumping data for table `animal_pictures`
--

INSERT INTO `animal_pictures` (`id_animal`, `id_picture`, `filename`) VALUES
(1, 1, '1_1_pao2.png'),
(1, 2, '1_2_pao1.png'),
(1, 3, '1_3_pao1.png'),
(1, 4, '1_4_pao1.png'),
(1, 5, '1_5_pao2.png'),
(1, 6, '1_6_pao1.png'),
(1, 7, '1_7_pao2.png'),
(1, 8, '1_8_pao2.png'),
(1, 9, '1_9_pao2.png'),
(3, 1, '3_1_pao1.png');

-- --------------------------------------------------------

--
-- Table structure for table `animal_requests`
--

CREATE TABLE `animal_requests` (
  `id_user` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL,
  `staff_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='In this table we keep all adoption requests';

--
-- Dumping data for table `animal_requests`
--

INSERT INTO `animal_requests` (`id_user`, `id_animal`, `staff_answer`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `animal_type`
--

CREATE TABLE `animal_type` (
  `id` int(11) NOT NULL,
  `type` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='In this table we keep all animal types';

--
-- Dumping data for table `animal_type`
--

INSERT INTO `animal_type` (`id`, `type`) VALUES
(1, 'dog'),
(2, 'cat'),
(3, 'bird');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='In this table we keep all animal genders';

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  `telephone` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='In this table we keep all staff information';

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `password`, `name`, `email`, `telephone`) VALUES
(1, 'alex', 'alex', 'alex', 'alex', ''),
(2, 'nikos', 'nikos', 'nikozs', 'nikos', 'nikos');

-- --------------------------------------------------------

--
-- Table structure for table `staff_answer`
--

CREATE TABLE `staff_answer` (
  `id` int(11) NOT NULL,
  `staff_answer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff_answer`
--

INSERT INTO `staff_answer` (`id`, `staff_answer`) VALUES
(0, 'Pending'),
(1, 'Approved'),
(2, 'Denied');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `nickname` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `block` int(11) NOT NULL,
  `email` text NOT NULL,
  `telephone` text NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='In this table we keep all the user information';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nickname`, `date_of_birth`, `block`, `email`, `telephone`, `verified`) VALUES
(0, '0', '0', 'None', '0000-00-00', 0, '0', '0', 0),
(1, 'mikeda', '1234567', 'MikeD', '2013-05-06', 0, 'miked@gmail.com', '07765059556', 1),
(2, 'astonAnimalSanctuary', 'aggelis12345)(*&^', '', '0000-00-00', 0, '', '', 1),
(3, 'astonAnimalSanctuary', 'aggelis12345)(*&^', '', '0000-00-00', 0, '', '', 0),
(4, 'maria', 'maria', 'maria', '2019-04-04', 0, 'maria@maria.gr', 'mariaa', 1),
(5, 'john', '1234567', 'john2', '1996-04-30', 0, 'john2@gmail.com', '07765767785', 1),
(6, 'mmm', 'mmm', 'kostas', '2019-05-11', 0, 'aaa@aaa.gr', '6971659024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vaccinated`
--

CREATE TABLE `vaccinated` (
  `id` int(11) NOT NULL,
  `boolean` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='In this table we keep possible vaccination cases';

--
-- Dumping data for table `vaccinated`
--

INSERT INTO `vaccinated` (`id`, `boolean`) VALUES
(1, 'Yes'),
(2, 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrar_id` (`registrar_id`),
  ADD KEY `gender` (`gender`),
  ADD KEY `vaccinated` (`vaccinated`),
  ADD KEY `type` (`type`),
  ADD KEY `availability` (`availability`);

--
-- Indexes for table `animal_pictures`
--
ALTER TABLE `animal_pictures`
  ADD PRIMARY KEY (`id_animal`,`id_picture`);

--
-- Indexes for table `animal_requests`
--
ALTER TABLE `animal_requests`
  ADD PRIMARY KEY (`id_user`,`id_animal`),
  ADD KEY `id_animal` (`id_animal`),
  ADD KEY `staff_answer` (`staff_answer`);

--
-- Indexes for table `animal_type`
--
ALTER TABLE `animal_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_answer`
--
ALTER TABLE `staff_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccinated`
--
ALTER TABLE `vaccinated`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`registrar_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`registrar_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `animal_ibfk_3` FOREIGN KEY (`type`) REFERENCES `animal_type` (`id`),
  ADD CONSTRAINT `animal_ibfk_4` FOREIGN KEY (`gender`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `animal_ibfk_5` FOREIGN KEY (`vaccinated`) REFERENCES `vaccinated` (`id`),
  ADD CONSTRAINT `animal_ibfk_6` FOREIGN KEY (`type`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `animal_ibfk_7` FOREIGN KEY (`availability`) REFERENCES `user` (`id`);

--
-- Constraints for table `animal_requests`
--
ALTER TABLE `animal_requests`
  ADD CONSTRAINT `animal_requests_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `animal_requests_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `animal_requests_ibfk_3` FOREIGN KEY (`staff_answer`) REFERENCES `staff_answer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
