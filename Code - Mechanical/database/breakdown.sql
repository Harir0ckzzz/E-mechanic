-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 10:11 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `breakdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
`aid` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`aid`, `uname`, `pwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
`areaid` int(11) NOT NULL,
  `acode` varchar(7) NOT NULL,
  `aname` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`areaid`, `acode`, `aname`) VALUES
(1, 'A01', 'Mahalingapuram'),
(2, 'A02', 'Market Road'),
(3, 'A03', 'New Scheme Road'),
(4, 'A04', 'Aachipatti'),
(6, 'A05', 'Pollachi'),
(8, 'A06', 'Kovilpalayam');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`fno` int(11) NOT NULL,
  `fdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `regno` int(11) NOT NULL,
  `feedback` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fno`, `fdate`, `regno`, `feedback`) VALUES
(4, '2022-12-21 15:42:29', 8, 'Thanks for  the service....');

-- --------------------------------------------------------

--
-- Table structure for table `mechanic`
--

CREATE TABLE IF NOT EXISTS `mechanic` (
`mech_id` int(11) NOT NULL,
  `mech_code` varchar(100) NOT NULL,
  `acode` varchar(100) NOT NULL,
  `mech_name` varchar(100) NOT NULL,
  `wrk_name` varchar(100) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `land` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `mechanic`
--

INSERT INTO `mechanic` (`mech_id`, `mech_code`, `acode`, `mech_name`, `wrk_name`, `addr`, `City`, `land`, `contact`, `email`) VALUES
(10, 'M001', 'A05', 'Madhan', 'Madhan services', 'pollachi', 'coimbatore', 'new market', '9945502710', 'madhan@gmail.com'),
(11, 'M002', 'A01', 'Sandy', 'Sandy workshop', 'omprakash', 'pollachi', 'new bus stop', '8682009947', 'sandy@gmail.com'),
(12, 'M003', 'A03', 'Anbu', 'workshop', '', '', '', '', ''),
(13, 'M004', 'A02', 'Hari', 'Harish workshop', 'mahalingapuram', 'pollachi', 'kovil street', '8682104596', 'hari@gmail.com'),
(14, 'M005', 'A06', 'Karthi', 'AK services', 'kovilpalayam', 'pollachi', 'hospital opposite', '9875201463', 'karthi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
`regno` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `acode` varchar(7) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`regno`, `name`, `acode`, `addr`, `contact`, `email`, `uname`, `pwd`) VALUES
(8, 'naveen', 'A03', 'pollachi', '9632587410', 'naveen@gmail.com', 'naveen', 'naveen'),
(9, 'Praveen', 'A06', 'jeeva nagar', '9873214560', 'praveen@gmail.com', 'praveen', 'praveen'),
(10, 'pavi', 'A04', 'vadakkipalayam', '6823014567', 'pavi@gmail.com', 'pavi', 'pavi');

-- --------------------------------------------------------

--
-- Table structure for table `service_book`
--

CREATE TABLE IF NOT EXISTS `service_book` (
`bookno` int(11) NOT NULL,
  `bookdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `regno` int(11) NOT NULL,
  `mech_code` varchar(7) NOT NULL,
  `veh_regno` varchar(30) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Booked'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `service_book`
--

INSERT INTO `service_book` (`bookno`, `bookdate`, `regno`, `mech_code`, `veh_regno`, `complaint`, `status`) VALUES
(16, '2022-12-21 15:41:58', 8, 'M003', 'TN48VH0989', 'Tyre fault', 'processed'),
(17, '2022-12-21 14:38:35', 10, 'M003', 'TN37A1000', 'breakdown', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `service_response`
--

CREATE TABLE IF NOT EXISTS `service_response` (
`resno` int(11) NOT NULL,
  `serdate` date NOT NULL,
  `bno` int(11) NOT NULL,
  `ser_desc` varchar(100) NOT NULL,
  `ser_cost` decimal(7,0) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `service_response`
--

INSERT INTO `service_response` (`resno`, `serdate`, `bno`, `ser_desc`, `ser_cost`) VALUES
(12, '2022-12-21', 16, 'i''ll check', '1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
 ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
 ADD PRIMARY KEY (`areaid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`fno`);

--
-- Indexes for table `mechanic`
--
ALTER TABLE `mechanic`
 ADD PRIMARY KEY (`mech_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `service_book`
--
ALTER TABLE `service_book`
 ADD PRIMARY KEY (`bookno`);

--
-- Indexes for table `service_response`
--
ALTER TABLE `service_response`
 ADD PRIMARY KEY (`resno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
MODIFY `areaid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `fno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mechanic`
--
ALTER TABLE `mechanic`
MODIFY `mech_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `regno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `service_book`
--
ALTER TABLE `service_book`
MODIFY `bookno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `service_response`
--
ALTER TABLE `service_response`
MODIFY `resno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
