-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 05:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upload_image`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `path` text NOT NULL,
  `confidence` text DEFAULT NULL,
  `result` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `confidence`, `result`) VALUES
(1, 'images/05-07-2024-1720176382-58117.jpg', NULL, NULL),
(2, 'images/05-07-2024-1720176964-82585.jpg', NULL, NULL),
(3, 'images/05-07-2024-1720177111-53293.jpg', NULL, NULL),
(4, 'images/05-07-2024-1720177116-14938.jpg', NULL, NULL),
(5, 'images/05-07-2024-1720177656-30864.jpg', NULL, NULL),
(6, 'images/05-07-2024-1720177911-46553.jpg', NULL, NULL),
(7, 'images/05-07-2024-1720178347-81161.jpg', NULL, NULL),
(8, 'images/05-07-2024-1720178379-96677.jpg', NULL, NULL),
(9, 'images/05-07-2024-1720178518-55310.jpg', NULL, NULL),
(10, 'images/05-07-2024-1720178715-38654.jpg', NULL, NULL),
(11, 'images/05-07-2024-1720178741-57217.jpg', NULL, NULL),
(12, 'images/05-07-2024-1720178791-39461.jpg', NULL, NULL),
(13, 'images/05-07-2024-1720180818-77354.jpg', '0', NULL),
(14, 'images/05-07-2024-1720180975-44069.jpg', '0', NULL),
(15, 'images/05-07-2024-1720181122-37069.jpg', '0', NULL),
(16, 'images/05-07-2024-1720181148-56861.jpg', '0', NULL),
(17, 'images/05-07-2024-1720181187-93308.jpg', '0', NULL),
(18, 'images/05-07-2024-1720181399-23975.jpg', '0', NULL),
(19, 'images/05-07-2024-1720181595-89862.jpg', '0', NULL),
(20, 'images/05-07-2024-1720182001-81055.jpg', '0', NULL),
(21, 'images/05-07-2024-1720182039-52956.jpg', '0', NULL),
(22, 'images/05-07-2024-1720183664-55998.jpg', '0', NULL),
(23, 'images/05-07-2024-1720184117-77019.jpg', '0', NULL),
(24, 'images/05-07-2024-1720184147-82812.jpg', '0', NULL),
(25, 'images/05-07-2024-1720185954-95824.jpg', '0', NULL),
(26, 'images/05-07-2024-1720186496-37869.jpg', 'Oval', NULL),
(27, 'images/05-07-2024-1720186505-94347.jpg', 'Oval', NULL),
(28, 'images/05-07-2024-1720186511-63083.jpg', 'Oval', NULL),
(29, 'images/05-07-2024-1720186515-21207.jpg', 'Oval', NULL),
(30, 'images/05-07-2024-1720187664-22517.jpg', '99.5%', NULL),
(31, 'images/05-07-2024-1720190160-77751.jpg', '93.3%', 'Round'),
(32, 'images/05-07-2024-1720191246-13060.jpg', '98.7%', 'Oval'),
(33, 'images/05-07-2024-1720191694-87905.jpg', '100', 'Oblong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
