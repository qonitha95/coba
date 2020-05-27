-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 02:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemweblan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `kotaasal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `kotaasal`) VALUES
(1, 'Bogor'),
(2, 'Jakarta'),
(3, 'Kediri'),
(4, 'Klaten'),
(5, 'Semarang'),
(6, 'Sragen'),
(7, 'Sukoharjo'),
(8, 'Surabaya'),
(9, 'Surakarta'),
(10, 'Wonogiri');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Jenis_Kelamin` varchar(255) NOT NULL,
  `Kelas` varchar(255) NOT NULL,
  `Agama` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Password`, `Jenis_Kelamin`, `Kelas`, `Agama`, `Alamat`) VALUES
('M3118071', 'Qonitha', 'qonitha', 'Wanita', 'TIC', 'Islam', 'Solo'),
('M3118072', 'Raka', '123', 'Pria', 'TIC', 'Kong Hu Chu', 'Jakarta'),
('M3118073', 'Raja', '456', 'Pria', 'TIC', 'Hindu', 'Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa2`
--

CREATE TABLE `mahasiswa2` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `jk` varchar(255) NOT NULL,
  `tl` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `kotaasal` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `user` varchar(255) NOT NULL,
  `berkas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa2`
--

INSERT INTO `mahasiswa2` (`username`, `password`, `email`, `jk`, `tl`, `kelas`, `agama`, `kotaasal`, `alamat`, `user`, `berkas`) VALUES
('Andre', '123', 'andre@gmail.com', 'Laki-Laki', '2000-05-18', 'TI A', 'Kong Hu Chu', '', 'Jakarta', 'D3 Teknik Informatika', ''),
('Delisa', '123', 'delisa@gmail.com', 'Perempuan', '2000-05-02', 'TI B', 'Hindu', '', 'Surabaya', 'D3 Teknik Informatika', ''),
('hero123', '123', 'hero@gmail.com', 'Laki-Laki', '2000-04-05', 'TI B', 'Katholik', '', 'solo', 'D3 Teknik Informatika', ''),
('lalala', '123', 'lala@gmai.com', 'Perempuan', '2000-04-08', 'TI B', 'Katholik', '', 'Jakarta', 'D3 Teknik Informatika', 'logo-uns-biru.png'),
('lilili', '123', 'lili@gmail.com', 'Perempuan', '2000-05-28', 'TI C', 'Kong Hu Chu', 'Semarang', 'Semarang', 'D3 Teknik Informatika', 'logo-uns-biru.png'),
('nanana', '123', 'nana@gmail.com', 'Perempuan', '2000-05-09', 'TI C', 'Islam', 'Klaten', 'Klaten', 'D3 Teknik Informatika', 'logo-uns-biru.png'),
('qonitha95', '123', 'qonitha95@student.uns.ac.id', 'Perempuan', '2000-05-06', 'TI C', 'Islam', '', 'Tirtomoyo RT 06 RW VIII', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `status`) VALUES
('hero', 'f04af61b3f332afa0ceec786a42cd365', 'admin'),
('lala', '2e3817293fc275dbee74bd71ce6eb056', 'mahasiswa'),
('nana', '518d5f3401534f5c6c21977f12f60989', 'dosen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `mahasiswa2`
--
ALTER TABLE `mahasiswa2`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
