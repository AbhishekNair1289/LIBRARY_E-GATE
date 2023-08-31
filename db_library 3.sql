-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 15, 2023 at 06:36 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_library`
--
CREATE DATABASE IF NOT EXISTS `db_library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_library`;

-- --------------------------------------------------------

--
-- Table structure for table `library_record`
--

CREATE TABLE IF NOT EXISTS `library_record` (
  `Sl No.` int(10) NOT NULL,
  `Roll No.` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Number of days` int(10) NOT NULL,
  `Total usage` int(10) NOT NULL,
  PRIMARY KEY (`Sl No.`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_record`
--

INSERT INTO `library_record` (`Sl No.`, `Roll No.`, `Name`, `Department`, `Number of days`, `Total usage`) VALUES
(1, '101', 'TOM', 'MATHS', 4, 10),
(2, '102', 'HARRY', 'ENGLISH', 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkinout`
--

CREATE TABLE IF NOT EXISTS `tbl_checkinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regno` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `year` varchar(11) NOT NULL,
  `design` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `checkintime` time NOT NULL,
  `checkouttime` time NOT NULL,
  `used` time NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_checkinout`
--

INSERT INTO `tbl_checkinout` (`id`, `regno`, `name`, `dept`, `year`, `design`, `date`, `checkintime`, `checkouttime`, `used`, `status`) VALUES
(1, 'KH.SC.P2MCA21006', 'Abhishek A Nair', 'MCA', '2021', 'Student', '2022-04-05', '14:46:33', '14:50:00', '00:00:00', 'CHECKEDIN'),
(2, 'KH.SC.P2MCA21006', 'Abhishek A Nair', 'MCA', '2021', 'Student', '2023-01-30', '13:47:21', '00:00:00', '00:00:00', ''),
(3, '40161019', 'Sibin', 'LIB', '2016', 'Teacher', '2023-01-30', '13:49:43', '00:00:00', '00:00:00', ''),
(4, '40161019', 'Sibin', 'LIB', '2016', 'Teacher', '2023-01-30', '13:49:47', '00:00:00', '00:00:00', ''),
(5, '40161019', 'Sibin', 'LIB', '2016', 'Teacher', '2023-01-30', '13:49:51', '00:00:00', '00:00:00', ''),
(6, 'KH.SC.P2MCA21006', 'Abhishek A Nair', 'MCA', '2021', 'Student', '2023-01-30', '13:49:56', '00:00:00', '00:00:00', ''),
(7, '40161019', 'Sibin', 'LIB', '2016', 'Teacher', '2023-01-30', '13:50:12', '00:00:00', '00:00:00', ''),
(8, 'KH.SC.P2MCA21001', 'Meera K V', 'MCA', '2021', 'Student', '2023-01-30', '13:51:02', '00:00:00', '00:00:00', ''),
(9, 'KH.SC.P2MCA21001', 'Meera K V', 'MCA', '2021', 'Student', '2023-01-30', '13:51:07', '00:00:00', '00:00:00', ''),
(10, '40161019', 'Sibin', 'LIB', '2016', 'Teacher', '2023-01-30', '13:52:26', '00:00:00', '00:00:00', ''),
(11, '40161019', 'Sibin', 'LIB', '2016', 'Teacher', '2023-01-30', '14:05:30', '00:00:00', '00:00:00', ''),
(12, '40161019', 'Sibin', 'LIB', '2016', 'Teacher', '2023-01-30', '14:05:37', '00:00:00', '00:00:00', ''),
(13, '40111008', 'Ratheesh N P', 'LIB', '2011', 'Teacher', '2023-01-30', '14:19:33', '00:00:00', '00:00:00', ''),
(14, 'KH.SC.P2MCA21006', 'Abhishek A Nair', 'MCA', '2021', 'Student', '2023-02-15', '12:00:13', '00:00:00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE IF NOT EXISTS `tbl_students` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_regno` varchar(50) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_dept` varchar(50) NOT NULL,
  `s_year` int(11) NOT NULL,
  `s_desg` varchar(50) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`s_id`, `s_regno`, `s_name`, `s_dept`, `s_year`, `s_desg`) VALUES
(1, 'KH.SC.P2MCA21001', 'Meera K V', 'MCA', 2021, 'Student'),
(2, 'KH.SC.P2MCA21002', 'Anjalikrishna A R', 'MCA', 2021, 'Student'),
(3, 'KH.SC.P2MCA21003', 'Shyba.K.V', 'MCA', 2021, 'Student'),
(4, 'KH.SC.P2MCA21004', 'Amal Vijay R', 'MCA', 2021, 'Student'),
(5, 'KH.SC.P2MCA21005', 'Shyamaprasad V', 'MCA', 2021, 'Student'),
(6, 'KH.SC.P2MCA21006', 'Abhishek A Nair', 'MCA', 2021, 'Student'),
(7, 'KH.SC.P2MCA21007', 'Mileena Stanley', 'MCA', 2021, 'Student'),
(8, 'KH.SC.P2MCA21008', 'Rahul V Jayaram', 'MCA', 2021, 'Student'),
(9, 'KH.SC.P2MCA21009', 'Neethumol Tomy', 'MCA', 2021, 'Student'),
(10, 'KH.SC.P2MCA21010', 'Akshay Prakash', 'MCA', 2021, 'Student'),
(11, 'KH.SC.P2MCA21011', 'Lakshmi Swetha S', 'MCA', 2021, 'Student'),
(12, 'KH.SC.P2MCA21013', 'Jasu Brinner', 'MCA', 2021, 'Student'),
(13, 'KH.SC.P2MCA21014', 'Aiswarya Kr', 'MCA', 2021, 'Student'),
(14, 'KH.SC.P2MCA21015', 'Anto Josu', 'MCA', 2021, 'Student'),
(15, 'KH.SC.P2MCA21016', 'Anilbabu B', 'MCA', 2021, 'Student'),
(16, 'KH.SC.P2MCA21017', 'Meera Subramanian', 'MCA', 2021, 'Student'),
(17, 'KH.SC.P2MCA21018', 'Ashin Babu', 'MCA', 2021, 'Student'),
(18, 'KH.SC.P2MCA21019', 'Amaljith Sreekumar', 'MCA', 2021, 'Student'),
(19, 'KH.SC.P2MCA21020', 'Khadeeja Asmi C N', 'MCA', 2021, 'Student'),
(20, 'KH.SC.P2MCA21021', 'Aparna Sreekumar', 'MCA', 2021, 'Student'),
(21, 'KH.SC.P2MCA21022', 'Sajin Xavier', 'MCA', 2021, 'Student'),
(22, 'KH.SC.P2MCA21023', 'Arya Sankar K', 'MCA', 2021, 'Student'),
(23, 'KH.SC.P2MCA21025', 'Akshaj R', 'MCA', 2021, 'Student'),
(24, 'KH.SC.P2MCA21026', 'Saravanakumaran Kg', 'MCA', 2021, 'Student'),
(25, 'KH.SC.P2MCA21027', 'Barath R', 'MCA', 2021, 'Student'),
(26, 'KH.SC.P2MCA21028', 'Shon Babu', 'MCA', 2021, 'Student'),
(27, 'KH.SC.P2MCA21032', 'Vaisakh B', 'MCA', 2021, 'Student'),
(28, 'KH.SC.I5MCA18001', 'Abhirami A', 'INT MCA', 2018, 'Student'),
(29, 'KH.SC.I5MCA18002', 'Amrutha Prasad', 'INT MCA', 2018, 'Student'),
(30, 'KH.SC.I5MCA18003', 'Anjana M Nair', 'INT MCA', 2018, 'Student'),
(31, 'KH.SC.I5MCA18004', 'Anna Saji', 'INT MCA', 2018, 'Student'),
(32, 'KH.SC.I5MCA18005', 'Anu Ram', 'INT MCA', 2018, 'Student'),
(33, 'KH.SC.I5MCA18007', 'Aparna Joseph', 'INT MCA', 2018, 'Student'),
(34, 'KH.SC.I5MCA18008', 'Archana P G', 'INT MCA', 2018, 'Student'),
(35, 'KH.SC.I5MCA18010', 'Arya Prakash', 'INT MCA', 2018, 'Student'),
(36, 'KH.SC.I5MCA18011', 'Ashna Mariya Shaji', 'INT MCA', 2018, 'Student'),
(37, 'KH.SC.I5MCA18017', 'Gayathri As', 'INT MCA', 2018, 'Student'),
(38, 'KH.SC.I5MCA18018', 'Gayathri R Varma', 'INT MCA', 2018, 'Student'),
(39, 'KH.SC.I5MCA18019', 'Heera Rishikeshan', 'INT MCA', 2018, 'Student'),
(40, 'KH.SC.I5MCA18021', 'Hridhaya Benny', 'INT MCA', 2018, 'Student'),
(41, 'KH.SC.I5MCA18025', 'Lakshmi S Kumar', 'INT MCA', 2018, 'Student'),
(42, 'KH.SC.I5MCA18027', 'Lekshmi M S', 'INT MCA', 2018, 'Student'),
(43, 'KH.SC.I5MCA18029', 'Nandha D Anand', 'INT MCA', 2018, 'Student'),
(44, 'KH.SC.I5MCA18030', 'Neenu Anil', 'INT MCA', 2018, 'Student'),
(45, 'KH.SC.I5MCA18034', 'Sandra Saji', 'INT MCA', 2018, 'Student'),
(46, 'KH.SC.I5MCA18035', 'Sanitha Lakshmi K Das', 'INT MCA', 2018, 'Student'),
(47, 'KH.SC.I5MCA18036', 'Sathma.M', 'INT MCA', 2018, 'Student'),
(48, 'KH.SC.I5MCA18037', 'Sayana Robert', 'INT MCA', 2018, 'Student'),
(49, 'KH.SC.I5MCA18040', 'Sreenidhi B Shenoi', 'INT MCA', 2018, 'Student'),
(50, 'KH.SC.I5MCA18041', 'Aiswarya Mohan', 'INT MCA', 2018, 'Student'),
(51, 'KH.SC.I5MCA18042', 'Aishwarya S Nair', 'INT MCA', 2018, 'Student'),
(52, 'KH.SC.I5MCA18044', 'Ann Theresa Sandra', 'INT MCA', 2018, 'Student'),
(53, 'KH.SC.I5MCA18047', 'Aruna Ashok', 'INT MCA', 2018, 'Student'),
(54, 'KH.SC.I5MCA18049', 'Aswathy Sreekumar', 'INT MCA', 2018, 'Student'),
(55, 'KH.SC.I5MCA18051', 'Bhadra Jithesh Nair', 'INT MCA', 2018, 'Student'),
(56, 'KH.SC.I5MCA18053', 'Geethu Krishna T', 'INT MCA', 2018, 'Student'),
(57, 'KH.SC.I5MCA18055', 'Kavya E', 'INT MCA', 2018, 'Student'),
(58, 'KH.SC.I5MCA18056', 'Krishna Anil', 'INT MCA', 2018, 'Student'),
(59, 'KH.SC.I5MCA18057', 'Kriahnapriya', 'INT MCA', 2018, 'Student'),
(60, 'KH.SC.I5MCA18061', 'Meera Radhakrishnan', 'INT MCA', 2018, 'Student'),
(61, 'KH.SC.I5MCA18062', 'Naeema Nahas', 'INT MCA', 2018, 'Student'),
(62, 'KH.SC.I5MCA18063', 'Niranjana G', 'INT MCA', 2018, 'Student'),
(63, 'KH.SC.I5MCA18064', 'Parvathi Ranjith', 'INT MCA', 2018, 'Student'),
(64, 'KH.SC.I5MCA18065', 'Ramya R', 'INT MCA', 2018, 'Student'),
(65, 'KH.SC.I5MCA18066', 'Reshma R', 'INT MCA', 2018, 'Student'),
(66, 'KH.SC.I5MCA18067', 'Sini Salim', 'INT MCA', 2018, 'Student'),
(67, 'KH.SC.I5MCA18070', 'Sreelakshmi K R', 'INT MCA', 2018, 'Student'),
(68, 'KH.SC.I5MCA18071', 'Sreelakshmi S Nair', 'INT MCA', 2018, 'Student'),
(69, 'KH.SC.I5MCA18072', 'Swathi Chandran', 'INT MCA', 2018, 'Student'),
(70, 'KH.SC.I5MCA18073', 'Swetha P', 'INT MCA', 2018, 'Student'),
(71, 'KH.SC.I5MCA18075', 'Vyshnavi P', 'INT MCA', 2018, 'Student'),
(72, 'KH.SC.I5MCA18076', 'Anjali A N', 'INT MCA', 2018, 'Student'),
(73, 'KH.SC.I5MCA18077', 'Aparna Ts', 'INT MCA', 2018, 'Student'),
(74, 'KH.SC.I5MCA18079', 'Sreelakshmi C B', 'INT MCA', 2018, 'Student'),
(75, 'KH.SC.I5MCA18080', 'Athira Shaji', 'INT MCA', 2018, 'Student'),
(76, 'KH.SC.I5MCA18081', 'Anashwara Muralidharan Nair', 'INT MCA', 2018, 'Student'),
(86, '40161019', 'Sibin', 'LIB', 2016, 'Teacher'),
(88, '111', 'iui', 'BCA', 2015, 'Student'),
(89, '40111008', 'Ratheesh N P', 'LIB', 2011, 'Teacher'),
(90, '40111008', 'Ratheesh N P', 'LIB', 2011, 'Teacher'),
(91, '', '', '', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
