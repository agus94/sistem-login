-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2019 at 04:25 PM
-- Server version: 10.1.40-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `name`, `email`, `image`, `password`, `id_role`, `is_active`, `date_created`) VALUES
(1, 'Nur Achmad Agus Ismail', 'agusismail94@gmail.com', 'default.jpg', '$2y$10$VVPJexv2.DRYy.OI1ZNoiereMplIHeK.xQ4Ym.W766V0fENPUsARO', 2, 0, 1564728402),
(3, 'fiqih', 'fiqih@kokola.co.id', 'default.jpg', '$2y$10$Tlh9seplYp9jDVzzIdB.zun3CkfvO6OUDcQgS2c5ih4cXHtqAeUrC', 2, 1, 1564729075),
(4, 'yuli', 'yuli@yahoo.co.id', 'default.jpg', '$2y$10$eApyMc0SnSYeFE7AacPmKe1ETg1.Knt1IoOgAivzj0PhgBZQMreQC', 2, 1, 1564729186),
(5, 'sandi', 'sandi@kokola.co.id', 'default.jpg', '$2y$10$VCd6V5zYTf95T4N5gCBoP.xNg90Lib2ZrGu/6dstK9Zv5xhfXad/O', 2, 1, 1564729312);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user-role`
--

CREATE TABLE `tb_user-role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user-role`
--

INSERT INTO `tb_user-role` (`id_role`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_user-role`
--
ALTER TABLE `tb_user-role`
  ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_user-role`
--
ALTER TABLE `tb_user-role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
