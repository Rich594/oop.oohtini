-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 07:35 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robinsnest`
--

-- --------------------------------------------------------

--
-- Table structure for table `actionfigures`
--

CREATE TABLE `actionfigures` (
  `figurepidm` int(11) NOT NULL,
  `figurename` varchar(50) DEFAULT NULL,
  `reference` varchar(10) NOT NULL,
  `series` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actionfigures`
--

INSERT INTO `actionfigures` (`figurepidm`, `figurename`, `reference`, `series`, `source`, `year`) VALUES
(1, 'Dengar', 'VC01', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(2, 'Leia (Hoth Outfit)', 'VC02', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(3, 'Han Solo (Echo Base Outfit)', 'VC03', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(4, 'Luke Skywalker (Bespin Fatigues)', 'VC04', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(5, 'AT-AT Commander', 'VC05', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(6, 'See-Threepio (C-3PO)', 'VC06', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(7, 'Dack Ralter', 'VC07', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(8, 'Darth Vader', 'VC08', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(9, 'Boba Fett', 'VC09', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(10, '4-LOM', 'VC10', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(11, 'Cloud Car Pilot', 'VC11', 'The Vintage Collection', 'The Empire Strikes Back', '2010'),
(36, 'Rey (Jakku)', 'VC116', 'The Vintage Collection', 'The Force Awakens', '2018'),
(38, 'Kithaba', 'VC56', 'The Vintage Collection', 'Return of the Jedi', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `reference` int(11) NOT NULL,
  `bookname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`reference`, `bookname`) VALUES
(1, 'The Wonderful Adventure of Uncle Wizard'),
(2, 'Uncle Wizard and the Golden Orb'),
(3, 'Uncle Wizard and the Land of Magic');

-- --------------------------------------------------------

--
-- Stand-in structure for view `linkedvariation3`
-- (See below for the actual view)
--
CREATE TABLE `linkedvariation3` (
`figurepidm` int(11)
,`figurename` varchar(50)
,`reference` varchar(10)
,`series` varchar(30)
,`region` varchar(256)
,`name` varchar(256)
,`front_view_code_ref` varchar(256)
,`back_view_code_ref` varchar(256)
,`pidm` int(11)
,`figure_pidm` int(11)
,`image_front` varchar(255)
,`image_back` varchar(255)
,`variation_origin` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `masterlist`
--

CREATE TABLE `masterlist` (
  `ref` int(11) NOT NULL,
  `figurepidm` int(11) NOT NULL,
  `reference` varchar(10) NOT NULL,
  `series` varchar(30) NOT NULL,
  `ownorwant` text NOT NULL,
  `user` varchar(10) NOT NULL,
  `packaging` text NOT NULL,
  `accessories` text NOT NULL,
  `hanger` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterlist`
--

INSERT INTO `masterlist` (`ref`, `figurepidm`, `reference`, `series`, `ownorwant`, `user`, `packaging`, `accessories`, `hanger`) VALUES
(61, 1, 'VC01', 'The Vintage Collection', 'Want', '7', 'Loose', 'Complete', ''),
(62, 2, 'VC02', 'The Vintage Collection', 'Own', '7', 'Carded', '', 'Punched'),
(86, 36, 'VC116', 'The Vintage Collection', 'Own', '3', 'Carded', '', 'Punched'),
(88, 5, 'VC05', 'The Vintage Collection', 'Own', '3', 'Loose', 'Incomplete', ''),
(89, 8, 'VC08', 'The Vintage Collection', 'Own', '3', 'Carded', '', 'Punched'),
(90, 1, 'VC01', 'The Vintage Collection', 'Want', '3', 'Carded', '', 'Unpunched'),
(91, 2, 'VC02', 'The Vintage Collection', 'Own', '5', 'Loose', 'Incomplete', ''),
(92, 3, 'VC03', 'The Vintage Collection', 'Want', '3', 'Carded', '', 'Punched'),
(93, 7, 'VC07', 'The Vintage Collection', 'Own', '3', 'Loose', 'Incomplete', ''),
(94, 10, 'VC10', 'The Vintage Collection', 'Want', '3', 'Carded', '', 'Punched'),
(95, 36, 'VC116', 'The Vintage Collection', 'Own', '3', 'Loose', 'Complete', ''),
(96, 9, 'VC09', 'The Vintage Collection', 'Own', '3', 'Carded', '', 'Unpunched'),
(97, 1, 'VC01', 'The Vintage Collection', 'Own', '3', 'Carded', '', 'Unpunched'),
(98, 1, 'VC01', 'The Vintage Collection', 'Own', '5', 'Loose', 'Incomplete', ''),
(99, 2, 'VC02', 'The Vintage Collection', 'Want', '5', 'Loose', 'Complete', ''),
(100, 2, 'VC02', 'The Vintage Collection', 'Own', '5', 'Loose', 'Complete', '');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user`, `pass`) VALUES
('bob', '123'),
('Frank', '123'),
('John', '123'),
('Colin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth` varchar(16) DEFAULT NULL,
  `recip` varchar(16) DEFAULT NULL,
  `pm` char(1) DEFAULT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `user` varchar(16) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `reference` int(5) NOT NULL,
  `seriesname` varchar(30) DEFAULT NULL,
  `code` varchar(5) NOT NULL,
  `series_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`reference`, `seriesname`, `code`, `series_image`) VALUES
(1, 'The Vintage Collection', 'TVC', 'The Vintage Collection.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tvcdatestamp`
--

CREATE TABLE `tvcdatestamp` (
  `pidm` int(11) NOT NULL,
  `datestamp` text NOT NULL,
  `reference` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tvcdatestamp`
--

INSERT INTO `tvcdatestamp` (`pidm`, `datestamp`, `reference`) VALUES
(1, '80261', 'VC116'),
(2, '80371', 'VC116'),
(3, '81711', 'VC116'),
(4, '81731', 'VC117'),
(5, '80261', 'VC117'),
(6, '81701', 'VC118'),
(7, '80291', 'VC118'),
(8, '80361', 'VC118');

-- --------------------------------------------------------

--
-- Table structure for table `tvcvariations`
--

CREATE TABLE `tvcvariations` (
  `pidm` int(10) NOT NULL,
  `card` text NOT NULL,
  `region` text NOT NULL,
  `figure` text NOT NULL,
  `sticker` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tvcvariations`
--

INSERT INTO `tvcvariations` (`pidm`, `card`, `region`, `figure`, `sticker`) VALUES
(1, 'Age Warning Front', 'US Card', '', ''),
(2, 'Age Warning Reverse', 'Euro Card', '', ''),
(6, 'Single Language: Age Warning Reverse', 'Euro Card', '', ''),
(7, 'Multi Language: Age Warning Front', 'US Card', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `user_level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` char(32) DEFAULT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `pass`, `user_level`, `active`, `registration_date`) VALUES
(3, 'Bob', 'Smith', 'r.anderson594@yahoo.co.uk', '$2y$10$YY5.8XV/MQYvKjhGzO.TJOR4ECiRP1bcAbV8z0BL2aWbgrfbxJ5gC', 0, NULL, '2018-07-29 15:47:55'),
(5, 'Ian', 'Test', 'test@demo.co.uk', '$2y$10$fX6IAgRuCAd5Z7Z1rPSIFOcgEZHO91CMf6YCK2SpRiD8M9B9Iswim', 0, NULL, '2018-10-22 11:39:42'),
(6, 'Nigel', 'Plop', 'info@rulesreview.co.uk', '$2y$10$1QvaO/5FgyJiV4zdruNjVOTlNm4gj8fKYQ618D2RgSuSOGGLCSZzu', 0, NULL, '2018-10-22 13:11:09'),
(7, 'Uncle Wizard', 'Plop', 'plop@plop.com', '$2y$10$czt0B1zzilvNxybrX1HwDOCIOaV0n8U/RjSH9RaO0r2m65XjD15iS', 0, NULL, '2019-01-19 11:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `pidm` int(11) NOT NULL,
  `figure_pidm` int(11) NOT NULL,
  `variation_pidm` int(11) NOT NULL,
  `image_front` varchar(255) DEFAULT NULL,
  `image_back` varchar(255) DEFAULT NULL,
  `variation_origin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`pidm`, `figure_pidm`, `variation_pidm`, `image_front`, `image_back`, `variation_origin_id`) VALUES
(1, 1, 1, 'VC01_CF_US_1.0.jpg', 'VC01_CB_US_1.0.jpg', 1),
(2, 1, 2, 'VC01_CF_US_1.0.jpg', 'VC01_CB_US_1.1.jpg', 1),
(3, 1, 3, 'VC01_CF_CA_1.0.jpg', 'VC01_CB_CA_1.0.jpg', 1),
(4, 1, 4, 'VC01_CF_CA_1.1.jpg', 'VC01_CB_CA_1.0.jpg', 1),
(5, 1, 5, 'VC01_CF_EU_1.0.jpg', 'VC01_CB_EU_1.0.jpg', 1),
(6, 2, 1, 'VC02_CF_US_1.0.jpg', 'VC02_CB_US_1.0.jpg', 1),
(7, 2, 2, 'VC02_CF_US_1.0.jpg', 'VC02_CB_US_1.1.jpg', 1),
(8, 2, 3, 'VC02_CF_CA_1.0.jpg', 'VC02_CB_CA_1.0.jpg', 1),
(9, 2, 4, 'VC02_CF_CA_1.1.jpg', 'VC02_CB_CA_1.0.jpg', 1),
(10, 2, 5, 'VC02_CF_EU_1.0.jpg', 'VC02_CB_EU_1.0.jpg', 1),
(11, 3, 1, 'VC03_CF_US_1.0.jpg', 'VC03_CB_US_1.0.jpg', 1),
(12, 3, 2, 'VC03_CF_US_1.0.jpg', 'VC03_CB_US_1.1.jpg', 1),
(13, 3, 6, NULL, NULL, 1),
(14, 3, 3, 'VC03_CF_CA_1.0.jpg', 'VC03_CB_CA_1.0.jpg', 1),
(15, 3, 4, 'VC03_CF_CA_1.1.jpg', 'VC03_CB_CA_1.0.jpg', 1),
(16, 3, 7, NULL, NULL, 1),
(17, 3, 8, NULL, NULL, 1),
(18, 3, 5, 'VC03_CF_EU_1.0.jpg', 'VC03_CB_EU_1.0.jpg', 1),
(19, 3, 9, NULL, NULL, 1),
(20, 4, 1, 'VC04_CF_US_1.0.jpg', 'VC04_CB_US_1.0.jpg', 1),
(21, 4, 2, 'VC04_CF_US_1.0.jpg', 'VC04_CB_US_1.1.jpg', 1),
(22, 4, 10, NULL, NULL, 1),
(23, 4, 6, NULL, NULL, 1),
(24, 4, 3, 'VC04_CF_CA_1.0.jpg', 'VC04_CB_CA_1.0.jpg', 1),
(25, 4, 4, 'VC04_CF_CA_1.1.jpg', 'VC04_CB_CA_1.0.jpg', 1),
(26, 4, 7, NULL, NULL, 1),
(27, 4, 5, 'VC04_CF_EU_1.0.jpg', 'VC04_CB_EU_1.0.jpg', 1),
(28, 4, 11, NULL, NULL, 1),
(29, 5, 1, NULL, NULL, 1),
(30, 5, 2, NULL, NULL, 1),
(31, 5, 3, NULL, NULL, 1),
(32, 5, 4, NULL, NULL, 1),
(33, 5, 5, NULL, NULL, 1),
(34, 6, 1, NULL, NULL, 1),
(35, 6, 2, NULL, NULL, 1),
(36, 6, 3, NULL, NULL, 1),
(37, 6, 4, NULL, NULL, 1),
(38, 6, 5, NULL, NULL, 1),
(39, 7, 1, NULL, NULL, 1),
(40, 7, 3, NULL, NULL, 1),
(41, 7, 4, NULL, NULL, 1),
(42, 7, 5, NULL, NULL, 1),
(43, 8, 1, NULL, NULL, 1),
(44, 8, 10, NULL, NULL, 1),
(45, 8, 12, NULL, NULL, 1),
(46, 8, 13, NULL, NULL, 1),
(47, 8, 14, NULL, NULL, 1),
(48, 8, 6, NULL, NULL, 1),
(49, 8, 25, NULL, NULL, 1),
(50, 8, 26, NULL, NULL, 1),
(51, 8, 15, NULL, NULL, 1),
(52, 8, 17, NULL, NULL, 1),
(53, 8, 3, NULL, NULL, 1),
(54, 8, 4, NULL, NULL, 1),
(55, 8, 7, NULL, NULL, 1),
(56, 8, 8, NULL, NULL, 1),
(57, 8, 16, NULL, NULL, 1),
(58, 8, 18, NULL, NULL, 1),
(59, 8, 11, NULL, NULL, 1),
(60, 8, 21, NULL, NULL, 1),
(61, 8, 22, NULL, NULL, 1),
(62, 8, 23, NULL, NULL, 1),
(63, 8, 27, NULL, NULL, 1),
(64, 8, 5, NULL, NULL, 1),
(65, 8, 9, NULL, NULL, 1),
(66, 9, 1, NULL, NULL, 1),
(67, 9, 2, NULL, NULL, 1),
(68, 9, 10, NULL, NULL, 1),
(69, 9, 19, NULL, NULL, 1),
(70, 9, 6, NULL, NULL, 1),
(71, 9, 3, NULL, NULL, 1),
(72, 9, 4, NULL, NULL, 1),
(73, 9, 7, NULL, NULL, 1),
(74, 9, 17, NULL, NULL, 1),
(75, 9, 15, NULL, NULL, 1),
(76, 9, 18, NULL, NULL, 1),
(77, 9, 20, NULL, NULL, 1),
(78, 9, 5, NULL, NULL, 1),
(79, 9, 9, NULL, NULL, 1),
(80, 9, 24, NULL, NULL, 1),
(81, 9, 23, NULL, NULL, 1),
(82, 10, 1, NULL, NULL, 1),
(83, 10, 2, NULL, NULL, 1),
(84, 10, 3, NULL, NULL, 1),
(85, 10, 4, NULL, NULL, 1),
(86, 10, 5, NULL, NULL, 1),
(87, 11, 1, NULL, NULL, 1),
(88, 11, 2, NULL, NULL, 1),
(89, 11, 3, NULL, NULL, 1),
(90, 11, 4, NULL, NULL, 1),
(91, 11, 5, NULL, NULL, 1),
(92, 38, 28, 'VC56_FF_ALL_1.0.jpg', 'VC56_BF_ALL_1.0.jpg', 2),
(93, 1, 29, 'VC01_FF_ALL_1.1.jpg', 'VC01_BF_ALL_1.1.jpg', 2),
(96, 2, 29, 'VC02_FF_ALL_1.1.jpg', 'VC02_BF_ALL_1.1.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `variation_back`
--

CREATE TABLE `variation_back` (
  `id` int(11) NOT NULL,
  `back_view_code_ref` varchar(11) NOT NULL,
  `variation_detail` varchar(255) NOT NULL,
  `variation_information` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variation_back`
--

INSERT INTO `variation_back` (`id`, `back_view_code_ref`, `variation_detail`, `variation_information`) VALUES
(1, 'US_B_1_0', 'Promotional text above figures', 'The text \'COLLECT THESE AWESOME CHARACTERS! (Each sold separately.) appears above the line of promotional figures. This promotional text was omitted from the next production run of the cardback.'),
(2, 'US_B_1_1', 'No text above figures', 'There is no text above the promotional figures. In the previous release, there was text above the figures which read \'The text \'COLLECT THESE AWESOME CHARACTERS! (Each sold separately.) \''),
(3, 'US_B_1_0', 'No historical years mentioned in text below figures', 'The text below the promotional figures reads, \"Original figures and packaging illustrated here are not available.\". In the next production run the text is changed to include reference to the decades that the figures were produced, 1970\'s, 1980\'s, 1990\'s, and 2000\'s.'),
(4, 'US_B_1_1', 'Text below figures mentions historical decades', 'The text below the promotional figures mentions the decades in which the historical figures were released. In the previous release, there was no mention of the decades.'),
(5, 'US_B_1_0', 'Age Warning Logo Left', 'The age warning logo appears at the bottom left of the cardback, next to the warning logo. In the next version of the cardback the age warning was moved to the bottom middle.'),
(6, 'US_B_1_1', 'Age Warning Logo Centre', 'The age warning logo appears at the bottom centre of the cardback. In the previous release of the cardback the age warning appeared next to the warning logo on the left hand side.'),
(7, 'CA_B_1_0', 'Age Warning', 'The age warning is printed in three languages'),
(8, 'ALL_B_1_1', 'Single release', 'There was only one release of this figure, with no recorded variations.'),
(9, 'ALL_B_1_0', 'Black headband reverse', ''),
(10, 'EU_B_1_0', 'Product Availability Sticker', 'There is a product availability sticker stuck to the cardback below the promotional figures. This details in multiple languages that the product is not available in all countries.'),
(11, 'EU_B_1_0', 'Hasbro Sticker', 'The Hasbro sticker is stuck to the bottom fifth of the cardbark. It details the addresses of Hasbro\'s European offices, and includes the barcode and icons.');

-- --------------------------------------------------------

--
-- Table structure for table `variation_front`
--

CREATE TABLE `variation_front` (
  `id` int(11) NOT NULL,
  `front_view_code_ref` varchar(11) NOT NULL,
  `variation_detail` varchar(255) NOT NULL,
  `variation_information` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variation_front`
--

INSERT INTO `variation_front` (`id`, `front_view_code_ref`, `variation_detail`, `variation_information`) VALUES
(4, 'US_F_1_0', 'Boba Fett Rocket Firing sticker', 'This is the first version of the Boba Fett Rocket Firing mail-away sticker. This version does not include the \'shipping and handling\' information which appears on subsequent printings of the sticker.'),
(5, 'US_F_1_1', 'Foil Logo', ''),
(6, 'ALL_F_1_0', 'Black Headband', ''),
(7, 'CA_F_1_0', 'No Boba Fett Sticker', 'The first wave of Canadian figures did not feature the Boba Fett Rocket Firing mail-away offer sticker.'),
(8, 'CA_F_1_0', 'No Pamphlet in Bubble', 'There is no pamphlet in the bubble as this release does not feature the Boba Fett Rocket Firing mail away offer.'),
(9, 'CA_F_1_0', 'Age Recommendation Language', 'The Age Recommendation on the Canadian cards is printed in three languages. On the US version, there is only one language printed.'),
(10, 'CA_F_1_1', '\'Bobba\' Fett Error Sticker', 'There is a spelling error on the mail away sticker offer. The name \'Bobba\' is used in error instead of \'Boba\'.'),
(11, 'CA_F_1_1', 'Pamphlet in Bubble', 'There is a pamphlet in the bubble because this release features the mail away offer. The previous release did not have the pamphlet as there was no mail away offer.'),
(12, 'ALL_F_1_1', 'Single release', 'There was only one release of this figure, with no recorded variations.'),
(13, 'EU_F_1_0', 'Pamphlet', 'The bubble contains a pamphlet relating to warning information. The pamphlet is written in multiple languages. The pamphlet is not a mail away offer.');

-- --------------------------------------------------------

--
-- Table structure for table `variation_names`
--

CREATE TABLE `variation_names` (
  `pidm` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `front_view_code` varchar(256) NOT NULL,
  `back_view_code` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variation_names`
--

INSERT INTO `variation_names` (`pidm`, `name`, `region`, `front_view_code`, `back_view_code`) VALUES
(1, 'No Historical Years', 'US', 'US_F_1_0', 'US_B_1_0'),
(2, 'Historical Years', 'US', 'US_F_1_0', 'US_B_1_1'),
(3, 'No Boba Sticker', 'CA', 'CA_F_1_0', 'CA_B_1_0'),
(4, 'Bobba Fett Error', 'CA', 'CA_F_1_1', 'CA_B_1_0'),
(5, 'Awesome Characters', 'EU', 'EU_F_1_0', 'EU_B_1_0'),
(6, 'Foil Logo', 'US', 'US_F_1_1', 'US 1.2'),
(7, 'Foil Logo', 'CA', 'CA 1.2', 'CA 1.1'),
(8, 'Boba Correction', 'CA', 'CA 1.3', 'CA 1.0'),
(9, 'Foil Logo', 'EU', 'EU 1.1', 'EU 1.1'),
(10, 'Unpunched', 'US', 'US 1.2', 'US 1.1'),
(11, 'Unpunched', 'EU', 'EU 1.3', 'EU 1.1'),
(12, 'Boba Firing Sticker v.2', 'US', 'US 1.3', 'US 1.1'),
(13, 'Barcode Sticker', 'US', 'US 1.4', 'US 1.4'),
(14, 'Promo Figures Left', 'US', 'US 1.4', 'US 1.3'),
(15, 'Revenge', 'US', 'US 1.5', 'US 1.5'),
(16, 'Age Warning Thin Font', 'CA', 'CA 1.4', 'CA 1.2'),
(17, 'Boba Fett Prototype', 'US', 'US 1.6', 'US 1.5'),
(18, 'Figures on Left', 'CA', 'CA 1.4', 'CA 1.3'),
(19, 'No Warning Icons', 'US', 'US 1.4', 'US 1.5'),
(20, 'Revenge', 'CA', 'CA 1.5', 'CA 1.3'),
(21, 'Revenge', 'EU', 'EU 1.4', 'EU 1.2'),
(22, 'Stickers over warnings', 'EU', 'EU 1.2', 'EU 1.2'),
(23, 'Boba Fett Prototype', 'EU', 'EU 1.5', 'EU 1.3'),
(24, 'Revenge', 'EU', 'EU 1.6', 'EU 1.3'),
(25, 'Foil: No Boba Sticker', 'US', 'US 1.7\r\n', 'US 1.6\r\n'),
(26, 'ROTJ Cardback', 'US', 'US 1.6', 'US 1.7'),
(27, 'ROTJ Cardback', 'EU', 'US 1.7', 'US 1.3'),
(28, 'Black Headband', 'ALL', 'ALL_F_1_0', 'ALL_B_1_0'),
(29, 'Standard', 'ALL', 'ALL_F_1_1', 'ALL_B_1_1'),
(30, 'Standard', 'ALL', 'ALL_F_1_1', 'ALL_B_1_1');

-- --------------------------------------------------------

--
-- Table structure for table `variation_origin`
--

CREATE TABLE `variation_origin` (
  `id` int(11) NOT NULL,
  `variation_origin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variation_origin`
--

INSERT INTO `variation_origin` (`id`, `variation_origin_name`) VALUES
(1, 'Cardback'),
(2, 'Figure');

-- --------------------------------------------------------

--
-- Structure for view `linkedvariation3`
--
DROP TABLE IF EXISTS `linkedvariation3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `linkedvariation3`  AS  select `actionfigures`.`figurepidm` AS `figurepidm`,`actionfigures`.`figurename` AS `figurename`,`actionfigures`.`reference` AS `reference`,`actionfigures`.`series` AS `series`,`variation_names`.`region` AS `region`,`variation_names`.`name` AS `name`,`variation_names`.`front_view_code` AS `front_view_code_ref`,`variation_names`.`back_view_code` AS `back_view_code_ref`,`variation_names`.`pidm` AS `pidm`,`variations`.`figure_pidm` AS `figure_pidm`,`variations`.`image_front` AS `image_front`,`variations`.`image_back` AS `image_back`,`variation_origin`.`variation_origin_name` AS `variation_origin` from (((`actionfigures` join `variations` on((`actionfigures`.`figurepidm` = `variations`.`figure_pidm`))) join `variation_names` on((`variations`.`variation_pidm` = `variation_names`.`pidm`))) join `variation_origin` on((`variations`.`variation_origin_id` = `variation_origin`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actionfigures`
--
ALTER TABLE `actionfigures`
  ADD PRIMARY KEY (`figurepidm`),
  ADD KEY `reference` (`reference`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`reference`);

--
-- Indexes for table `masterlist`
--
ALTER TABLE `masterlist`
  ADD PRIMARY KEY (`ref`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD KEY `user` (`user`(6));

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth` (`auth`(6)),
  ADD KEY `recip` (`recip`(6));

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD KEY `user` (`user`(6));

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`reference`),
  ADD KEY `user` (`reference`),
  ADD KEY `friend` (`seriesname`(6));

--
-- Indexes for table `tvcdatestamp`
--
ALTER TABLE `tvcdatestamp`
  ADD PRIMARY KEY (`pidm`);

--
-- Indexes for table `tvcvariations`
--
ALTER TABLE `tvcvariations`
  ADD PRIMARY KEY (`pidm`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`pidm`),
  ADD KEY `variations_ibfk_1` (`figure_pidm`),
  ADD KEY `variations_ibfk_2` (`variation_pidm`),
  ADD KEY `variation_origin_id` (`variation_origin_id`);

--
-- Indexes for table `variation_back`
--
ALTER TABLE `variation_back`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_back_ref` (`back_view_code_ref`);

--
-- Indexes for table `variation_front`
--
ALTER TABLE `variation_front`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_front_ref` (`front_view_code_ref`);

--
-- Indexes for table `variation_names`
--
ALTER TABLE `variation_names`
  ADD PRIMARY KEY (`pidm`),
  ADD KEY `pidm` (`pidm`),
  ADD KEY `card_front` (`front_view_code`),
  ADD KEY `card_back` (`back_view_code`);

--
-- Indexes for table `variation_origin`
--
ALTER TABLE `variation_origin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actionfigures`
--
ALTER TABLE `actionfigures`
  MODIFY `figurepidm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `reference` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `masterlist`
--
ALTER TABLE `masterlist`
  MODIFY `ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `reference` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tvcdatestamp`
--
ALTER TABLE `tvcdatestamp`
  MODIFY `pidm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tvcvariations`
--
ALTER TABLE `tvcvariations`
  MODIFY `pidm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `pidm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `variation_back`
--
ALTER TABLE `variation_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `variation_front`
--
ALTER TABLE `variation_front`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `variation_names`
--
ALTER TABLE `variation_names`
  MODIFY `pidm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `variation_origin`
--
ALTER TABLE `variation_origin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `variations_ibfk_1` FOREIGN KEY (`figure_pidm`) REFERENCES `actionfigures` (`figurepidm`),
  ADD CONSTRAINT `variations_ibfk_2` FOREIGN KEY (`variation_pidm`) REFERENCES `variation_names` (`pidm`),
  ADD CONSTRAINT `variations_ibfk_3` FOREIGN KEY (`variation_origin_id`) REFERENCES `variation_origin` (`id`);

--
-- Constraints for table `variation_back`
--
ALTER TABLE `variation_back`
  ADD CONSTRAINT `variation_back_ibfk_1` FOREIGN KEY (`back_view_code_ref`) REFERENCES `variation_names` (`back_view_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variation_front`
--
ALTER TABLE `variation_front`
  ADD CONSTRAINT `variation_front_ibfk_1` FOREIGN KEY (`front_view_code_ref`) REFERENCES `variation_names` (`front_view_code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
