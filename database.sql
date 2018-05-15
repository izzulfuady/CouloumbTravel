-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 15, 2018 at 02:52 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `couloumb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(5) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Addres` varchar(25) NOT NULL,
  `Phone` int(25) NOT NULL,
  `Gender` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--


-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(5) NOT NULL,
  `reservation_code` varchar(25) NOT NULL,
  `reservation_at` varchar(25) NOT NULL,
  `reservation_date` varchar(25) NOT NULL,
  `customerid` varchar(25) NOT NULL,
  `seat_code` varchar(25) NOT NULL,
  `ruteid` varchar(25) NOT NULL,
  `depart_at` varchar(25) NOT NULL,
  `price` int(25) NOT NULL,
  `userid` int(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--


-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE IF NOT EXISTS `rute` (
  `id` int(5) NOT NULL,
  `depart_at` varchar(25) NOT NULL,
  `rute_form` varchar(25) NOT NULL,
  `rute_to` varchar(25) NOT NULL,
  `price` int(25) NOT NULL,
  `transportationid` varchar(25) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--


-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE IF NOT EXISTS `transportation` (
  `id` int(5) NOT NULL,
  `code` int(25) NOT NULL,
  `description` varchar(25) NOT NULL,
  `seat_qty` varchar(25) NOT NULL,
  `transportation_typeid` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--


-- --------------------------------------------------------

--
-- Table structure for table `transportation_type`
--

CREATE TABLE IF NOT EXISTS `transportation_type` (
  `id` int(5) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Fullname` varchar(25) NOT NULL,
  `Level` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--
