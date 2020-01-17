-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 01:41 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attend`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `stid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `h1` varchar(11) NOT NULL,
  `h2` varchar(10) NOT NULL,
  `h3` varchar(11) NOT NULL,
  `h4` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`stid`, `name`, `batch`, `date`, `h1`, `h2`, `h3`, `h4`) VALUES
(50, 'Anu', 'jsd2', '2020-01-18', 'p', 'p', 'a', 'p');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `joiningdate` date NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `batch` varchar(5) NOT NULL,
  `address` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facid`, `name`, `designation`, `mobile`, `email`, `joiningdate`, `qualification`, `gender`, `dob`, `batch`, `address`, `password`) VALUES
(50, 'Amitha', 'trainer', 8976452310, 'amitha@gmail.com', '2020-01-01', 'MCA', 'female', '1998-04-04', 'jsd2', 'Amitha Villa', 'amitha');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `reason` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `stid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `assno` int(11) NOT NULL,
  `sub1` int(11) NOT NULL,
  `sub2` int(11) NOT NULL,
  `sub3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`stid`, `name`, `batch`, `assno`, `sub1`, `sub2`, `sub3`) VALUES
(50, 'Anu', 'jsd2', 1, 20, 19, 15);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `admissionno` int(11) NOT NULL,
  `admissiondate` date NOT NULL,
  `address` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stid`, `name`, `mobile`, `email`, `dob`, `gender`, `batch`, `admissionno`, `admissiondate`, `address`, `password`) VALUES
(100, 'Anu', 6696565, 'anu007@m]gmail.com', '1998-09-03', 'female', 'jsd2', 25, '2019-09-10', 'Kottayam', 'anu'),
(51, 'Anju', 8694720359, 'anjuk@mail.com', '1995-04-04', 'Female', 'jsd2', 101, '2020-04-02', 'Anju villa', 'anju'),
(51, 'Anju', 8694720359, 'anjuk@mail.com', '1995-04-04', 'Female', 'jsd2', 101, '2020-04-02', 'Anju villa', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
