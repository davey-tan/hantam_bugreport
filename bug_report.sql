-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 04:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hantam_bugreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `bug_report`
--

CREATE TABLE `bug_report` (
  `id` varchar(10) NOT NULL,
  `tester` varchar(128) NOT NULL DEFAULT 'Unknown',
  `date_open` varchar(16) DEFAULT NULL,
  `root_cause` varchar(32) NOT NULL DEFAULT 'Unknown',
  `severity` int(1) DEFAULT NULL,
  `priority` int(1) DEFAULT NULL,
  `summary` varchar(128) DEFAULT NULL,
  `steps` varchar(1000) DEFAULT NULL,
  `isolation` varchar(1000) DEFAULT NULL,
  `state` varchar(10) NOT NULL DEFAULT 'Open',
  `owner` varchar(128) NOT NULL DEFAULT 'Unknown',
  `estimate_fix` varchar(16) DEFAULT NULL,
  `phase_detected` varchar(32) NOT NULL DEFAULT 'Unknown',
  `phase_removed` varchar(32) NOT NULL DEFAULT 'Unknown',
  `date_close` varchar(16) DEFAULT NULL,
  `resolution` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bug_report`
--

INSERT INTO `bug_report` (`id`, `tester`, `date_open`, `root_cause`, `severity`, `priority`, `summary`, `steps`, `isolation`, `state`, `owner`, `estimate_fix`, `phase_detected`, `phase_removed`, `date_close`, `resolution`) VALUES
('BFE_001', 'Leonard', 'January 28, 2021', 'Image Size Compatibility', 4, 4, 'Unable to display the picture on the forum', '1. Select the \"Insert Image\" button inside the description box.\n2. Inside the \"Image Properties\" pop-up, click \"Browse Repositories\".\n3. Select \"Private Files\".\n4. Select the image.\n5. Click the \"Select this file\" button.\n6. Click the \"Save Image\" button.\n7. Click the \"Save and display\" button on the bottom of the page.', 'Bug does not occur when the image size is 1242x2208 pixels (Auto size: ON).\nBug does not occur when the image size is below or above 1242x2208 pixels.\nOn vague suspicion, this was an image size compatibility.\nTest it twice, but the bug still occur on 1242x2208 pixels.\nTest it twice, but the bug doesn\'t occur on other sizes.\nBug still occurs after choosing the same size (1242x2208 pixels).', 'Closed', 'Irsyad', 'January 29, 2021', 'Phase One', 'Phase Two', 'January 30, 2021', 'On January 29th, Irsyad found the bug in the image compatibility code and fixed it.'),
('BFE_002', 'Leonard', 'January 28, 2021', 'Image Size Compatibility', 4, 4, 'Unable to display the picture on the forum', '1. Select the \"Insert Image\" button inside the description box.\n2. Inside the \"Image Properties\" pop-up, click \"Browse Repositories\".\n3. Select \"Private Files\".\n4. Select the image.\n5. Click the \"Select this file\" button.\n6. Click the \"Save Image\" button.\n7. Click the \"Save and display\" button on the bottom of the page.', 'Bug does not occur when the image size is 1242x2208 pixels (Auto size: ON).\nBug does not occur when the image size is below or above 1242x2208 pixels.\nOn vague suspicion, this was an image size compatibility.\nTest it twice, but the bug still occur on 1242x2208 pixels.\nTest it twice, but the bug doesn\'t occur on other sizes.\nBug still occurs after choosing the same size (1242x2208 pixels).', 'Closed', 'Irsyad', 'January 29, 2021', 'Phase One', 'Phase Two', 'January 30, 2021', 'On January 29th, Irsyad found the bug in the image compatibility code and fixed it.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bug_report`
--
ALTER TABLE `bug_report`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
