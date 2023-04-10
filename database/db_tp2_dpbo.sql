-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 02:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tp2_dpbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `idol_group`
--

CREATE TABLE `idol_group` (
  `NAMA_GROUP` varchar(50) NOT NULL,
  `FOTO_GROUP` varchar(255) NOT NULL,
  `KODE_GROUP` varchar(10) NOT NULL,
  `PASS_GROUP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `idol_group`
--

INSERT INTO `idol_group` (`NAMA_GROUP`, `FOTO_GROUP`, `KODE_GROUP`, `PASS_GROUP`) VALUES
('exo', 'src\\tp2\\images\\logoexo.jpg', 'exo', 'exo'),
('NewJeans', 'src\\tp2\\images\\logo_nj.jpg', 'nj', 'nj'),
('Red Velvet', 'src\\tp2\\images\\logo_rv.jpg', 'rv', 'rv');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID_MEMBER` int(11) NOT NULL,
  `KODE_GROUP` varchar(10) DEFAULT NULL,
  `NAMA_MEMBER` varchar(50) NOT NULL,
  `ROLE_MEMBER` varchar(50) NOT NULL,
  `USIA_MEMBER` int(11) NOT NULL,
  `FOTO_MEMBER` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID_MEMBER`, `KODE_GROUP`, `NAMA_MEMBER`, `ROLE_MEMBER`, `USIA_MEMBER`, `FOTO_MEMBER`) VALUES
(62, 'rv', 'wendy', 'vokalis', 30, 'src\\tp2\\images\\wendy1.jpg'),
(63, 'rv', 'seulgi', 'dancer', 30, 'src\\tp2\\images\\seulgi_rv.jpg'),
(64, 'rv', 'irene', 'rapper', 30, 'src\\tp2\\images\\irene_rv.jpg'),
(65, 'rv', 'joy', 'vokalis', 30, 'src\\tp2\\images\\joy_rv.jpg'),
(66, 'nj', 'Haerin', 'vokalis', 20, 'src\\tp2\\images\\haerin_nj.jpg'),
(67, 'exo', 'do', 'vokalis', 30, 'src\\tp2\\images\\do.jpg'),
(68, 'nj', 'Minji', 'Dancer', 20, 'src\\tp2\\images\\minji_nj.jpg'),
(69, 'nj', 'Hanni', 'vokalis', 20, 'src\\tp2\\images\\hanni_nj.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idol_group`
--
ALTER TABLE `idol_group`
  ADD PRIMARY KEY (`KODE_GROUP`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID_MEMBER`),
  ADD KEY `MEMILIKI_FK` (`KODE_GROUP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `ID_MEMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`KODE_GROUP`) REFERENCES `idol_group` (`KODE_GROUP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
