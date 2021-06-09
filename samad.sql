-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 07:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin12345', '28-01-2021 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2021-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2021-01-07 08:02:58', 0, 1, ''),
(3, 'General Physician', 3, 2, 1200, '2021-01-23', '22:04', '2021-01-22 19:15:38', 1, 1, NULL),
(4, 'Demo test', 7, 2, 200, '2021-01-25', '22:21', '2021-01-22 19:21:22', 1, 0, NULL),
(5, 'General Physician', 6, 2, 2500, '2021-02-08', '12:10', '2021-02-06 09:07:59', 1, 1, NULL),
(6, 'Ear-Nose-Throat (Ent) Specialist', 10, 9, 2300, '2021-05-22', '02:01', '2021-05-20 11:01:34', 1, 1, NULL),
(7, 'Ear-Nose-Throat (Ent) Specialist', 10, 9, 2300, '2021-05-20', '02:05', '2021-05-20 11:02:19', 1, 1, NULL),
(8, 'Ear-Nose-Throat (Ent) Specialist', 9, 9, 2300, '2021-05-22', '02:05', '2021-05-20 11:03:35', 0, 1, NULL),
(9, 'Ear-Nose-Throat (Ent) Specialist', 9, 10, 2300, '2021-05-22', '02:05', '2021-05-20 11:05:40', 1, 0, NULL),
(10, 'Demo test', 11, 14, 3000, '2021-05-28', '20:00', '2021-05-26 12:13:02', 1, 0, NULL),
(11, 'Demo test', 11, 23, 3000, '2021-05-27', '06:50', '2021-06-01 09:04:07', 1, 1, NULL),
(12, 'Ear-Nose-Throat (Ent) Specialist', 9, 18, 2300, '2021-06-10', '04:10', '2021-06-01 09:14:22', 0, 1, NULL),
(13, 'Ear-Nose-Throat (Ent) Specialist', 9, 1, 2300, '2021-06-19', '00:20', '2021-06-01 09:18:00', 0, 1, NULL),
(14, 'Ear-Nose-Throat (Ent) Specialist', 9, 1, 2300, '2021-06-12', '12:23', '2021-06-01 09:19:42', 1, 1, NULL),
(15, 'Ear-Nose-Throat (Ent) Specialist', 9, 18, 2300, '2021-06-26', '00:23', '2021-06-01 09:21:07', 1, 0, NULL),
(16, 'Ear-Nose-Throat (Ent) Specialist', 9, 18, 2300, '2021-06-26', '12:32', '2021-06-01 09:27:56', 1, 0, NULL),
(17, 'Ear-Nose-Throat (Ent) Specialist', 9, 18, 2300, '2021-06-25', '12:40', '2021-06-01 09:36:07', 0, 1, NULL),
(18, 'Ear-Nose-Throat (Ent) Specialist', 9, 18, 2300, '2021-06-26', '00:40', '2021-06-01 09:38:43', 1, 1, NULL),
(19, 'Ear-Nose-Throat (Ent) Specialist', 9, 18, 2300, '2021-06-26', '13:13', '2021-06-01 10:11:00', 1, 1, NULL),
(20, 'Dentist', 12, 12, 3600, '2021-06-17', '13:25', '2021-06-01 10:22:19', 1, 1, NULL),
(21, 'Dentist', 12, 18, 3600, '2021-06-26', '13:27', '2021-06-01 10:22:45', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Doctor John Doe ', 'Thika', '500', 8285703354, 'doctor1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2021-01-09 06:25:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Doctor James Smith', 'Nairobi', '600', 2147483647, 'doctor2@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-01-09 06:51:51', ''),
(3, 'General Physician', 'Doctor Jane Doe', 'Nakuru', '1200', 8523699999, 'doctor3@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-01-17 07:43:35', ''),
(4, 'Homeopath', 'Doctor Nameless', 'Thika', '700', 25668888, 'doctor4@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-01-17 07:45:09', ''),
(5, 'Ayurveda', 'Doctor Smith', 'Thika', '8050', 442166644646, 'doctor5@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-01-17 07:47:07', ''),
(6, 'General Physician', 'Amrita', 'Nairobi', '2500', 45497964, 'doctor6@test.com', 'f925916e2754e5e03f75dd58a5733251', '2021-01-17 07:52:50', ''),
(8, 'Dermatologist', 'Ahmed ', 'Thika', '1000', 1236454578, 'doctor@test.com', '64dba10fd924679dcefccdf338abb77e', '2021-02-08 05:57:12', NULL),
(9, 'Ear-Nose-Throat (Ent) Specialist', 'Olala', 'Thika', '2300', 716311660, 'olalavictor01@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-05-20 10:56:47', NULL),
(11, 'Demo test', 'Vic', 'Thika', '3000', 716311660, 'olalavictor01@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2021-05-26 12:12:28', NULL),
(12, 'Dentist', 'Maygen', 'Thika', '3600', 4567890, 'maygen@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2021-06-01 10:20:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:55', '01-06-2021 02:50:34 PM', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:05:54', '07-01-2017 01:36:28 PM', 1),
(10, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 10:57:15', '20-05-2021 04:32:58 PM', 1),
(11, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 11:03:16', '', 1),
(12, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 11:05:53', '', 1),
(13, 11, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 12:14:34', '', 1),
(14, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:22:20', '', 1),
(15, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:35:12', '28-05-2021 09:07:43 PM', 1),
(16, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:37:54', '28-05-2021 09:11:40 PM', 1),
(17, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:51:16', '', 1),
(18, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 16:04:51', '', 1),
(19, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 22:47:02', '', 1),
(20, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 06:54:08', '', 1),
(21, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 06:58:20', '', 1),
(22, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:04:58', '01-06-2021 02:35:07 PM', 1),
(23, 11, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:06:08', '', 1),
(24, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:14:55', '', 1),
(25, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:20:12', '', 1),
(26, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:21:19', '', 1),
(27, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:29:43', '', 1),
(28, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:31:14', '', 1),
(29, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:35:33', '', 1),
(30, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:36:20', '', 1),
(31, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 10:11:56', '', 1),
(32, 12, 'maygen@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 10:22:05', '', 1),
(33, 12, 'maygen@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 10:23:14', '', 1),
(34, 12, 'maygen@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 10:30:07', '01-06-2021 04:00:17 PM', 1),
(35, 9, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-04 21:37:10', '05-06-2021 03:07:26 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2021-01-28 06:37:25', ''),
(2, 'General Physician', '2021-01-28 06:38:12', ''),
(3, 'Dermatologist', '2021-01-28 06:38:48', ''),
(4, 'Homeopath', '2021-01-28 06:39:26', ''),
(5, 'Ayurveda', '2021-01-28 06:39:51', ''),
(6, 'Dentist', '2021-01-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2021-01-28 06:41:18', ''),
(9, 'Demo test', '2021-01-28 07:37:39', '28-01-2021 01:28:42 PM'),
(10, 'Bones Specialist demo', '2021-02-07 08:07:53', '07-02-2021 01:38:04 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2021-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2021-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2021-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2021-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-07 07:57:18', '06-02-2021 02:41:10 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2021-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 0, 'test1', 0x3a3a3100000000000000000000000000, '2021-05-20 10:50:37', '', 0),
(16, 0, 'test1', 0x3a3a3100000000000000000000000000, '2021-05-20 10:52:27', '', 0),
(17, 0, 'test2', 0x3a3a3100000000000000000000000000, '2021-05-20 10:52:47', '', 0),
(18, 0, 'test2', 0x3a3a3100000000000000000000000000, '2021-05-20 10:53:00', '', 0),
(19, 10, 'test7@mailinator.com', 0x3a3a3100000000000000000000000000, '2021-05-20 10:53:49', '', 1),
(20, 10, 'test7@mailinator.com', 0x3a3a3100000000000000000000000000, '2021-05-20 11:04:02', '20-05-2021 04:34:15 PM', 1),
(21, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 11:04:24', '', 0),
(22, 0, 'test3@mailinator.com', 0x3a3a3100000000000000000000000000, '2021-05-20 11:04:59', '', 0),
(23, 10, 'test7@mailinator.com', 0x3a3a3100000000000000000000000000, '2021-05-20 11:05:14', '', 1),
(24, 0, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 18:47:58', '', 0),
(25, 0, 'test11', 0x3a3a3100000000000000000000000000, '2021-05-22 18:48:25', '', 0),
(26, 0, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 18:48:44', '', 0),
(27, 11, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 18:49:58', '27-05-2021 07:07:57 PM', 1),
(28, 0, '4567890', 0x3a3a3100000000000000000000000000, '2021-05-26 11:30:57', '', 0),
(29, 0, 'Olala', 0x3a3a3100000000000000000000000000, '2021-05-26 11:31:08', '', 0),
(30, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 12:01:11', '', 0),
(31, 0, '34567890', 0x3a3a3100000000000000000000000000, '2021-05-26 12:01:33', '', 0),
(32, 0, 'Godwin', 0x3a3a3100000000000000000000000000, '2021-05-26 12:11:00', '', 0),
(33, 14, 'olala01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 12:11:14', '', 1),
(34, 12, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 13:41:38', '27-05-2021 07:11:42 PM', 1),
(35, 0, 'john', 0x3a3a3100000000000000000000000000, '2021-05-27 13:51:07', '', 0),
(36, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 13:51:16', '', 0),
(37, 12, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 13:51:25', '27-05-2021 07:21:28 PM', 1),
(38, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 14:05:03', '', 0),
(39, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 14:05:20', '', 1),
(40, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:22:46', '', 0),
(41, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:22:59', '', 1),
(42, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:54:23', '', 0),
(43, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 15:55:38', '', 1),
(44, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 19:11:56', '', 0),
(45, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 19:12:07', '', 1),
(46, 0, 'olalatest@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 22:43:48', '', 0),
(47, 0, 'olala01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 22:43:58', '', 0),
(48, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 22:44:24', '01-06-2021 04:14:42 AM', 1),
(49, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 22:48:58', '01-06-2021 12:13:17 PM', 1),
(50, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 06:54:37', '', 1),
(51, 0, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 06:59:34', '', 0),
(52, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 06:59:42', '01-06-2021 12:33:04 PM', 1),
(53, 23, 'brysonminodi@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:00:22', '', 1),
(54, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:04:50', '', 0),
(55, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:13:14', '', 0),
(56, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:13:22', '', 1),
(57, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:20:44', '', 1),
(58, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:27:29', '', 1),
(59, 0, 'olalavictor01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:31:33', '', 0),
(60, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:31:44', '', 1),
(61, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:35:45', '', 1),
(62, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 09:36:58', '01-06-2021 03:13:49 PM', 1),
(63, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 10:09:58', '', 1),
(64, 18, 'test01@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-01 10:22:31', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(18, 'olala', 'Thika', 'Nairobi', 'male', 'test01@gmail.com', '123456', '2021-05-27 13:56:29', NULL),
(19, 'test', 'test', 'test', 'female', 'olalatest@gmail.com', '12345', '2021-05-27 13:57:03', NULL),
(20, 'Victor Olala', '44', 'Ndhiwa', '', 'olalavictor01@gmail.com', '345678', '2021-05-27 14:00:10', NULL),
(21, 'Victor Olala', '44', 'Ndhiwa', '', 'olalavictor01@gmail.com', '345678', '2021-05-27 14:00:29', NULL),
(22, 'test', 'test', 'test', 'female', 'olalatest@gmail.com', '12345', '2021-05-27 14:01:04', NULL),
(23, 'yusuf', 'ngavi', 'lolwe', 'male', 'brysonminodi@gmail.com', '123000', '2021-06-01 08:59:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
