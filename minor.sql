-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2012 at 08:07 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `minor`
--

-- --------------------------------------------------------

--
-- Table structure for table `cnews`
--

CREATE TABLE IF NOT EXISTS `cnews` (
  `newsname` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `newsarticle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cnews`
--

INSERT INTO `cnews` (`newsname`, `newsdate`, `newsarticle`) VALUES
('Delighted with Tendulkar`s wicket: Panesar', '2012-11-25', 'cvdfv'),
('Pujara would do well on foreign soil: Gavaskar', '2012-11-25', 'cvdfv'),
('CSA takes former president Arendse on board', '2012-11-25', 'cvdfv'),
('India pick three spinners for Mumbai Test', '2012-11-25', 'cvdfv'),
('Sehwag completes ton of Test appearances', '2012-11-25', 'cvdfv'),
('Cricket Club of India  honours Tendulkar', '2012-11-25', 'cvdfv'),
('Spot-fixing is rife in the game: Lalit Modi', '2012-11-25', 'cvdfv'),
('Ind vs Eng: 2nd Test, Day 1 - As it happened', '2012-11-25', 'cvdfv');

-- --------------------------------------------------------

--
-- Table structure for table `cschedule`
--

CREATE TABLE IF NOT EXISTS `cschedule` (
  `sc_id` int(11) NOT NULL,
  `sc_date` date NOT NULL,
  `sc_name` varchar(255) NOT NULL,
  `sc_time` varchar(255) NOT NULL,
  UNIQUE KEY `sc_id` (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cschedule`
--

INSERT INTO `cschedule` (`sc_id`, `sc_date`, `sc_name`, `sc_time`) VALUES
(1, '2012-11-26', 'Sri Lanka v New Zealand 2012:- 3rd ODI Highlights -', '2.30 am'),
(2, '2012-11-25', 'Chennai Super Kings v Sydney Sixers', '12:00 am'),
(3, '2012-11-25', 'Sri Lanka v New Zealand 2012:- 1st Test Day 3 Highlights', '2:30 am'),
(4, '2012-11-27', 'ICC Cricket 360 - 2012', '8:30 am '),
(5, '2012-11-27', 'ICC Cricket 360 - 2012', '11.30 pm'),
(6, '2012-11-28', 'india vs england highlights', '11.30 am');

-- --------------------------------------------------------

--
-- Table structure for table `f1news`
--

CREATE TABLE IF NOT EXISTS `f1news` (
  `newsname` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `newsarticle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f1news`
--

INSERT INTO `f1news` (`newsname`, `newsdate`, `newsarticle`) VALUES
('Roy Brindley anticipates the Japanese GP ', '2012-10-12', ''),
('Red Bull boost due to exhaust,not DRS report', '2012-10-13', ''),
('Lowe: McLaren still in the hunt', '2012-10-11', ''),
('Ferrari look to bridge gap to RBR', '2012-10-12', ''),
('Lotus to introduce Coanda exhaust', '2012-10-12', ''),
('Michael Schumacher expecting exciting farewell at Brazilian GP', '2012-11-25', 'cvdfv'),
('Jenson Button aiming at second spot in constructorsâ€™ championship', '2012-11-25', 'cvdfv'),
('Whitmarsh admits â€˜team errorsâ€™ scuppered Hamiltonâ€™s title hopes', '2012-11-25', 'cvdfv'),
('Red Bull fear â€˜ticking time bombâ€™ alternator failure could ruin Vettelâ€™s  championship title bid', '2012-11-25', 'cvdfv'),
('Hamilton delighted after buzzing past Vettel to win US Grand Prix', '2012-11-25', 'cvdfv'),
('We will fight till last lap for Alonso: Ferrari chief', '2012-11-25', 'cvdfv'),
('Nico scores for Force India, finishes 8th at US Grand Prix', '2012-11-25', 'cvdfv'),
('US Grand Prix: Lewis Hamilton wins in Texas as Vettel fails to secure title', '2012-11-25', 'cvdfv');

-- --------------------------------------------------------

--
-- Table structure for table `f1schedule`
--

CREATE TABLE IF NOT EXISTS `f1schedule` (
  `sc_id` int(11) NOT NULL,
  `sc_date` date NOT NULL,
  `sc_name` varchar(255) NOT NULL,
  `sc_time` varchar(255) NOT NULL,
  UNIQUE KEY `sc_id` (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f1schedule`
--

INSERT INTO `f1schedule` (`sc_id`, `sc_date`, `sc_name`, `sc_time`) VALUES
(1, '2012-10-28', '2012 FORMULA 1 united states GRAND PRIX practice', '06.00 pm'),
(2, '2012-10-29', '2012 FORMULA 1 unites states GRAND PRIX practice', '12.30 pm'),
(3, '2012-10-30', '2012 FORMULA 1 unites states GRAND PRIX race', '11.30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `fnews`
--

CREATE TABLE IF NOT EXISTS `fnews` (
  `newsname` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `newsarticle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fnews`
--

INSERT INTO `fnews` (`newsname`, `newsdate`, `newsarticle`) VALUES
('Wenger is better than Guardiola ', '2012-10-12', ''),
('Rooney ready to play "Cantona" role', '2012-10-11', ''),
('Fletcher hoping for league chance', '2012-10-13', ''),
('I need to be more of a threat for Manchester United, says Kagawa', '2012-10-13', ''),
('The Premier League has evolved, says Arsenal boss Wenger', '2012-10-12', ''),
('Europa League: Liverpool held by Yong Boys ', '2012-11-25', 'cvdfv'),
('I am not friends with Ronaldo outside of football, says Xabi Alonso ', '2012-11-25', 'cvdfv'),
('FA takes no further action against Clattenburg while Mikel is charged ', '2012-11-25', 'cvdfv'),
('Didier Drogba refused permission to leave Shanghai Shenhua on loan ', '2012-11-25', 'cvdfv'),
('Mancini says Man City job â€˜safeâ€™ despite second consecutive CL loss ', '2012-11-25', 'cvdfv'),
('Benitez confirmed as interim Chelsea coach ', '2012-11-25', 'cvdfv'),
('Di Matteo `honoured` to manage Chelsea after sacking ', '2012-11-25', 'cvdfv'),
('Fines will not prevent racist chanting, insists Villas-Boas ', '2012-11-25', 'cvdfv');

-- --------------------------------------------------------

--
-- Table structure for table `fschedule`
--

CREATE TABLE IF NOT EXISTS `fschedule` (
  `sc_id` int(11) NOT NULL,
  `sc_date` date NOT NULL,
  `sc_name` varchar(255) NOT NULL,
  `sc_time` varchar(255) NOT NULL,
  UNIQUE KEY `sc_id` (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fschedule`
--

INSERT INTO `fschedule` (`sc_id`, `sc_date`, `sc_name`, `sc_time`) VALUES
(1, '2012-10-23', 'Brazil V Iraq ', '1:00 pm'),
(2, '2012-10-24', 'R. of Ireland V Germany', '3:00 pm'),
(3, '2012-10-25', 'Belarus V Spain', '3:00 pm'),
(4, '2012-10-26', 'Russia V Portugal', '9:00 pm'),
(5, '2012-10-27', 'Tottenham v Chelsea', '12:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `newsid` int(11) NOT NULL,
  `newsdate` date NOT NULL,
  `newsname` varchar(255) NOT NULL,
  `newsarticle_id` int(11) NOT NULL,
  UNIQUE KEY `newsid` (`newsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsid`, `newsdate`, `newsname`, `newsarticle_id`) VALUES
(1, '2012-10-10', 'Mahmood stars as Auckland qualify', 0),
(2, '2012-10-10', 'Kevin Curran dies aged 53', 0),
(3, '2012-10-10', 'Wenger is better than Guardiola ', 0),
(4, '2012-10-10', 'Rooney ready to play "Cantona" role', 0),
(5, '2012-10-10', 'Fletcher hoping for league chance', 0),
(6, '2012-10-10', 'Roy Brindley anticipates the Japanese GP', 0),
(7, '2012-10-10', 'Red Bull boost due to exhaust,not DRS report.', 0),
(8, '2012-10-11', 'Mascarenhas slams Centurion pitch', 0),
(9, '2012-10-11', 'No problem having a beer with KP - Broad', 0),
(10, '2012-10-11', 'Lowe: McLaren still in the hunt', 0),
(11, '2012-10-11', 'Ferrari look to bridge gap to RBR', 0),
(12, '2012-10-11', 'Lotus to introduce Coanda exhaust', 0),
(13, '2012-10-11', 'I need to be more of a threat for Manchester United, says Kagawa', 0),
(14, '2012-10-11', 'The Premier League has evolved, says Arsenal boss Wenger', 0);

-- --------------------------------------------------------

--
-- Table structure for table `playercbat`
--

CREATE TABLE IF NOT EXISTS `playercbat` (
  `pid` int(3) NOT NULL,
  `t_mat` int(3) DEFAULT NULL,
  `t_runs` int(5) DEFAULT NULL,
  `t_hs` varchar(4) DEFAULT NULL,
  `t_avg` double DEFAULT NULL,
  `t_100` int(3) DEFAULT NULL,
  `t_50` int(3) DEFAULT NULL,
  `o_mat` int(3) DEFAULT NULL,
  `o_runs` int(5) DEFAULT NULL,
  `o_hs` varchar(4) DEFAULT NULL,
  `o_avg` double DEFAULT NULL,
  `o_100` int(3) DEFAULT NULL,
  `o_50` int(3) DEFAULT NULL,
  `t20_mat` int(3) DEFAULT NULL,
  `t20_runs` int(5) DEFAULT NULL,
  `t20_hs` varchar(4) DEFAULT NULL,
  `t20_avg` double DEFAULT NULL,
  `t20_100` int(3) DEFAULT NULL,
  `t20_50` int(3) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playercbat`
--

INSERT INTO `playercbat` (`pid`, `t_mat`, `t_runs`, `t_hs`, `t_avg`, `t_100`, `t_50`, `o_mat`, `o_runs`, `o_hs`, `o_avg`, `o_100`, `o_50`, `t20_mat`, `t20_runs`, `t20_hs`, `t20_avg`, `t20_100`, `t20_50`) VALUES
(0, 0, 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 13, 441, '42', 40.09, 0, 3, 11, 125, '42', 25, 0, 0),
(12, 83, 6097, '329*', 48.77, 19, 22, 221, 7287, '130', 45.48, 7, 54, 34, 488, '67', 21.21, 0, 1),
(13, 2, 27, '16', 9, 0, 0, 37, 54, '13*', 9, 0, 0, 6, 9, '6*', 9, 0, 0),
(14, 12, 212, '68*', 17.66, 0, 1, 21, 48, '21', 8, 0, 0, 3, 2, '2*', NULL, 0, 0),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 64, 1668, '111', 32.7, 1, 13, 38, 756, '88*', 23.62, 0, 3),
(16, 76, 1451, '64', 20.15, 0, 5, 221, 1176, '59', 17.81, 0, 3, 25, 101, '43*', 16.83, 0, 0),
(17, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8, '8*', NULL, 0, 0, 3, 49, '36', 24.5, 0, 0),
(18, 5, 120, '37*', 30, 0, 0, 11, 36, '13', 12, 0, 0, 4, 5, '5*', NULL, 0, 0),
(19, 5, 259, '77', 28.77, 0, 2, 32, 372, '46*', 21.88, 0, 0, 20, 165, '34', 15, 0, 0),
(21, 9, 214, '43', 17.85, 0, 0, 133, 657, '35', 12.63, 0, 0, 23, 27, '9', 3.85, 0, 0),
(22, 17, 584, '85', 17.69, 0, 2, 69, 1235, '115', 19.6, 1, 5, 7, 57, '19', 11.4, 0, 0),
(23, NULL, NULL, NULL, NULL, NULL, NULL, 34, 412, '50', 16.48, 0, 1, 8, 56, '19', 9.33, 0, 0),
(24, 18, 942, '106', 26.91, 1, 7, 54, 1196, '100', 23, 1, 6, 7, 159, '71', 22.71, 0, 1),
(25, 57, 2419, '158*', 22.6, 5, 8, 171, 3397, '109', 22.49, 3, 20, 22, 407, '65', 18.5, 0, 2),
(26, 4, 209, '79', 29.85, 0, 1, 14, 419, '100', 41.9, 1, 3, 10, 193, '50*', 32.16, 0, 2),
(27, 9, 336, '65', 19.76, 0, 1, 55, 1308, '89', 27.82, 0, 8, 5, 51, '18', 10.05, 0, 0),
(28, 6, 149, '53', 13.54, 0, 1, 45, 103, '24*', 6.05, 0, 0, 8, 18, '16', 6, 0, 0),
(29, 26, 1630, '134', 34.68, 2, 9, 126, 3635, '134*', 35.63, 5, 25, 24, 423, '84', 17.62, 0, 2),
(31, 73, 692, '34', 11.34, 0, 0, 164, 204, '20*', 6.58, 0, 0, 19, 1, '1*', 1, 0, 0),
(32, 13, 575, '143', 31.94, 3, 0, 83, 1899, '96', 30.62, 0, 10, 22, 365, '59', 20.27, 0, 2),
(33, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(34, 83, 6555, '294', 47.84, 20, 29, 56, 2121, '137', 40.01, 5, 13, 4, 61, '26', 15.25, 0, 0),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 320, '99', 32, 0, 3),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, '1', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 42, 208, '26', 5.47, 0, 0, 26, 26, '13', 5.2, 0, 0, 1, 1, '1', 1, 0, 0),
(38, 58, 3068, '131*', 42.61, 6, 22, 68, 1282, '87', 24.18, 0, 3, 10, 127, '32', 21.16, 0, 0),
(39, 2, 48, '34', 16, 0, 0, 1, 1, '1', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 8, 353, '103', 39.22, 1, 1, 40, 264, '38', 18.85, 0, 0, 14, 52, '17*', 52, 0, 0),
(42, 69, 3692, '148', 38.45, 5, 26, 211, 6908, '183*', 51.17, 7, 46, 37, 629, '48*', 29.95, 0, 0),
(43, 50, 3770, '206', 44.35, 9, 19, 139, 5077, '150*', 40.94, 11, 33, 32, 827, '75', 28.51, 0, 7),
(44, 85, 1121, '75', 12.18, 0, 3, 200, 792, '34', 12, 0, 0, 16, 13, '9', 6.5, 0, 0),
(45, 134, 8781, '281', 45.97, 17, 56, 86, 2338, '131', 30.76, 6, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 29, 1105, '102', 31.57, 1, 6, 120, 1544, '83', 23.39, 0, 5, 23, 172, '33*', 24.57, 0, 0),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 12, 349, '91', 29.08, 0, 2, 3, 82, '61', 27.33, 0, 1),
(48, 45, 432, '31*', 10.28, 0, 0, 47, 47, '13', 4.7, 0, 0, 11, 8, '5*', NULL, 0, 0),
(49, 190, 15533, '248*', 55.08, 51, 65, 463, 18426, '200*', 44.83, 49, 96, 1, 10, '10', 10, 0, 0),
(51, 6, 45, '8*', 5.62, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 11, 225, '43', 12.5, 0, 0, 6, 14, '8*', 4.66, 0, 0, 10, 34, '20', 11.33, 0, 0),
(53, 0, 0, '', 0, 0, 0, 8, 128, '33', 18.28, 0, 0, 2, 3, '2*', 3, 0, 0),
(54, 5, 76, '27', 10.85, 0, 0, 34, 93, '28', 15.5, 0, 0, 11, 21, '7', 10.5, 0, 0),
(55, NULL, NULL, NULL, NULL, NULL, NULL, 7, 136, '48', 22.66, 0, 0, 2, 34, '19', 17, 0, 0),
(56, 1, 25, '20*', 25, 0, 0, 19, 12, '4*', 4, 0, 0, 2, 0, '0', 0, 0, 0),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, '3*', NULL, 0, 0),
(58, 33, 1780, '133', 36.32, 5, 6, 159, 2432, '101*', 24.32, 1, 13, 35, 464, '66*', 20.17, 0, 2),
(59, 41, 3025, '154*', 42.6, 7, 16, 112, 3323, '131*', 38.19, 6, 20, 46, 849, '63', 24.97, 0, 4),
(61, 46, 1946, '134', 28.61, 3, 7, 265, 5080, '112', 29.7, 3, 23, 29, 361, '46*', 22.56, 0, 0),
(62, NULL, NULL, NULL, NULL, NULL, NULL, 19, 477, '115', 26.5, 2, 0, 8, 145, '54', 18.12, 0, 1),
(63, 24, 1811, '157', 45.27, 4, 13, 12, 441, '96', 49, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 8, 19, '8', 3.8, 0, 0, 13, 2, '1*', 2, 0, 0, 3, 3, '3*', NULL, 0, 0),
(65, 36, 2284, '161*', 45.68, 3, 17, 106, 2995, '93*', 42.18, 0, 20, 39, 788, '87*', 37.52, 0, 3),
(66, 36, 487, '49', 11.59, 0, 0, 85, 314, '46', 11.62, 0, 0, 5, 9, '5*', NULL, 0, 0),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5, '5*', NULL, 0, 0),
(68, 27, 1716, '156', 36.51, 5, 8, 349, 7075, '124', 23.34, 6, 33, 54, 827, '54*', 17.59, 0, 4),
(69, 2, 17, '13', 5.66, 0, 0, 50, 283, '59', 13.37, 0, 1, 25, 60, '17*', 8.57, 0, 0),
(71, 62, 4946, '311*', 49.95, 16, 23, 62, 3216, '150', 59.55, 10, 19, 14, 269, '47*', 22.41, 0, 0),
(72, 147, 5515, '125', 30.3, 5, 35, 295, 4686, '147*', 28.57, 1, 26, 25, 268, '36*', 17.86, 0, 0),
(73, 16, 789, '166', 37.57, 2, 4, 94, 2601, '129', 40.01, 2, 15, 41, 936, '96*', 33.42, 0, 4),
(74, 10, 78, '29*', 11.14, 0, 0, 5, 1, '1*', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 10, '5*', 5, 0, 0),
(76, NULL, NULL, NULL, NULL, NULL, NULL, 16, 267, '59', 29.66, 0, 2, 8, 153, '36*', 30.6, 0, 0),
(77, 2, 37, '32', 19, 0, 0, 28, 184, '32', 19, 0, 0, 10, 91, '32', 13, 0, 0),
(78, 6, 163, '61', 27.16, 0, 1, 60, 312, '36', 19.5, 0, 0, 15, 97, '34', 19.4, 0, 0),
(79, 49, 2548, '222*', 36.4, 6, 11, 45, 1174, '87', 35.57, 0, 7, 1, 6, '6*', NULL, 0, 0),
(81, 4, 279, '65', 34.87, 0, 3, 45, 1242, '111', 34.5, 2, 8, 11, 168, '56', 16.8, 0, 1),
(82, 1, 12, '12', 12, 0, 0, 3, 3, '2', 1.5, 0, 0, 1, 6, '6', 6, 0, 0),
(83, 40, 634, '80*', 14.4, 0, 1, 35, 56, '17*', 9.33, 0, 0, 5, 1, '1*', NULL, 0, 0),
(84, 10, 99, '18', 7.61, 0, 0, 28, 239, '56', 17.07, 0, 1, 7, 8, '6', 4, 0, 0),
(85, 12, 72, '18', 7.2, 0, 0, 15, 1, '1*', 0.33, 0, 0, 2, NULL, NULL, NULL, NULL, NULL),
(86, 26, 1283, '105*', 38.87, 1, 8, 81, 1642, '80*', 34.2, 0, 11, 33, 403, '58', 25.18, 0, 1),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 30, '17', 15, 0, 0),
(88, 10, 241, '47', 21.9, 0, 0, 12, 63, '31*', 21, 0, 0, 1, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, NULL, NULL, 7, 63, '22*', 21, 0, 0, 2, 1, '1', 1, 0, 0),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '1', 1, 0, 0),
(92, 16, 291, '95', 13.85, 0, 1, 15, 67, '24', 11.16, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 40, 2200, '113', 31.42, 3, 13, 129, 2165, '112*', 24.05, 1, 7, 30, 548, '66*', 28.84, 0, 3),
(94, NULL, NULL, NULL, NULL, NULL, NULL, 8, 152, '45', 19, 0, 0, 11, 298, '84', 29.8, 0, 1),
(95, 9, 665, '121', 39.11, 2, 4, 9, 153, '40*', 19.12, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 93, 6603, '333', 42.32, 11, 34, 234, 8360, '153*', 39.43, 20, 45, 28, 901, '117', 36.04, 1, 9),
(97, NULL, NULL, NULL, NULL, NULL, NULL, 63, 1419, '119', 25.8, 2, 5, 29, 371, '63*', 18.55, 0, 2),
(98, 17, 330, '40*', 15, 0, 0, 70, 314, '86*', 13.08, 0, 1, 17, 12, '8', 12, 0, 0),
(99, 29, 1066, '106', 22.2, 1, 3, 82, 978, '84', 21.26, 0, 3, 34, 212, '30', 10.6, 0, 0),
(110, 9, 590, '180', 42.14, 2, 1, 35, 1050, '163', 30.88, 2, 5, 40, 1100, '89', 28.2, 0, 8),
(111, 2, 6, '2*', 3, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 7, 358, '74', 29.83, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 104, '53*', 104, 0, 1),
(114, 24, 337, '56*', 14.04, 0, 1, 25, 29, '16', 9.66, 0, 0, 7, 2, '2', 1, 0, 0),
(115, 73, 5708, '195', 50.07, 16, 28, 185, 5442, '109*', 48.15, 3, 39, 36, 649, '60*', 36.05, 0, 3),
(210, 6, 37, '19', 4.62, 0, 0, 52, 81, '15', 5.06, 0, 0, 8, 7, '6', 3.5, 0, 0),
(211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 9, '9', 9, 0, 0),
(212, 3, 38, '20*', 9.5, 0, 0, 2, 1, '1', 1, 0, 0, 7, 9, '5', 4.5, 0, 0),
(213, 16, 549, '75', 17.15, 0, 1, 48, 1315, '101', 27.97, 1, 9, 4, 24, '22', 6, 0, 0),
(214, 12, 664, '115', 30.18, 1, 4, 80, 1427, '68*', 31.02, 0, 6, 20, 181, '41', 9.52, 0, 0),
(215, 28, 1480, '101', 29.01, 1, 9, 108, 2047, '101', 25.27, 1, 10, 25, 251, '41*', 14.76, 0, 0),
(310, 34, 2676, '226', 50.49, 7, 12, 54, 2208, '137', 49.06, 3, 18, 7, 138, '51', 23, 0, 1),
(311, 4, 187, '95', 37.4, 0, 2, 7, 119, '41*', 23.8, 0, 0, 15, 148, '60*', 18.5, 0, 1),
(312, NULL, NULL, NULL, NULL, NULL, NULL, 2, 18, '15', 9, 0, 0, 1, 14, '14', 14, 0, 0),
(313, 50, 1578, '169', 26.74, 1, 9, 93, 415, '45', 12.57, 0, 0, 43, 66, '18*', 6.6, 0, 0),
(314, NULL, NULL, NULL, NULL, NULL, NULL, 18, 15, '5', 3.75, 0, 0, 16, 17, '12', 8.5, 0, 0),
(315, NULL, NULL, NULL, NULL, NULL, NULL, 43, 1012, '107', 30.66, 1, 5, 25, 526, '63', 21.91, 0, 3),
(410, 1, 11, '6', 5.5, 0, 0, 22, 43, '18', 7.16, 0, 0, 8, 2, '2*', 0, 0, 0),
(411, 8, 51, '31', 5.66, 0, 0, 30, 120, '21*', 12, 0, 0, 4, NULL, NULL, NULL, NULL, NULL),
(412, NULL, NULL, NULL, NULL, NULL, NULL, 10, 18, '16', 6, 0, 0, 5, 19, '19', 19, 0, 0),
(413, 98, 2164, '115', 18.65, 2, 9, 229, 1190, '49', 13.22, 0, 0, 25, 100, '21', 14.28, 0, 0),
(414, 10, 703, '116', 41.35, 2, 5, 90, 3886, '183', 51.81, 13, 21, 15, 461, '78*', 41.9, 0, 4),
(415, 16, 74, '18*', 14.8, 0, 0, 18, 46, '16*', 23, 0, 0, 6, 10, '10*', NULL, 0, 0),
(510, 2, 46, '23', 11.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13, '13', 13, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 7, 375, '77*', 31.25, 0, 3, 3, 22, '19', 11, 0, 0, 4, 6, '5', 1.5, 0, 0),
(513, 20, 890, '95', 27.81, 0, 4, 20, 228, '35', 15.2, 0, 0, 5, 59, '23', 11.8, 0, 0),
(514, 26, 1625, '189', 33.85, 2, 12, 65, 2151, '122*', 37.73, 2, 17, 36, 893, '91*', 30.79, 0, 4),
(515, 68, 3978, '225', 35.83, 6, 23, 203, 4554, '166', 30.36, 4, 22, 53, 1655, '123', 36.77, 2, 9),
(610, 45, 554, '65*', 10.25, 0, 1, 111, 384, '39', 9.84, 0, 0, 47, 152, '32', 10.85, 0, 0),
(611, 17, 289, '60', 15.21, 0, 1, 25, 104, '31', 8, 0, 0, 7, 15, '7', 7.5, 0, 0),
(612, 7, 1, '1*', NULL, 0, 0, 14, 26, '9*', 8.66, 0, 0, 5, 0, '0*', NULL, 0, 0),
(613, 59, 2327, '128', 31.87, 3, 14, 51, 1549, '107', 31.61, 1, 12, 7, 76, '19', 10.85, 0, 0),
(614, 53, 2648, '158*', 30.79, 6, 12, 140, 2930, '124', 27.12, 5, 9, 45, 809, '73', 23.79, 0, 5),
(615, 1, 47, '25', 23.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, '5', 5, 0, 0, 9, 32, '31*', NULL, 0, 0),
(711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 69, '31*', 69, 0, 0),
(712, 2, 9, '9', 4.5, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(713, NULL, NULL, NULL, NULL, NULL, NULL, 26, 563, '72', 28.15, 0, 4, 3, 25, '13', 8.33, 0, 0),
(714, NULL, NULL, NULL, NULL, NULL, NULL, 15, 388, '124', 35.27, 2, 0, 9, 210, '78', 26.25, 0, 1),
(715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 231, '117*', 25.66, 1, 1),
(810, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 6, 2, '1*', 2, 0, 0),
(811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(812, 3, 2, '1', 0.5, 0, 0, 2, 0, '0*', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(813, 133, 10540, '374', 50.43, 31, 42, 382, 10772, '144', 33.34, 15, 68, 42, 1149, '100', 31.91, 1, 7),
(814, 8, 418, '96', 34.83, 0, 4, 92, 1521, '95', 22.04, 0, 8, 21, 295, '47', 19.66, 0, 0),
(815, 4, 94, '28*', 23.5, 0, 0, 21, 210, '69', 14, 0, 1, 2, 11, '11', 5.5, 0, 0),
(910, 8, 278, '49', 17.37, 0, 0, 40, 1130, '122', 31.38, 1, 10, 13, 308, '77', 25.66, 0, 2),
(911, 15, 657, '104', 23.46, 1, 4, 14, 394, '113', 30.3, 1, 1, 2, 23, '15', 11.5, 0, 0),
(912, 11, 143, '26', 13, 0, 0, 13, 10, '6*', 2, 0, 0, 4, 0, '0', 0, 0, 0),
(913, 19, 1420, '195', 44.37, 3, 7, 40, 912, '86', 29.41, 0, 6, 7, 118, '42', 19.66, 0, 0),
(914, 14, 588, '82', 29.4, 0, 4, 20, 510, '65*', 31.87, 0, 4, 7, 49, '36*', 9.8, 0, 0),
(915, 3, 122, '55', 30.5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `playercbowl`
--

CREATE TABLE IF NOT EXISTS `playercbowl` (
  `pid` int(3) NOT NULL,
  `t_mat` int(3) DEFAULT NULL,
  `t_wkts` int(3) DEFAULT NULL,
  `t_avg` double DEFAULT NULL,
  `t_eco` double DEFAULT NULL,
  `t_5w` int(3) DEFAULT NULL,
  `o_mat` int(3) DEFAULT NULL,
  `o_wkts` int(3) DEFAULT NULL,
  `o_avg` double DEFAULT NULL,
  `o_eco` double DEFAULT NULL,
  `o_5w` int(3) DEFAULT NULL,
  `t20_mat` int(3) DEFAULT NULL,
  `t20_wkts` int(3) DEFAULT NULL,
  `t20_avg` double DEFAULT NULL,
  `t20_eco` double DEFAULT NULL,
  `t20_5w` int(3) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playercbowl`
--

INSERT INTO `playercbowl` (`pid`, `t_mat`, `t_wkts`, `t_avg`, `t_eco`, `t_5w`, `o_mat`, `o_wkts`, `o_avg`, `o_eco`, `o_5w`, `t20_mat`, `t20_wkts`, `t20_avg`, `t20_eco`, `t20_5w`) VALUES
(11, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL),
(12, 83, 29, 35.48, 2.97, 2, 221, 56, 37.12, 5.01, 1, 34, 6, 37.5, 8.65, 0),
(13, 2, 3, 102, 4.03, 0, 37, 423, 34.07, 4.71, 0, 6, 4, 37.5, 7.5, 0),
(14, 12, 47, 23.63, 2.88, 2, 21, 44, 18.9, 4.84, 3, 3, 4, 23.75, 8.14, 0),
(15, NULL, NULL, NULL, NULL, NULL, 64, 18, 37.44, 5.23, 0, 38, 19, 19.47, 6.36, 0),
(16, 76, 310, 30.81, 3.46, 10, 221, 380, 23.36, 4.76, 9, 25, 28, 25.5, 7.86, 0),
(17, NULL, NULL, NULL, NULL, NULL, 1, 1, 19, 4.75, 0, 3, 1, 41, 8.2, 0),
(18, 5, 26, 18.96, 3.35, 2, 11, 15, 31.2, 5.07, 0, 4, 3, 34.66, 8, 0),
(19, 5, 3, 73.33, 3.54, 0, 32, 22, 34.72, 5.23, 0, 20, 17, 21.94, 7.85, 0),
(21, 9, 18, 65.83, 3.33, 0, 133, 185, 28.12, 4.48, 3, 23, 35, 17.02, 6.69, 0),
(22, 17, 6, 118.16, 3.85, 0, 69, 24, 52.29, 5.18, 0, 7, 2, 17.5, 7, 0),
(23, NULL, NULL, NULL, NULL, NULL, 34, 22, 46.22, 5.35, 1, 8, 4, 43.75, 10.93, 0),
(24, 18, 0, NULL, 3.66, 0, 54, 0, NULL, 6.5, 0, 7, NULL, NULL, NULL, NULL),
(25, 57, 20, 60.4, 4.48, 0, 171, 18, 36.72, 5.69, 0, 22, 8, 26.25, 9.13, 0),
(26, 4, 3, 59.33, 2.54, 0, 14, 3, 54.33, 5.31, 0, 10, 1, 14, 7, 0),
(27, 9, 1, 17, 2.42, 0, 55, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(28, 6, 8, 71.12, 3.42, 0, 45, 51, 35.96, 5.86, 0, 8, 5, 40, 7.79, 0),
(29, 26, 96, 31.36, 2.83, 9, 126, 160, 28.85, 4.29, 0, 24, 27, 22.7, 6.88, 0),
(31, 73, 276, 30.4, 3.11, 12, 164, 222, 30.54, 5.01, 1, 19, 18, 30.66, 7.84, 0),
(32, 13, 1, 290, 4, 0, 83, 20, 37.25, 4.63, 0, 22, 9, 15.66, 6.5, 0),
(33, NULL, NULL, NULL, NULL, NULL, 1, 2, 19.5, 3.9, 0, 2, 2, 26, 8.66, 0),
(34, 83, 0, NULL, 1, 0, 56, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, 2, 2, 55, 5.78, 0, NULL, NULL, NULL, NULL, NULL),
(37, 42, 142, 33.33, 2.79, 10, 26, 24, 40.83, 4.49, 0, 1, 2, 20, 10, 0),
(38, 58, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL),
(39, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 8, 49, 26.63, 3.05, 5, 40, 56, 30.5, 4.78, 0, 14, 11, 36.72, 7.36, 0),
(42, 69, 0, NULL, 4.46, 0, 211, 1, 14, 7, 37, NULL, NULL, NULL, NULL, NULL),
(43, 50, NULL, NULL, NULL, NULL, 139, 0, NULL, 13, NULL, 32, NULL, NULL, NULL, NULL),
(44, 85, 291, 32.06, 3.27, 10, 200, 282, 29.43, 4.93, 1, 16, 14, 30.42, 7.79, 0),
(45, 134, 2, 63, 2.33, 0, 86, 0, NULL, 5.71, 0, NULL, NULL, NULL, NULL, NULL),
(46, 29, 100, 32.26, 3.28, 7, 120, 173, 29.72, 5.27, 2, 23, 27, 21.92, 8, 0),
(47, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(48, 45, 133, 37.87, 3.42, 3, 47, 64, 32.12, 5.72, 0, 11, 6, 48.5, 8.47, 0),
(49, 190, 45, 54.46, 3.51, 0, 463, 154, 44.48, 5.1, 2, 1, 1, 12, 4.8, 0),
(51, 6, 9, 62.88, 3.36, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 11, 40, 28.02, 3.34, 2, 6, 7, 40.14, 5.01, 0, 10, 11, 27.45, 9.24, 0),
(53, NULL, NULL, NULL, NULL, NULL, 8, 5, 43.8, 4.86, 0, 2, 0, NULL, 10, 0),
(54, 5, 22, 28.68, 4.36, 3, 32, 37, 37, 5.4, 0, 11, 10, 25.5, 7.28, 0),
(55, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(56, 1, 1, 120, 3.87, 0, 19, 27, 29.62, 5.18, 0, 2, 2, 15.5, 5.47, 0),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 142, 11.83, 0),
(58, 33, 60, 33.05, 2.39, 0, 159, 173, 28.92, 4.37, 2, 35, 19, 41.57, 8.77, 0),
(59, 41, 2, 21.5, 2.86, 0, 112, 0, NULL, 5, 0, 46, NULL, NULL, NULL, NULL),
(61, 46, 100, 36.94, 3.16, 1, 265, 269, 31.83, 4.69, 3, 30, 20, 19.05, 6.86, 0),
(62, NULL, NULL, NULL, NULL, NULL, 19, 0, NULL, 8, 0, 8, NULL, NULL, NULL, NULL),
(63, 24, 1, 54, 3.6, 0, 12, 0, NULL, 5.12, 0, NULL, NULL, NULL, NULL, NULL),
(64, 8, 27, 26.7, 2.88, 3, 13, 17, 27.52, 5.06, 0, 3, 2, 40, 8, 0),
(65, 36, NULL, NULL, NULL, NULL, 106, 0, NULL, 7.5, 0, 39, NULL, NULL, NULL, NULL),
(66, 36, 85, 52.74, 3.58, 2, 85, 121, 28.52, 4.94, 1, 5, 10, 14.6, 9.12, 0),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 6, 21.33, 5.81, 0),
(68, 27, 48, 35.6, 3.21, 1, 349, 348, 33.69, 4.6, 8, 55, 61, 21.04, 6.2, 0),
(69, 2, 5, 63.2, 3.76, 0, 50, 61, 33.45, 5.14, 1, 25, 23, 25.78, 7.18, 0),
(71, 62, 0, NULL, 4, 0, 62, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL),
(72, 147, 1, 6, 4.5, 0, 295, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL),
(73, 16, 12, 42.5, 3.49, 0, 94, 27, 38.22, 5.01, 0, 41, 7, 24.85, 7.56, 0),
(74, 10, 26, 40.19, 3.25, 0, 5, 14, 10.71, 3.79, 0, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL),
(77, 2, 1, 133, 4.31, 0, 28, 9, 44, 4.41, 0, 10, 1, 25, 12.5, 0),
(78, 6, 14, 35.5, 3.1, 1, 60, 56, 33.94, 4.68, 0, 15, 15, 20.8, 7.83, 0),
(79, 46, 4, 108, 3.9, 0, 45, 0, NULL, 6.5, 0, 1, NULL, NULL, NULL, NULL),
(81, 4, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL),
(82, 1, 5, 25.4, 3, 0, 3, 4, 24.75, 5.21, 0, 1, 2, 15, 7.5, 0),
(83, 40, 154, 31.72, 2.79, 10, 35, 26, 44.65, 4.39, 0, 5, 3, 32, 6.85, 0),
(84, 10, 38, 36.39, 3.12, 1, 28, 33, 30.54, 4.76, 1, 7, 7, 19.85, 6.61, 0),
(85, 12, 19, 59.57, 3.7, 0, 15, 17, 39.41, 6.32, 0, 2, 3, 16.33, 7, 0),
(86, 26, 9, 69.11, 3.14, 0, 81, 48, 35.85, 4.6, 1, 33, 18, 25.94, 6.85, 0),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(88, 10, 19, 59.94, 4.27, 0, 12, 18, 27.61, 5.51, 0, 1, 0, NULL, 12.33, 0),
(89, NULL, NULL, NULL, NULL, NULL, 7, 7, 45.14, 5.01, 0, 2, 2, 18.5, 7.4, 0),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 45.5, 5.68, 0),
(92, 16, 34, 43.64, 3.65, 0, 15, 19, 32.68, 5.27, 0, NULL, NULL, NULL, NULL, NULL),
(93, 40, 86, 39.83, 3.17, 2, 129, 146, 30.73, 5.29, 0, 30, 24, 25.7, 8.56, 0),
(94, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL),
(95, 9, 0, NULL, 4.75, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 93, 72, 41.59, 2.62, 2, 234, 156, 35.08, 4.73, 1, 28, 15, 21.26, 7.38, 0),
(97, NULL, NULL, NULL, NULL, NULL, 63, 38, 35.55, 5.38, 0, 29, 11, 37.27, 8.54, 0),
(98, 17, 44, 35.34, 2.93, 0, 70, 83, 30.4, 5.06, 1, 17, 21, 26.19, 8.73, 0),
(99, 29, 71, 34.07, 2.81, 4, 82, 58, 45.13, 4.59, 0, 34, 33, 19.87, 6.71, 1),
(110, 9, 3, 31.33, 4.27, 0, 35, 0, NULL, 8, 0, 40, NULL, NULL, NULL, NULL),
(111, 2, 3, 59.33, 2.63, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(114, 24, 92, 28.03, 2.86, 2, 25, 29, 37.06, 5.3, 1, 7, 9, 17.88, 6.19, 0),
(115, 73, 7, 34.28, 2.82, 0, 185, 2, 117.5, 5.87, 0, 36, 0, NULL, 5, 0),
(210, 6, 12, 47.75, 3.91, 0, 52, 61, 33.62, 4.63, 0, 8, 4, 50.5, 6.96, 0),
(211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 54, 9.81, 0),
(212, 3, 12, 29.41, 3.39, 0, 2, 3, 27.33, 5.12, 0, 7, 9, 16.22, 6.34, 1),
(213, 16, 0, NULL, 4, 0, 48, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(214, 12, 24, 40.54, 3.39, 1, 80, 44, 46.06, 5.14, 0, 20, 7, 37.57, 7.27, 0),
(215, 28, NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL),
(310, 34, 3, 113, 3.53, 0, 54, 2, 83, 5.44, 0, 7, NULL, NULL, NULL, NULL),
(311, 4, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL),
(312, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 8, 0, 1, 1, 15, 3.75, 0),
(313, 50, 172, 31.02, 3.01, 6, 93, 148, 27.56, 5.17, 1, 43, 48, 23.18, 7.34, 0),
(314, NULL, NULL, NULL, NULL, NULL, 18, 25, 36.8, 6.04, 0, 16, 18, 23.16, 7.58, 0),
(315, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL),
(410, 1, 1, 73, 5.61, 0, 22, 28, 33.03, 5.61, 0, 8, 7, 31.57, 8.03, 0),
(411, 8, 27, 37.18, 3.43, 1, 30, 34, 39.52, 5.57, 0, 4, 7, 12, 6.9, 0),
(412, NULL, NULL, NULL, NULL, NULL, 10, 9, 52.44, 6.3, 0, 5, 10, 12.1, 8.06, 0),
(413, 98, 406, 32.22, 2.83, 25, 229, 259, 33.4, 4.3, 3, 25, 22, 26.04, 6.36, 0),
(414, 10, 0, NULL, 3.18, 0, 90, 2, 138, 5.67, 0, 15, 3, 42.66, 7.24, 0),
(415, 16, 75, 31.82, 2.75, 3, 18, 21, 31.04, 4.46, 0, 6, 10, 13.2, 6.28, 0),
(510, 2, 4, 52.25, 3.48, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, NULL, NULL, NULL, NULL, NULL, 2, 2, 26, 3.71, 0, 3, 4, 26.75, 9.72, 0),
(512, 7, 1, 52, 4.72, 0, 3, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(513, 20, NULL, NULL, NULL, NULL, 20, 0, NULL, 6.25, 0, 5, 0, NULL, 7, 0),
(514, 26, 5, 43.4, 4.31, 0, 65, 2, 27.5, 4.92, 0, 36, 0, NULL, 11, 0),
(515, 68, 0, NULL, 3, 0, 203, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL),
(610, 45, 158, 33.66, 3.45, 4, 111, 158, 27.79, 5.08, 2, 48, 61, 18.47, 6.92, 1),
(611, 17, 81, 28.4, 2.57, 2, 25, 21, 45.19, 4.23, 0, 7, 11, 15.81, 6.96, 0),
(612, 7, 20, 31.9, 3.19, 0, 14, 23, 25.78, 5.4, 0, 5, 8, 14.5, 6.82, 0),
(613, 39, 3, 94.66, 3.99, 0, 51, 6, 18.33, 5.68, 0, 7, NULL, NULL, NULL, NULL),
(614, 53, NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL),
(615, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, NULL, NULL, NULL, NULL, NULL, 4, 12, 14.41, 5.35, 1, 9, 12, 21.75, 8.07, 0),
(711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(712, 2, 9, 30.77, 3.7, 1, 1, 4, 11.5, 5.11, 0, 2, 3, 26.33, 9.87, 0),
(713, NULL, NULL, NULL, NULL, NULL, 26, 2, 61.5, 5.59, 0, 3, NULL, NULL, NULL, NULL),
(714, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL),
(715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL),
(810, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 7, 0, 6, 5, 36.4, 8.27, 0),
(811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, 14.5, 7.25, 0),
(812, 3, 1, 345, 4.1, 0, 2, 3, 38.33, 6.38, 0, NULL, NULL, NULL, NULL, NULL),
(813, 133, 6, 49.5, 3.22, 0, 382, 7, 79.71, 5.75, 0, 42, 0, NULL, 8, 0),
(814, 8, 0, NULL, 4.5, 0, 92, 2, 112.5, 5.11, 0, 21, NULL, NULL, NULL, NULL),
(815, 4, 5, 59, 2.97, 0, 21, 31, 23.38, 4.3, 0, 2, 2, 24, 8, 0),
(910, 8, 1, 147, 4.59, 0, 40, 1, 82, 5.46, 0, 13, 6, 9.16, 9.16, 0),
(911, 15, 0, NULL, 4, 0, 14, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(912, 11, 40, 39.55, 3.11, 1, 13, 20, 23.8, 4.28, 0, 4, 6, 16.33, 6.25, 0),
(913, 19, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL),
(914, 14, 19, 27.94, 2.72, 0, 20, 6, 52, 5.83, 0, 7, 0, NULL, 8.33, 0),
(915, 3, 0, NULL, 2.2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `playerf`
--

CREATE TABLE IF NOT EXISTS `playerf` (
  `pid` int(3) NOT NULL,
  `cid` int(2) NOT NULL,
  `pname` text NOT NULL,
  `img` varchar(255) NOT NULL,
  UNIQUE KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerf`
--

INSERT INTO `playerf` (`pid`, `cid`, `pname`, `img`) VALUES
(11, 1, 'George Bailey', 'cricket/11.jpg'),
(12, 1, 'Michael Clarke', 'cricket/12.jpg'),
(13, 1, 'Xavier Doherty', 'cricket/13.jpg'),
(14, 1, 'Ryan Harris', 'cricket/14.jpg'),
(15, 1, 'David Hussey', 'cricket/15.jpg'),
(16, 1, 'Brett Lee', 'cricket/16.jpg'),
(17, 1, 'Mitchell Marsh', 'cricket/17.jpg'),
(18, 1, 'James Pattinson', 'cricket/18.jpg'),
(19, 1, 'Steven Smith', 'cricket/19.jpg'),
(21, 2, 'Abdur Razzak', 'cricket/21.jpg'),
(22, 2, 'Alok Kapali', 'cricket/22.jpg'),
(23, 2, 'Farhad Reza', 'cricket/23.jpg'),
(24, 2, 'Junaid Siddique', 'cricket/24.jpg'),
(25, 2, 'Mohammad Ashraful ', 'cricket/25.jpg'),
(26, 2, 'Nasir Hossain', 'cricket/26.jpg'),
(27, 2, 'Raqibul Hasan', 'cricket/27.jpg'),
(28, 2, 'Shafiul Islam', 'cricket/28.jpg'),
(29, 2, 'Shakib Al Hasan', 'cricket/29.jpg'),
(31, 3, 'James Anderson', 'cricket/31.jpg'),
(32, 3, 'Ravi Bopara', 'cricket/32.jpg'),
(33, 3, 'Danny Briggs', 'cricket/33.jpg'),
(34, 3, 'Alastair Cook', 'cricket/34.jpg'),
(35, 3, 'Alex Hales', 'cricket/35.jpg'),
(36, 3, 'Stuart Meaker', 'cricket/36.jpg'),
(37, 3, 'Monty Panesar', 'cricket/37.jpg'),
(38, 3, 'Matt Prior', 'cricket/38.jpg'),
(39, 3, 'James Taylor', 'cricket/39.jpg'),
(41, 4, 'Ravichandran Ashwin', 'cricket/41.jpg'),
(42, 4, 'MS Dhoni', 'cricket/42.jpg'),
(43, 4, 'Gautam Gambhir', 'cricket/43.jpg'),
(44, 4, 'Zaheer Khan', 'cricket/44.jpg'),
(45, 4, 'VVS Laxman', 'cricket/45.jpg'),
(46, 4, 'Irfan Pathan', 'cricket/46.jpg'),
(47, 4, 'Ajinkya Rahane', 'cricket/47.jpg'),
(48, 4, 'Ishant Sharma', 'cricket/48.jpg'),
(49, 4, 'Sachin Tendulkar', 'cricket/49.jpg'),
(51, 5, 'Brent Arnel', 'cricket/51.jpg'),
(52, 5, 'Doug Bracewell', 'cricket/52.jpg'),
(53, 5, 'Andrew Ellis', 'cricket/53.jpg'),
(54, 5, 'Mark Gillespie', 'cricket/54.jpg'),
(55, 5, 'Tom Latham', 'cricket/55.jpg'),
(56, 5, 'Andy McKay', 'cricket/56.jpg'),
(57, 5, 'Adam Milne', 'cricket/57.jpg'),
(58, 5, 'Jacob Oram', 'cricket/58.jpg'),
(59, 5, 'Ross Taylor', 'cricket/59.jpg'),
(61, 6, 'Abdul Razzaq', 'cricket/61.jpg'),
(62, 6, 'Ahmed Shehzad', 'cricket/62.jpg'),
(63, 6, 'Azhar Ali', 'cricket/63.jpg'),
(64, 6, 'Junaid Khan', 'cricket/64.jpg'),
(65, 6, 'Misbah ul Haq', 'cricket/65.jpg'),
(66, 6, 'Mohammad Sami', 'cricket/66.jpg'),
(67, 6, 'Raza Hasan', 'cricket/67.jpg'),
(68, 6, 'Shahid Afridi', 'cricket/68.jpg'),
(69, 6, 'Sohail Tanvir', 'cricket/69.jpg'),
(71, 7, 'Hashim Amla', 'cricket/71.jpg'),
(72, 7, 'Mark Boucher', 'cricket/72.jpg'),
(73, 7, 'Jean Paul Duminy', 'cricket/73.jpg'),
(74, 7, 'Imran Tahir', 'cricket/74.jpg'),
(75, 7, 'Heino Kuhn', 'cricket/75.jpg'),
(76, 7, 'David Miller', 'cricket/76.jpg'),
(77, 7, 'Justin Ontong', 'cricket/77.jpg'),
(78, 7, 'Robin Peterson', 'cricket/78.jpg'),
(79, 7, 'Jacques Rudolph', 'cricket/79.jpg'),
(81, 8, 'Dinesh Chandimal', 'cricket/81.jpg'),
(82, 8, 'Shaminda Eranga', 'cricket/82.jpg'),
(83, 8, 'Rangana Herath', 'cricket/83.jpg'),
(84, 8, 'Suraj Randiv', 'cricket/84.jpg'),
(85, 8, 'Suranga Lakmal', 'cricket/85.jpg'),
(86, 8, 'Angelo Mathews', 'cricket/86.jpg'),
(87, 8, 'Dilshan Munaweera', 'cricket/87.jpg'),
(88, 8, 'Dhammika Prasad', 'cricket/88.jpg'),
(89, 8, 'Sachithra Senanayake', 'cricket/89.jpg'),
(91, 9, 'Samuel Badree', 'cricket/91.jpg'),
(92, 9, 'Tino Best', 'cricket/92.jpg'),
(93, 9, 'Dwayne Bravo', 'cricket/93.jpg'),
(94, 9, 'Johnson Charles', 'cricket/94.jpg'),
(95, 9, 'Kirk Edwards', 'cricket/95.jpg'),
(96, 9, 'Chris Gayle', 'cricket/96.jpg'),
(97, 9, 'Kieron Pollard', 'cricket/97.jpg'),
(98, 9, 'Ravi Rampaul', 'cricket/98.jpg'),
(99, 9, 'Darren Sammy', 'cricket/99.jpg'),
(110, 1, 'David Warner', 'cricket/110.jpg'),
(111, 1, 'Michael Beer', 'cricket/111.jpg'),
(112, 1, 'Ed Cowan', 'cricket/112.jpg'),
(113, 1, 'Aaron Finch', 'cricket/113.jpg'),
(114, 1, 'Ben Hilfenhaus', 'cricket/114.jpg'),
(115, 1, 'Michael Hussey', 'cricket/115.jpg'),
(210, 2, 'Syed Rasel', 'cricket/210.jpg'),
(211, 2, 'Abul Hasan', 'cricket/211.jpg'),
(212, 2, 'Elias Sunny', 'cricket/212.jpg'),
(213, 2, 'Imrul Kayes', 'cricket/213.jpg'),
(214, 2, 'Mahmudullah', 'cricket/214.jpg'),
(215, 2, 'Mushfiqur Rahim', 'cricket/215.jpg'),
(310, 3, 'Jonathan Trott', 'cricket/310.jpg'),
(311, 3, 'Jonny Bairstow', 'cricket/311.jpg'),
(312, 3, 'Scott Borthwick', 'cricket/312.jpg'),
(313, 3, 'Stuart Broad', 'cricket/313.jpg'),
(314, 3, 'Jade Dernbach', 'cricket/314.jpg'),
(315, 3, 'Craig Kieswetter', 'cricket/315.jpg'),
(410, 4, 'Vinay Kumar', 'cricket/410.jpg'),
(411, 4, 'Lakshmipathy Balaji', 'cricket/411.jpg'),
(412, 4, 'Ashok Dinda', 'cricket/412.jpg'),
(413, 4, 'Harbhajan Singh', 'cricket/413.jpg'),
(414, 4, 'Virat Kohli', 'cricket/414.jpg'),
(415, 4, 'Pragyan Ojha', 'cricket/415.jpg'),
(510, 5, 'Neil Wagner', 'cricket/510.jpg'),
(511, 5, 'Michael Bates', 'cricket/511.jpg'),
(512, 5, 'Dean Brownlie', 'cricket/512.jpg'),
(513, 5, 'Daniel Flynn', 'cricket/513.jpg'),
(514, 5, 'Martin Guptill', 'cricket/514.jpg'),
(515, 5, 'Brendon McCullum', 'cricket/515.jpg'),
(610, 6, 'Umar Gul', 'cricket/610.jpg'),
(611, 6, 'Abdur Rehman', 'cricket/611.jpg'),
(612, 6, 'Aizaz Cheema', 'cricket/612.jpg'),
(613, 6, 'Imran Farhat', 'cricket/613.jpg'),
(614, 6, 'Kamran Akmal', 'cricket/614.jpg'),
(615, 6, 'Mohammad Ayub', 'cricket/615.jpg'),
(710, 7, 'Rusty Theron', 'cricket/710.jpg'),
(711, 7, 'Farhaan Behardien', 'cricket/711.jpg'),
(712, 7, 'Marchant de Lange', 'cricket/712.jpg'),
(713, 7, 'Faf du Plessis', 'cricket/713.jpg'),
(714, 7, 'Colin Ingram', 'cricket/714.jpg'),
(715, 7, 'Richard Levi', 'cricket/715.jpg'),
(810, 8, 'Isuru Udana', 'cricket/810.jpg'),
(811, 8, 'Akila Dananjaya', 'cricket/811.jpg'),
(812, 8, 'Nuwan Pradeep', 'cricket/812.jpg'),
(813, 8, 'Mahela Jayawardene', 'cricket/813.jpg'),
(814, 8, 'Chamara Kapugedera', 'cricket/814.jpg'),
(815, 8, 'Kaushal Lokuarachchi', 'cricket/815.jpg'),
(910, 9, 'Lendl Simmons', 'cricket/910.jpg'),
(911, 9, 'Adrian Barath', 'cricket/911.jpg'),
(912, 9, 'Devendra Bishoo', 'cricket/912.jpg'),
(913, 9, 'Darren Bravo', 'cricket/913.jpg'),
(914, 9, 'Narsingh Deonarine', 'cricket/914.jpg'),
(915, 9, 'Assad Fudadin', 'cricket/915.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `playerf1`
--

CREATE TABLE IF NOT EXISTS `playerf1` (
  `pid` int(3) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `teamid` int(2) NOT NULL,
  `team` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `podiums` int(3) NOT NULL,
  `points` double NOT NULL,
  `gpe` int(4) NOT NULL,
  `wc` int(3) NOT NULL,
  `hrf` varchar(10) NOT NULL,
  `hgp` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerf1`
--

INSERT INTO `playerf1` (`pid`, `pname`, `teamid`, `team`, `nationality`, `podiums`, `points`, `gpe`, `wc`, `hrf`, `hgp`, `dob`, `pob`, `image`) VALUES
(11, 'Sebastian Vettel', 1, 'Red Bull Racing', 'German', 41, 938, 95, 2, '1 (x23)', '1 (x33)', '1987-07-03', 'Heppemheim', 'formula1/11.jpg'),
(12, 'Mark Webber', 1, 'Red Bull Racing', 'Australian', 32, 801.5, 192, 0, '1 (x9)', '1 (x10)', '1976-08-27', 'Queanbeyan', 'formula1/12.jpg'),
(21, 'Jenson Button', 2, 'McLaren', 'British ', 48, 930, 224, 1, '1 (x14)', '1 (x8)', '1980-01-19', 'Somerset', 'formula1/21.jpg'),
(22, 'Lewis Hamilton', 2, 'McLaren', 'British', 48, 865, 104, 1, '1 (x20)', '1 (x24)', '1985-01-07', 'Stevenage', 'formula1/22.jpg'),
(31, 'Fernando Alonso', 3, 'Ferrari', 'Spanish', 81, 1280, 192, 2, '1 (x30)', '1 (x22)', '1981-07-29', 'Oviedo', 'formula1/31.jpg'),
(32, 'Felipe Massa', 3, 'Ferrari', 'Brazilian', 33, 633, 167, 0, '1 (x11)', '1 (x15)', '1981-04-25', 'Sao Paulo', 'formula1/32.jpg'),
(41, 'Kimi Raikkonen', 4, 'Lotus', 'Finnish', 68, 728, 171, 1, '1 (x18)', '1 (x16)', '1979-10-17', 'Espoo', 'formula1/41.jpg'),
(42, 'Romain Grosjean', 4, 'Lotus', 'French', 3, 82, 20, 0, '2 (x1)', '2 (x1)', '1986-04-17', 'Geneva', 'formula1/42.jpg'),
(51, 'Michael Schumacher', 5, 'Mercedes', 'German', 155, 1560, 302, 7, '1 (x91)', '1 (x68)', '1969-01-03', 'Hurth-Hermulheim', 'formula1/51.jpg'),
(52, 'Nico Rosberg', 5, 'Mercedes', 'German', 7, 399.5, 122, 0, '1 (x1)', '1 (x1)', '1985-06-27', 'Wiesbaden', 'formula1/52.jpg'),
(61, 'Kamui Kobayashi', 6, 'Sauber', 'Japanese', 0, 100, 54, 0, '4 (x1)', '2 (x1)', '1986-09-13', 'Hyogo', 'formula1/61.jpg'),
(62, 'Sergio Perez', 6, 'Sauber', 'Mexican', 3, 80, 32, 0, '2 (x2)', '4 (x1)', '1990-01-26', 'Guadalajara', 'formula1/62.jpg'),
(71, 'Paul di Resta', 7, 'Force India', 'British', 0, 71, 33, 0, '4 (x1)', '6 (x2)', '1986-04-16', 'Scotland', 'formula1/71.jpg'),
(72, 'Nico Hulkenberg', 7, 'Force India', 'German', 0, 53, 33, 0, '4 (x1)', '1 (x1)', '1987-08-19', 'Emmerich', 'formula1/72.jpg'),
(81, 'Pastor Maldonado', 8, 'Williams', 'Venezuelan', 1, 30, 33, 0, '1 (x1)', '1 (x1)', '1985-03-09', 'Maracay', 'formula1/81.jpg'),
(82, 'Bruno Senna', 8, 'Williams', 'Brazilian', 0, 27, 40, 0, '6 (x1)', '7 (x1)', '1983-10-15', 'Sao Paulo', 'formula1/82.jpg'),
(91, 'Daniel Ricciardo', 9, 'Toro Rosso', 'Australian', 0, 6, 25, 0, '9 (x3)', '6 (x1)', '1989-07-01', 'Perth', 'formula1/91.jpg'),
(92, 'Jean-Eric Vergne', 9, 'Toro Rosso', 'French', 0, 8, 14, 0, '8 (x2)', '11 (x1)', '1990-04-25', 'Pontoise', 'formula1/92.jpg'),
(101, 'Timo Glock', 10, 'Marussia', 'German', 3, 51, 88, 0, '2 (x2)', '2 (x1)', '1982-03-18', 'Lindenfels', 'formula1/101.jpg'),
(102, 'Charles Pic', 10, 'Marussia', 'French', 0, 0, 14, 0, '15 (x2)', '19 (x1)', '1990-02-15', 'Montelimar', 'formula1/102.jpg'),
(111, 'Heikki Kovalainen', 11, 'Caterham', 'Finnish', 4, 105, 104, 0, '1 (x1)', '1 (x1)', '1981-10-19', 'Suomussalmi', 'formula1/111.jpg'),
(112, 'Vitaly Petrov', 11, 'Caterham', 'Russian', 1, 64, 52, 0, '3 (x1)', '6 (x2)', '1984-09-08', 'Vyborg', 'formula1/112.jpg'),
(121, 'Pedro de la Rosa', 12, 'HRT', 'Spanish', 1, 35, 101, 0, '2 (x1)', '4 (x1)', '1971-02-24', 'Barcelona', 'formula1/121.jpg'),
(122, 'Narain Karthikeyan', 12, 'HRT', 'Indian', 0, 5, 42, 0, '4 (x1)', '11 (x1)', '1977-01-14', 'Chennai', 'formula1/122.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `playerfb`
--

CREATE TABLE IF NOT EXISTS `playerfb` (
  `pid` varchar(10) NOT NULL,
  `teamid` varchar(6) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `position` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `played` varchar(10) NOT NULL,
  `goals` int(3) NOT NULL,
  `yc` int(3) NOT NULL,
  `rc` int(3) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerfb`
--

INSERT INTO `playerfb` (`pid`, `teamid`, `pname`, `position`, `nationality`, `played`, `goals`, `yc`, `rc`, `image`) VALUES
('ars1', 'ars', 'Vassiriki Diaby', 'Midfielder', 'French', '116(30)', 15, 13, 2, 'football/ars1.jpg'),
('ars2', 'ars', 'Bacary Sagna', 'Defender', 'French', '152 (6)', 3, 14, 1, 'football/ars2.jpg'),
('ars3', 'ars', 'Per Mertesacker', 'Defender', 'German', '26 (0)', 0, 3, 0, 'football/ars3.jpg'),
('ars4', 'ars', 'Thomas Vermaelen', 'Defender', 'Belgian', '72 (1)', 15, 12, 1, 'football/ars4.jpg'),
('ars5', 'ars', 'Laurent Koscielny', 'Defender', 'French', '66 (1)', 7, 14, 1, 'football/ars5.jpg'),
('ars6', 'ars', 'Tomas Rosicky', 'Midfielder', 'Czech', '118 (40)', 13, 12, 0, 'football/ars6.jpg'),
('ars7', 'ars', 'Mikel Arteta', 'Midfielder', 'Spanish', '35 (0)', 6, 5, 0, 'football/ars7.jpg'),
('ars8', 'ars', 'Lukas Podolski', 'Forward', 'German', '6 (0)', 1, 0, 0, 'football/ars8.jpg'),
('ars9', 'ars', 'Clarindo Andre Santos', 'Defender', 'Brazilian', '16 (6)', 2, 2, 0, 'football/ars9.jpg'),
('ars10', 'ars', 'Olivier Giroud', 'Forward', 'French', '6 (4)', 0, 0, 0, 'football/ars10.jpg'),
('ars11', 'ars', 'Theo Walcott', 'Midfielder', 'English', '153 (58)', 26, 1, 0, 'football/ars11.jpg'),
('ars12', 'ars', 'Sebastien Squillaci', 'Defender', 'French', '23 (3)', 2, 1, 0, 'football/ars12.jpg'),
('ars13', 'ars', 'Santi Cazorla', 'Midfielder', 'Spanish', '6 (0)', 1, 0, 0, 'football/ars13.jpg'),
('ars14', 'ars', 'Johan Djourou', 'Defender', 'Swiss', '82 (14)', 2, 9, 1, 'football/ars14.jpg'),
('ars15', 'ars', 'Lukasz Fabianski', 'Goalkeeper', 'Polish', '27 (1)', 0, 1, 0, 'football/ars15.jpg'),
('ast2', 'ast', 'Alan Hutton', 'Defender', 'Scottish', '31 (2)', 0, 7, 1, 'football/ast2.jpg'),
('ast3', 'ast', ' Ron Vlaar', 'Defender', 'Dutch', '6 (0)', 0, 1, 0, 'football/ast3.jpg'),
('ast4', 'ast', ' Richard Dunne', 'Defender', 'Irish', '95 (0)', 7, 18, 0, 'football/ast4.jpg'),
('ast5', 'ast', 'Ciaran Clark', 'Defender', 'English', '41 (5)', 6, 14, 1, 'football/ast5.jpg'),
('ast6', 'ast', 'Stephen Ireland', 'Midfielder', 'Irish', '39 (9)', 1, 3, 0, 'football/ast6.jpg'),
('ast7', 'ast', 'Karim El Ahmadi', 'Midfielder', 'Moroccan', '6 (0)', 1, 2, 0, 'football/ast7.jpg'),
('ast8', 'ast', 'Darren Bent', 'Forward', 'English', '44 (2)', 20, 1, 0, 'football/ast8.jpg'),
('ast9', 'ast', 'Charles N''Zogbia', 'Midfielder', 'French', '35 (9)', 2, 4, 0, 'football/ast9.jpg'),
('ast10', 'ast', 'Gabriel Agbonlahor', 'Forward', 'English', '219 (21)', 54, 22, 0, 'football/ast10.jpg'),
('ast11', 'ast', 'Marc Albrighton', 'Midfielder', 'English', '59 (23)', 7, 6, 0, 'football/ast11.jpg'),
('ast12', 'ast', 'Brett Holman', 'Forward', 'Australian', '6 (1)', 0, 1, 0, 'football/ast12.jpg'),
('ast13', 'ast', 'Ashley Westwood', 'Midfielder', 'English', '2 (2)', 0, 0, 0, 'football/ast13.jpg'),
('ast14', 'ast', 'Fabian Delph', 'Midfielder', 'English', '28(8)', 0, 8, 0, 'football/ast14.jpg'),
('ast15', 'ast', 'Stiliyan Petrov', 'Midfielder', 'Bulgarian', '184 (11)', 9, 35, 0, 'football/ast15.jpg'),
('ast1', 'ast', 'Shay Given', 'Goalkeeper', 'Irish', '34 (0)', 0, 1, 0, 'football/ast1.jpg'),
('che1', 'che', 'Petr Cech', 'Goalkeeper', 'Czech', '262 (0)', 1, 2, 1, 'football/che1.jpg'),
('che2', 'che', 'Branislav Ivanovic', 'Defender', 'Serbian', '113 (13)', 10, 26, 0, 'football/che2.jpg'),
('che3', 'che', 'Ashley Cole', 'Defender', 'English', '187 (6)', 7, 29, 2, 'football/che3.jpg'),
('che4', 'che', 'David Luiz', 'Defender', 'Brazilian', '37 (3)', 4, 11, 0, 'football/che4.jpg'),
('che5', 'che', 'Nascimento Ramires', 'Midfielder', 'Brazilian', '64 (10)', 7, 13, 0, 'football/che5.jpg'),
('che6', 'che', 'Frank Lampard', 'Midfielder', 'English', '379 (13)', 128, 36, 3, 'football/che6.jpg'),
('che7', 'che', 'Fernando Torres', 'Forward', 'Spanish', '52 (18)', 10, 6, 1, 'football/che7.jpg'),
('che8', 'che', 'Juan Mata', 'Forward', 'Spanish', '39 (5)', 7, 2, 0, 'football/che8.jpg'),
('che9', 'che', 'Emboaba Oscar', 'Midfielder', 'Brazilian', '4 (2)', 0, 2, 0, 'football/che9.jpg'),
('che10', 'che', 'Mikel', 'Midfielder', 'Nigerian', '166 (32)', 0, 26, 2, 'football/che10.jpg'),
('che11', 'che', 'Florent Malouda', 'Midfielder', 'French', '149 (39)', 35, 13, 1, 'football/che11.jpg'),
('che12', 'che', 'Eden Hazard', 'Midfielder', 'Belgian', '6 (0)', 1, 0, 0, 'football/che12.jpg'),
('che13', 'che', 'Paulo Ferreira', 'Defender', 'Portuguese', '134 (32)', 0, 14, 0, 'football/che13.jpg'),
('che14', 'che', 'Marko Marin', 'Midfielder', 'German', '0 (0)', 0, 0, 0, 'football/che14.jpg'),
('che15', 'che', 'Ross Turnbull', 'Goalkeeper', 'English', '4 (0)', 0, 0, 0, 'football/che15.jpg'),
('eve1', 'eve', 'Jan Mucha', 'Goalkeeper', 'Slovakian', '0 (0)', 0, 0, 0, 'football/eve1.jpg'),
('eve2', 'eve', 'Tony Hibbert', 'Defender', 'English', '255 (20)', 2, 37, 2, 'football/eve2.jpg'),
('eve3', 'eve', 'Leighton Baines', 'Defender', 'English', '166 (14)', 12, 16, 0, 'football/eve3.jpg'),
('eve4', 'eve', 'Darron Gibson', 'Midfielder', 'Northern Irish', '14 (0)', 1, 4, 0, 'football/eve4.jpg'),
('eve5', 'eve', 'Johnny Heitinga', 'Defender', 'Dutch', '91 (9)', 3, 21, 0, 'football/eve5.jpg'),
('eve6', 'eve', 'Phil Jagielka', 'Defender', 'English', '149 (12)', 9, 9, 0, 'football/eve6.jpg'),
('eve7', 'eve', 'Nikica Jelavic', 'Forward', 'Croatian', '18 (3)', 12, 1, 0, 'football/eve7.jpg'),
('eve8', 'eve', 'Bryan Oviedo', 'Midfielder', 'Costa Rican', '2 (2)', 0, 0, 0, 'football/eve8.jpg'),
('eve9', 'eve', 'Kevin Mirallas', 'Forward', 'Belgian', '5 (2)', 1, 0, 0, 'football/eve9.jpg'),
('eve10', 'eve', 'Steven Naismith', 'Forward', 'Scottish', '5 (3)', 0, 0, 0, 'football/eve10.jpg'),
('eve11', 'eve', 'Sylvain Distin', 'Defender', 'French', '98 (4)', 2, 8, 0, 'football/eve11.jpg'),
('eve12', 'eve', 'Phil Neville', 'Defender', 'English', '230 (5)', 7, 39, 3, 'football/eve12.jpg'),
('eve13', 'eve', 'Leon Osman', 'Midfielder', 'English', '253 (31)', 36, 24, 0, 'football/eve13.jpg'),
('eve14', 'eve', 'Steven Pienaar', 'Midfielder', 'South African', '124 (4)', 14, 29, 1, 'football/eve14.jpg'),
('eve15', 'eve', 'Seamus Coleman', 'Defender', 'Irish', '59 (18)', 4, 7, 1, 'football/eve15.jpg'),
('ful1', 'ful', 'Mark Schwarzer', 'Goalkeeper', 'Australian', '142 (0)', 0, 1, 0, 'football/ful1.jpg'),
('ful2', 'ful', 'Stephen Kelly', 'Defender', 'Irish', '42 (6)', 0, 1, 0, 'football/ful2.jpg'),
('ful3', 'ful', 'John Arne Riise', 'Defender', 'Norwegian', '41 (1)', 0, 2, 0, 'football/ful3.jpg'),
('ful4', 'ful', 'Philippe Senderos', 'Defender', 'Swiss', '24 (0)', 1, 5, 0, 'football/ful4.jpg'),
('ful5', 'ful', 'Brede Hangeland', 'Defender', 'Norwegian', '165 (0)', 10, 20, 0, 'football/ful5.jpg'),
('ful6', 'ful', 'Chris Baird', 'Defender', 'Northern Irish', '110 (22)', 5, 18, 1, 'football/ful6.jpg'),
('ful7', 'ful', 'Steve Sidwell', 'Midfielder', 'English', '32 (6)', 5, 8, 0, 'football/ful7.jpg'),
('ful8', 'ful', 'Dimitar Berbatov', 'Forward', 'Bulgarian', '3 (1)', 2, 0, 0, 'football/ful8.jpg'),
('ful9', 'ful', 'Mladen Petric', 'Forward', 'Croatian', '4 (0)', 3, 0, 0, 'football/ful9.jpg'),
('ful10', 'ful', 'Bryan Ruiz', 'Forward', 'Costa Rican', '31 (11)', 2, 0, 0, 'football/ful10.jpg'),
('ful11', 'ful', 'David Stockdale', 'Goalkeeper', 'English', '16 (0)', 0, 0, 0, 'football/ful11.jpg'),
('ful12', 'ful', 'Giorgos Karagounis', 'Midfielder', 'Greek1 (1)', '1 (1)', 0, 0, 0, 'football/ful12.jpg'),
('ful13', 'ful', 'Kieran Richardson', 'Defender', 'English', '1 (0)', 0, 0, 0, 'football/ful13.jpg'),
('ful14', 'ful', 'Damien Duff', 'Midfielder', 'Irish', '89 (9)', 15, 7, 0, 'football/ful14.jpg'),
('ful15', 'ful', 'Aaron Hughes', 'Defender', 'Northern Irish', '165 (2)', 2, 3, 0, 'football/ful15.jpg'),
('liv1', 'liv', 'Brad Jones', 'Goalkeeper', 'Australian', '1 (1)', 0, 1, 0, 'football/liv1.jpg'),
('liv2', 'liv', 'Glen Johnson', 'Defender', 'English', '82 (2)', 7, 8, 0, 'football/liv2.jpg'),
('liv3', 'liv', 'Sanchez Jose Enrique', 'Defender', 'Spanish', '37 (3)', 0, 2, 0, 'football/liv3.jpg'),
('liv4', 'liv', 'Nuri Sahin', 'Midfielder', 'Turkish', '2 (0)', 1, 0, 0, 'football/liv4.jpg'),
('liv5', 'liv', 'Daniel Agger', 'Defender', 'Danish', '123 (15)', 5, 10, 1, 'football/liv5.jpg'),
('liv6', 'liv', 'Luis Suarez', 'Forward', 'Uruguayan', '50 (3)', 20, 10, 0, 'football/liv6.jpg'),
('liv7', 'liv', 'Steven Gerrard', 'Midfielder', 'English', '403 (22)', 91, 44, 4, 'football/liv7.jpg'),
('liv8', 'liv', 'Joe Cole', 'Midfielder', 'English', '21 (12)', 2, 1, 1, 'football/liv8.jpg'),
('liv9', 'liv', 'Oussama Assaidi', 'Forward', 'Moroccan', '1 (1)', 0, 0, 0, 'football/liv9.jpg'),
('liv10', 'liv', 'Daniel Pacheco', 'Forward', 'Spanish', '5 (5)', 0, 0, 0, 'football/liv10.jpg'),
('liv11', 'liv', 'Stewart Downing', 'Midfielder', 'English', '39 (10)', 0, 1, 0, 'football/liv11.jpg'),
('liv12', 'liv', 'Leiva Lucas', 'Midfielder', 'Brazilian', '124 (22)', 2, 24, 1, 'football/liv12.jpg'),
('liv13', 'liv', 'Jamie Carragher', 'Defender', 'English', '486 (16)', 10, 55, 1, 'football/liv13.jpg'),
('liv14', 'liv', 'Jose Reina', 'Goalkeeper', 'Spanish', '260 (0)', 1, 9, 2, 'football/liv14.jpg'),
('liv15', 'liv', 'Fabio Borini', 'Forward', 'Italian', '5 (0)', 0, 0, 0, 'football/liv15.jpg'),
('manc1', 'manc', 'Joe Hart', 'Goalkeeper', 'English', '132 (0)', 0, 1, 0, 'football/manc1.jpg'),
('manc2', 'manc', 'Micah Richards', 'Defender', 'English', '170 (15)', 7, 18, 0, 'football/manc2.jpg'),
('manc3', 'manc', 'Sisenando Maicon', 'Defender', 'Brazilian', '1 (0)', 0, 0, 0, 'football/manc3.jpg'),
('manc4', 'manc', 'Vincent Kompany', 'Defender', 'Belgian', '132 (4)', 7, 23, 1, 'football/manc4.jpg'),
('manc5', 'manc', 'Pablo Zabaleta', 'Defender', 'Argentinian', '107 (15)', 4, 25, 3, 'football/manc5.jpg'),
('manc6', 'manc', 'Joleon Lescott', 'Defender', 'English', '76 (4)', 8, 3, 0, 'football/manc6.jpg'),
('manc7', 'manc', 'James Milner', 'Midfielder', 'English', '59 (19)', 3, 7, 0, 'football/manc7.jpg'),
('manc8', 'manc', 'Samir Nasri', 'Midfielder', 'French', '35 (5)', 6, 3, 0, 'football/manc8.jpg'),
('manc9', 'manc', 'Edin Dzeko', 'Forward', 'Bosnian', '51 (25)', 19, 1, 0, 'football/manc9.jpg'),
('manc10', 'manc', 'Scott Sinclair', 'Midfielder', 'English', '2 (0)', 0, 0, 0, 'football/manc10.jpg'),
('manc11', 'manc', 'Aleksandar Kolarov', 'Defender', 'Serbian', '39 (8)', 3, 8, 1, 'football/manc11.jpg'),
('manc12', 'manc', 'Francisco Javi Garcia', 'Midfielder', 'Spanish', '3 (0)', 1, 2, 0, 'football/manc12.jpg'),
('manc13', 'manc', 'Sergio Aguero', 'Forward', 'Argentinian', '37 (3)', 24, 2, 0, 'football/manc13.jpg'),
('manc14', 'manc', 'Gareth Barry', 'Midfielder', 'English', '103 (6)', 5, 21, 1, 'football/manc14.jpg'),
('manc15', 'manc', 'David Silva', 'Midfielder', 'Spanish', '77 (10)', 10, 2, 0, 'football/manc15.jpg'),
('manu1', 'manu', 'Patrice Evra', 'Defender', 'French', '211 (8)', 3, 27, 0, 'football/manu1.jpg'),
('manu2', 'manu', 'Rio Ferdinand', 'Defender', 'English', '275 (3)', 7, 20, 1, 'football/manu2.jpg'),
('manu3', 'manu', 'Jonathan Evans', 'Defender', 'Northern Irish', '81 (5)', 2, 12, 2, 'football/manu3.jpg'),
('manu4', 'manu', 'Antonio Valencia', 'Midfielder', 'Ecuadorian', '75 (12)', 10, 7, 0, 'football/manu4.jpg'),
('manu5', 'manu', 'Oliveira Anderson', 'Midfielder', 'Brazilian', '84 (25)', 4, 7, 0, 'football/manu5.jpg'),
('manu6', 'manu', 'Wayne Rooney', 'Forward', 'English', '254 (23)', 129, 47, 1, 'football/manu6.jpg'),
('manu7', 'manu', 'Ryan Giggs', 'Midfielder', 'Welsh', '591 (84)', 107, 26, 0, 'football/manu7.jpg'),
('manu8', 'manu', 'Chris Smalling', 'Defender', 'English', '33 (10)', 1, 1, 0, 'football/manu8.jpg'),
('manu9', 'manu', 'Anders Lindegaard', 'Goalkeeper', 'Danish', '12 (0)', 0, 0, 0, 'football/manu9.jpg'),
('manu10', 'manu', 'Javier Hernandez', 'Forward', 'Mexican', '57 (25)', 24, 5, 0, 'football/manu10.jpg'),
('manu11', 'manu', 'Nemanja Vidic', 'Defender', 'Serbian', '171 (3)', 15, 35, 4, 'football/manu11.jpg'),
('manu12', 'manu', 'Michael Carrick', 'Midfielder', 'English', '184 (31)', 14, 13, 0, 'football/manu12.jpg'),
('manu13', 'manu', 'Luis Nani', 'Midfielder', 'Portuguese', '129 (27)', 26, 8, 2, 'football/manu13.jpg'),
('manu14', 'manu', 'Ashley Young', 'Midfielder', 'English', '27 (7)', 6, 3, 0, 'football/manu14.jpg'),
('manu15', 'manu', 'Robin van Persie', 'Forward', 'Dutch', '6 (2)', 5, 1, 0, 'football/manu15.jpg'),
('new1', 'new', 'Tim Krul', 'Goalkeeper', 'Dutch', '62 (1)', 0, 4, 0, 'football/new1.jpg'),
('new2', 'new', 'Fabricio Coloccini', 'Defender', 'Argentinian', '106 (0)', 2, 9, 1, 'football/new2.jpg'),
('new3', 'new', 'Yohan Cabaye', 'Midfielder', 'French', '39 (0)', 4, 7, 0, 'football/new3.jpg'),
('new4', 'new', 'Danny Simpson', 'Defender', 'English', '68 (0)', 0, 12, 0, 'football/new4.jpg'),
('new5', 'new', 'Mike Williamson', 'Defender', 'English', '54 (2)', 0, 10, 0, 'football/new5.jpg'),
('new6', 'new', 'Vurnon Anita', 'Midfielder', 'Dutch', '5 (1)', 0, 1, 0, 'football/new6.jpg'),
('new7', 'new', 'Papiss Cisse', 'Forward', 'Senegalese', '20 (1)', 13, 1, 0, 'football/new7.jpg'),
('new8', 'new', 'Hatem Ben Arfa', 'Midfielder', 'French', '36 (11)', 8, 2, 0, 'football/new8.jpg'),
('new9', 'new', 'James Perch', 'Defender', 'English', '43 (17)', 1, 10, 0, 'football/new9.jpg'),
('new10', 'new', 'Ryan Taylor', 'Defender', 'English', '47 (12)', 2, 9, 1, 'football/new10.jpg'),
('new11', 'new', 'Romain Amalfitano', 'Midfielder', 'French', '0 (0)', 0, 0, 0, 'football/new11.jpg'),
('new12', 'new', 'Jonas Gutierrez', 'Midfielder', 'Argentinian', '110 (10)', 5, 19, 1, 'football/new12.jpg'),
('new13', 'new', 'Demba Ba', 'Forward', 'French', '40 (3)', 22, 1, 0, 'football/new13.jpg'),
('new14', 'new', 'Gael Bigirimana', 'Midfielder', 'Burundian', '2 (2)', 0, 0, 0, 'football/new14.jpg'),
('new15', 'new', 'Rob Elliot', 'Goalkeeper', 'English', '0 (0)', 0, 0, 0, 'football/new15.jpg'),
('nor1', 'nor', 'John Ruddy', 'Goalkeeper', 'English', '43 (0)', 0, 1, 1, 'football/nor1.jpg'),
('nor2', 'nor', 'Russell Martin', 'Defender', 'English', '39 (3)', 2, 1, 0, 'football/nor2.jpg'),
('nor3', 'nor', 'Steven Whittaker', 'Defender', 'Scottish', '0 (0)', 0, 0, 0, 'football/nor3.jpg'),
('nor4', 'nor', 'Bradley Johnson', 'Midfielder', 'English', '34 (3)', 2, 2, 0, 'football/nor4.jpg'),
('nor5', 'nor', 'Sebastien Bassong', 'Defender', 'French', '4 (0)', 0, 0, 0, 'football/nor5.jpg'),
('nor6', 'nor', 'Michael Turner', 'Defender', 'English', '3 (1)', 0, 0, 0, 'football/nor6.jpg'),
('nor7', 'nor', 'Robert Snodgrass', 'Forward', 'Scottish', '6 (0)', 1, 0, 0, 'football/nor7.jpg'),
('nor8', 'nor', 'Jonathan Howson', 'Midfielder', 'English', '17 (0)', 1, 4, 0, 'football/nor8.jpg'),
('nor9', 'nor', 'Grant Holt', 'Forward', 'English', '42 (14)', 16, 7, 1, 'football/nor9.jpg'),
('nor10', 'nor', 'Simeon Jackson', 'Forward', 'Canadian', '27 (13)', 4, 1, 0, 'football/nor10.jpg'),
('nor11', 'nor', 'Andrew Surman', 'Midfielder', 'English', '29 (4)', 4, 1, 0, 'football/nor11.jpg'),
('nor12', 'nor', 'Anthony Pilkington', 'Midfielder', 'Irish', '33 (7)', 8, 1, 0, 'football/nor12.jpg'),
('nor13', 'nor', 'Wesley Hoolahan', 'Midfielder', 'Irish', '36 (10)', 4, 4, 0, 'football/nor13.jpg'),
('nor14', 'nor', 'David Fox', 'Midfielder', 'English', '28 (5)', 0, 3, 0, 'football/nor14.jpg'),
('nor15', 'nor', 'Steve Morison', 'Forward', 'Welsh', '40 (16)', 10, 1, 0, 'football/nor15.jpg'),
('que1', 'que', ' Rob Green', 'Goalkeeper', 'English', '3 (0)', 0, 0, 0, 'football/que1.jpg'),
('que2', 'que', 'Samba Diakite', 'Midfielder', 'French', '12 (1)', 1, 8, 2, 'football/que2.jpg'),
('que3', 'que', 'Armand Traore', 'Defender', 'French', '24 (5)', 0, 2, 1, 'football/que3.jpg'),
('que4', 'que', 'Shaun Derry', 'Midfielder', 'English', '31 (3)', 1, 4, 1, 'football/que4.jpg'),
('que5', 'que', 'Anton Ferdinand', 'Defender', 'English', '35 (0)', 0, 3, 0, 'football/que5.jpg'),
('que6', 'que', 'Clint Hill', 'Defender', 'English', '25 (3)', 0, 5, 1, 'football/que6.jpg'),
('que7', 'que', 'Ji-Sung Park', 'Midfielder', 'South Korean', '6 (0)', 0, 0, 0, 'football/que7.jpg'),
('que8', 'que', 'Andrew Johnson', 'Forward', 'English', '3 (1)', 0, 0, 0, 'football/que8.jpg'),
('que9', 'que', 'Djibril Cisse', 'Forward', 'French', '14 (4)', 6, 0, 2, 'football/que9.jpg'),
('que10', 'que', 'Adel Taarabt', 'Midfielder', 'Moroccan', '29 (4)', 3, 4, 1, 'football/que10.jpg'),
('que11', 'que', 'Shaun Wright-Phillips', 'Midfielder', 'English', '36 (9)', 0, 3, 0, 'football/que11.jpg'),
('que12', 'que', 'Jamie Mackie', 'Forward', 'Scottish', '35 (9)', 7, 2, 0, 'football/que12.jpg'),
('que13', 'que', 'Esteban Granero', 'Midfielder', 'Spanish', '4 (0)', 0, 1, 0, 'football/que13.jpg'),
('que14', 'que', 'Nedum Onuoha', 'Defender', 'English', '22 (3)', 1, 2, 0, 'football/que14.jpg'),
('que15', 'que', 'Ryan Nelsen', 'Defender', 'New Zealander', '4 (0)', 0, 0, 0, 'football/que15.jpg'),
('rea1', 'rea', 'Adam Federici', 'Goalkeeper', 'Australian', '4 (2)', 0, 0, 0, 'football/rea1.jpg'),
('rea2', 'rea', 'Chris Gunter', 'Defender', 'Welsh', '4 (0)', 0, 0, 0, 'football/rea2.jpg'),
('rea3', 'rea', 'Nicky Shorey', 'Defender', 'English', '75 (0)', 3, 7, 0, 'football/rea3.jpg'),
('rea4', 'rea', 'Jem Karacan', 'Midfielder', 'English', '3 (0)', 0, 1, 0, 'football/rea4.jpg'),
('rea5', 'rea', 'Alex Pearce', 'Defender', 'English', '4(0)', 0, 0, 0, 'football/rea5.jpg'),
('rea6', 'rea', 'Adrian Mariappa', 'Defender', 'English', '1 (0)', 0, 0, 0, 'football/rea6.jpg'),
('rea7', 'rea', 'Pavel Pogrebnyak', 'Forward', 'Russian', '5 (0)', 1, 1, 0, 'football/rea7.jpg'),
('rea8', 'rea', 'Mikele Leigertwood', 'Midfielder', 'English', '5 (0)', 0, 1, 0, 'football/rea8.jpg'),
('rea9', 'rea', 'Adam Le Fondre', 'Forward', 'English', '5 (3)', 1, 0, 0, 'football/rea9.jpg'),
('rea10', 'rea', 'Noel Hunt', 'Forward', 'Irish', '5 (4)', 1, 0, 0, 'football/rea10.jpg'),
('rea11', 'rea', 'Jobi McAnuff', 'Midfielder', 'English', '5 (0)', 0, 0, 0, 'football/rea11.jpg'),
('rea12', 'rea', 'Garath McCleary', 'Forward', 'English', '5 (2)', 0, 0, 0, 'football/rea12.jpg'),
('rea13', 'rea', 'Jimmy Kebe', 'Midfielder', 'Malian', '6 (3)', 1, 0, 0, 'football/rea13.jpg'),
('rea14', 'rea', 'Sean Morrison', 'Defender', 'English', '0 (0)', 0, 0, 0, 'football/rea14.jpg'),
('rea15', 'rea', 'Jay Tabb', 'Midfielder', 'English', '0 (0)', 0, 0, 0, 'football/rea15.jpg'),
('sou1', 'sou', 'Kelvin Davis', 'Goalkeeper', 'English', '4 (0)', 0, 0, 0, 'football/sou1.jpg'),
('sou2', 'sou', 'Nathaniel Clyne', 'Defender', 'English', '6 (0)', 2, 1, 0, 'football/sou2.jpg'),
('sou3', 'sou', 'Maya Yoshida', 'Defender', 'Japanese', '3 (1)', 0, 0, 0, 'football/sou3.jpg'),
('sou4', 'sou', 'Morgan Schneiderlin', 'Midfielder', 'French', '5 (0)', 1, 1, 0, 'football/sou4.jpg'),
('sou5', 'sou', 'Jos Hooiveld', 'Defender', 'Dutch', '4 (0)', 1, 1, 0, 'football/sou5.jpg'),
('sou6', 'sou', 'Jose Fonte', 'Defender', 'Portuguese', '6 (0)', 0, 0, 0, 'football/sou6.jpg'),
('sou7', 'sou', 'Rickie Lambert', 'Forward', 'English', '6 (1)', 4, 0, 0, 'football/sou7.jpg'),
('sou8', 'sou', 'Steven Davis', 'Midfielder', 'Northern Irish', '6 (1)', 1, 0, 0, 'football/sou8.jpg'),
('sou9', 'sou', 'Jay Rodriguez', 'Forward', 'English', '5 (2)', 0, 0, 0, 'football/sou9.jpg'),
('sou10', 'sou', 'Gaston Ramirez', 'Midfielder', 'Uruguayan', '3 (1)', 1, 0, 0, 'football/sou10.jpg'),
('sou11', 'sou', 'Paulo Gazzaniga', 'Goalkeeper', 'Argentinian', '2 (0)', 0, 0, 0, 'football/sou11.jpg'),
('sou12', 'sou', 'Daniel Fox', 'Defender', 'Scottish', '5 (0)', 1, 1, 0, 'football/sou12.jpg'),
('sou13', 'sou', 'James Ward-Prowse', 'Forward', 'English', '6 (2)', 0, 0, 0, 'football/sou13.jpg'),
('sou14', 'sou', 'Jack Cork', 'Midfielder', 'English', '0 (0)', 0, 0, 0, 'football/sou14.jpg'),
('sou15', 'sou', 'Tadanari Lee', 'Forward', 'Japanese', '0 (0)', 0, 0, 0, 'football/sou15.jpg'),
('sto1', 'sto', 'Asmir Begovic', 'Goalkeeper', 'Bosnian', '61 (2)', 0, 4, 0, 'football/sto1.jpg'),
('sto2', 'sto', 'Geoff Cameron', 'Defender', 'American', '5 (1)', 0, 0, 0, 'football/sto2.jpg'),
('sto3', 'sto', 'Robert Huth', 'Defender', 'German', '106 (5)', 12, 19, 1, 'football/sto3.jpg'),
('sto4', 'sto', 'Glenn Whelan', 'Midfielder', 'Irish', '121 (31)', 4, 19, 0, 'football/sto4.jpg'),
('sto5', 'sto', 'Jermaine Pennant', 'Midfielder', 'English', '57 (12)', 3, 5, 0, 'football/sto5.jpg'),
('sto6', 'sto', 'Wilson Palacios', 'Midfielder', 'Honduran', '20 (11)', 0, 3, 0, 'football/sto6.jpg'),
('sto7', 'sto', 'Kenwyne Jones', 'Forward', 'Trinidadian', '55 (14)', 10, 0, 0, 'football/sto7.jpg'),
('sto8', 'sto', 'Michael Owen', 'Forward', 'English', '2 (2)', 0, 0, 0, 'football/sto8.jpg'),
('sto9', 'sto', 'Mamady Sidibe', 'Forward', 'Malian', '48 (12)', 5, 1, 0, 'football/sto9.jpg'),
('sto10', 'sto', 'Marc Wilson', 'Defender', 'Irish', '68 (7)', 1, 16, 0, 'football/sto10.jpg'),
('sto11', 'sto', 'Maurice Edu', 'Midfielder', 'American', '0 (0)', 0, 0, 0, 'football/sto11.jpg'),
('sto12', 'sto', 'Jamie Ness', 'Midfielder', 'Scottish', '0 (0)', 0, 0, 0, 'football/sto12.jpg'),
('sto13', 'sto', 'Steven Nzonzi', 'Midfielder', 'French', '3 (0)', 0, 0, 0, 'football/sto13.jpg'),
('sto14', 'sto', 'Charlie Adam', 'Midfielder', 'Scottish', '4 (1)', 0, 1, 0, 'football/sto14.jpg'),
('sto15', 'sto', 'Ryan Shawcross', 'Defender', 'English', '134 (2)', 9, 29, 3, 'football/sto15.jpg'),
('sun1', 'sun', 'Phil Bardsley', 'Defender', 'English', '130 (13)', 5, 31, 1, 'football/sun1.jpg'),
('sun2', 'sun', 'Wes Brown', 'Defender', 'English', '20 (0)', 2, 2, 0, 'football/sun2.jpg'),
('sun3', 'sun', 'Lee Cattermole', 'Midfielder', 'English', '72 (4)', 0, 28, 3, 'football/sun3.jpg'),
('sun4', 'sun', 'Sebastian Larsson', 'Midfielder', 'Swedish', '38 (0)', 7, 8, 0, 'football/sun4.jpg'),
('sun5', 'sun', 'Craig Gardner', 'Midfielder', 'English', '36 (8)', 3, 8, 1, 'football/sun5.jpg'),
('sun6', 'sun', 'Fraizer Campbell', 'Forward', 'English', '50 (22)', 5, 6, 0, 'football/sun6.jpg'),
('sun7', 'sun', 'Matthew Kilgallon', 'Defender', 'English', '17 (2)', 0, 0, 0, 'football/sun7.jpg'),
('sun8', 'sun', 'Jack Colback', 'Midfielder', 'English', '53 (12)', 1, 6, 1, 'football/sun8.jpg'),
('sun9', 'sun', 'David Vaughan', 'Midfielder', 'Welsh', '24 (8)', 2, 3, 0, 'football/sun9.jpg'),
('sun10', 'sun', 'John O''Shea', 'Defender', 'Irish', '35 (0)', 0, 5, 0, 'football/sun10.jpg'),
('sun11', 'sun', 'Dong-Won Ji', 'Forward', 'South Korean', '19 (17)', 2, 2, 0, 'football/sun11.jpg'),
('sun12', 'sun', 'David Meyler', 'Midfielder', 'Irish', '24 (11)', 0, 6, 1, 'football/sun12.jpg'),
('sun13', 'sun', 'Titus Bramble', 'Defender', 'English', '34 (2)', 1, 5, 1, 'football/sun13.jpg'),
('sun14', 'sun', 'Keiren Westwood', 'Goalkeeper', 'Irish', '9 (1)', 0, 0, 0, 'football/sun14.jpg'),
('sun15', 'sun', 'Adam Johnson', 'Midfielder', 'English', '3 (0)', 0, 0, 0, 'football/sun15.jpg'),
('swa1', 'swa', 'Michel Vorm', 'Goalkeeper', 'Dutch', '43 (0)', 0, 2, 0, 'football/swa1.jpg'),
('swa2', 'swa', 'Kyle Bartley', 'Defender', 'English', '0 (0)', 0, 0, 0, 'football/swa2.jpg'),
('swa3', 'swa', 'Neil Taylor', 'Defender', 'Welsh', '39 (1)', 1, 4, 0, 'football/swa3.jpg'),
('swa4', 'swa', 'A Chico', 'Defender', 'Spanish', '4 (0)', 0, 1, 1, 'football/swa4.jpg'),
('swa5', 'swa', 'Alan Tate', 'Defender', 'English', '7 (5)', 0, 0, 0, 'football/swa5jpg'),
('swa6', 'swa', 'Ashley Williams', 'Defender', 'Welsh', '43 (0)', 1, 8, 0, 'football/swa6.jpg'),
('swa7', 'swa', 'Leon Britton', 'Midfielder', 'English', '42 (2)', 0, 3, 0, 'football/swa7.jpg'),
('swa8', 'swa', 'Miguel Michu', 'Midfielder', 'Spanish', '6 (0)', 4, 2, 0, 'football/swa8.jpg'),
('swa9', 'swa', 'Danny Graham', 'Forward', 'English', '42 (4)', 14, 0, 0, 'football/swa9.jpg'),
('swa10', 'swa', 'Pablo Hernandez', 'Midfielder', 'Spanish', '3 (1)', 0, 0, 0, 'football/swa10.jpg'),
('swa11', 'swa', 'Nathan Dyer', 'Midfielder', 'English', '40 (6)', 7, 2, 2, 'football/swa11.jpg'),
('swa12', 'swa', 'David Cornell', 'Goalkeeper', 'Welsh', '0 (0)', 0, 0, 0, 'football/swa12.jpg'),
('swa13', 'swa', 'Wayne Routledge', 'Midfielder', 'English', '34 (12)', 2, 2, 0, 'football/swa13.jpg'),
('swa14', 'swa', 'Garry Monk', 'Defender', 'English', '16 (2)', 0, 3, 0, 'football/swa14.jpg'),
('swa15', 'swa', 'Itay Shechter', 'Forward', 'Israeli', '2 (2)', 0, 0, 0, 'football/swa15.jpg'),
('tot1', 'tot', 'Heurelho Gomes', 'Goalkeeper', 'Brazilian', '95 (0)', 0, 7, 0, 'football/tot1.jpg'),
('tot2', 'tot', 'Clint Dempsey', 'Midfielder', 'American', '3 (1)', 1, 0, 0, 'football/tot2.jpg'),
('tot3', 'tot', 'Younes Kaboul', 'Defender', 'French', '86 (6)', 6, 8, 2, 'football/tot3.jpg'),
('tot4', 'tot', 'Jan Vertonghen', 'Defender', 'Belgian', '5 (0)', 1, 1, 0, 'football/tot4.jpg'),
('tot5', 'tot', 'Tom Huddlestone', 'Midfielder', ' English', '127 (35)', 8, 20, 1, 'football/tot5.jpg'),
('tot6', 'tot', 'Aaron Lennon', 'Midfielder', ' English', '202 (38)', 21, 6, 0, 'football/tot6.jpg'),
('tot7', 'tot', 'Scott Parker', 'Midfielder', ' English', '29 (1)', 0, 8, 1, 'football/tot7.jpg'),
('tot8', 'tot', 'Emmanuel Adebayor', 'Forward', 'Togolese', '35 (3)', 17, 3, 0, 'football/tot8.jpg'),
('tot9', 'tot', 'Gareth Bale', 'Midfielder', 'Welsh', '118 (10)', 24, 10, 1, 'football/tot9.jpg'),
('tot10', 'tot', 'William Gallas', 'Defender', 'French', '48 (1)', 0, 6, 0, 'football/tot10.jpg'),
('tot11', 'tot', 'Kyle Naughton', 'Defender', ' English', '1 (1)', 0, 0, 0, 'football/tot11.jpg'),
('tot12', 'tot', 'Jermain Defoe', 'Forward', ' English', '234 (76)', 83, 20, 2, 'football/tot12.jpg'),
('tot13', 'tot', 'Mousa Dembele', 'Forward', 'Belgian', '4 (1)', 1, 0, 0, 'football/tot13.jpg'),
('tot14', 'tot', 'Michael Dawson', 'Defender', ' English', '178 (11)', 7, 31, 3, 'football/tot14.jpg'),
('tot15', 'tot', 'Gylfi Sigurdsson', 'Midfielder', 'Icelandic', '6 (2)', 0, 0, 0, 'football/tot15.jpg'),
('wesb1', 'wesb', 'Ben Foster', 'Goalkeeper', 'English', '43 (0)', 0, 0, 0, 'football/wesb1.jpg'),
('wesb2', 'wesb', 'Steven Reid', 'Defender', 'Irish', '48 (11)', 3, 9, 0, 'football/wesb2.jpg'),
('wesb3', 'wesb', 'Jonas Olsson', 'Defender', 'Swedish', '92 (0)', 6, 13, 1, 'football/wesb3.jpg'),
('wesb4', 'wesb', 'Goran Popov', 'Defender', 'Macedonian', '1 (0)', 0, 0, 0, 'football/wesb4.jpg'),
('wesb5', 'wesb', 'Claudio Yacob', 'Midfielder', 'Argentinian', '6 (0)', 0, 1, 0, 'football/wesb5.jpg'),
('wesb6', 'wesb', 'Liam Ridgewell', 'Defender', 'English', '18 (0)', 1, 2, 0, 'football/wesb6.jpg'),
('wesb7', 'wesb', 'James Morrison', 'Midfielder', 'Scottish', '97 (13)', 13, 8, 1, 'football/wesb7.jpg'),
('wesb8', 'wesb', 'Markus Rosenberg', 'Forward', 'Swedish', '3 (3)', 0, 0, 0, 'football/wesb8.jpg'),
('wesb9', 'wesb', 'Shane Long', 'Forward', 'Irish', '37 (9)', 10, 2, 0, 'football/wesb9.jpg'),
('wesb10', 'wesb', 'Yassine El Ghanassy', 'Forward', 'Belgian', '0 (0)', 0, 0, 0, 'football/wesb10.jpg'),
('wesb11', 'wesb', 'Chris Brunt', 'Midfielder', 'Northern Irish', '103 (14)', 14, 17, 0, 'football/wesb11.jpg'),
('wesb12', 'wesb', 'Boaz Myhill', 'Goalkeeper', 'American', '6 (0)', 0, 0, 0, 'football/wesb12.jpg'),
('wesb13', 'wesb', 'Jerome Thomas', 'Midfielder', 'English', '62 (4)', 4, 8, 0, 'football/wesb13.jpg'),
('wesb14', 'wesb', 'Graham Dorrans', 'Midfielder', 'Scottish', '63 (25)', 4, 7, 0, 'football/wesb14.jpg'),
('wesb15', 'wesb', 'Gonzalo Jara Reyes', 'Defender', 'Chilean', '32 (8)', 1, 6, 1, 'football/wesb15.jpg'),
('wesh1', 'wesh', 'Winston Reid', 'Defender', 'New Zealander', '13 (4)', 2, 2, 0, 'football/wesh1.jpg'),
('wesh2', 'wesh', 'George McCartney', 'Defender', 'Northern Irish', '64 (8)', 2, 9, 0, 'football/wesh2.jpg'),
('wesh3', 'wesh', 'Kevin Nolan', 'Midfielder', 'English', '6 (0)', 3, 2, 0, 'football/wesh3.jpg'),
('wesh4', 'wesh', 'James Tomkins', 'Defender', 'English', '65 (7)', 2, 4, 1, 'football/wesh4.jpg'),
('wesh5', 'wesh', 'Matthew Jarvis', 'Midfielder', 'English', '4 (2)', 1, 0, 0, 'football/wesh5.jpg'),
('wesh6', 'wesh', 'Andy Carroll', 'Forward', 'English', '2 (1)', 0, 0, 0, 'football/wesh6.jpg'),
('wesh7', 'wesh', 'Carlton Cole', 'Forward', 'English', '145 (42)', 32, 23, 2, 'football/wesh7.jpg'),
('wesh8', 'wesh', 'Jack Collison', 'Midfielder', 'Welsh', '47 (9)', 5, 4, 0, 'football/wesh8.jpg'),
('wesh9', 'wesh', 'Modibo Maiga', 'Forward', 'Malian', '4 (4)', 0, 0, 0, 'football/wesh9.jpg'),
('wesh10', 'wesh', 'Ricardo Vaz Te', 'Forward', 'Portuguese', '6 (1)', 1, 0, 0, 'football/wesh10.jpg'),
('wesh11', 'wesh', 'Stephen Henderson', 'Goalkeeper', 'Irish', '0 (0)', 0, 0, 0, 'football/wesh11.jpg'),
('wesh12', 'wesh', 'Matthew Taylor', 'Midfielder', 'English', '4 (0)', 1, 0, 0, 'football/wesh12.jpg'),
('wesh13', 'wesh', 'Yossi Benayoun', 'Midfielder', 'Israeli', '65 (10)', 8, 7, 0, 'football/wesh13.jpg'),
('wesh14', 'wesh', 'Mark Noble', 'Midfielder', 'English', '134 (11)', 14, 32, 2, 'football/wesh14.jpg'),
('wesh15', 'wesh', 'Joey O''Brien', 'Defender', 'Irish', '5 (1)', 0, 0, 0, 'football/wesh15.jpg'),
('wig1', 'wig', 'Arouna Kone', 'Forward', 'Ivorian', '6 (1)', 2, 0, 0, 'football/wig1.jpg'),
('wig2', 'wig', 'Antolin Alcaraz', 'Defender', 'Paraguayan', '61 (0)', 3, 12, 1, 'football/wig2.jpg'),
('wig3', 'wig', 'Gary Caldwell', 'Defender', 'Scottish', '81 (0)', 5, 21, 4, 'football/wig3.jpg'),
('wig4', 'wig', 'David Jones', 'Midfielder', 'English', '17 (5)', 0, 2, 0, 'football/wig4.jpg'),
('wig5', 'wig', 'Albert Crusat', 'Midfielder', 'Spanish', '5 (11)', 1, 1, 0, 'football/wig5.jpg'),
('wig6', 'wig', 'Ben Watson', 'Midfielder', 'English', '68 (20)', 9, 5, 0, 'football/wig6.jpg'),
('wig7', 'wig', 'Franco Di Santo', 'Forward', 'Argentinian', '62 (25)', 10, 7, 0, 'football/wig7.jpg'),
('wig8', 'wig', 'Shaun Maloney', 'Midfielder', 'Scottish', '18 (5)', 4, 1, 0, 'football/wig8.jpg'),
('wig9', 'wig', 'Michael Pollitt', 'Goalkeeper', 'English', '36 (5)', 0, 0, 0, 'football/wig9.jpg'),
('wig10', 'wig', 'Jordi Gomez', 'Midfielder', 'Spanish', '69 (23)', 7, 7, 1, 'football/wig10.jpg'),
('wig11', 'wig', 'James McArthur', 'Midfielder', 'Scottish', '53 (28)', 3, 8, 0, 'football/wig11.jpg'),
('wig12', 'wig', 'Emmerson Boyce', 'Defender', 'English', '164 (5)', 7, 14, 1, 'football/wig12.jpg'),
('wig13', 'wig', 'Mauro Boselli', 'Forward', 'Argentinian', '9 (5)', 0, 0, 0, 'football/wig13.jpg'),
('wig14', 'wig', 'Fraser Fyvie', 'Midfielder', 'Scottish', '0 (0)', 0, 0, 0, 'football/wig14.jpg'),
('wig15', 'wig', 'Ivan Ramis', 'Defender', 'Spanish', '6 (0)', 0, 0, 0, 'football/wig15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `birthday` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fname`, `lname`, `username`, `birthday`, `birthmonth`, `birthyear`, `gender`, `password`, `location`) VALUES
('ishu', 'goel', 'agarwalanish91@gmail.com', 17, 11, 2012, 'M', 'hapur', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `sc_id` int(4) NOT NULL,
  `sports` varchar(255) NOT NULL,
  `sc_date` date NOT NULL,
  `sc_name` varchar(255) NOT NULL,
  `sc_time` varchar(255) NOT NULL,
  UNIQUE KEY `sc_id` (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sc_id`, `sports`, `sc_date`, `sc_name`, `sc_time`) VALUES
(2, 'cricket', '2012-10-07', 'india bangla', '8:00 am'),
(3, 'football', '2012-10-07', 'india bangla', '8:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `teamf`
--

CREATE TABLE IF NOT EXISTS `teamf` (
  `teamid` varchar(4) NOT NULL,
  `teamname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamf`
--

INSERT INTO `teamf` (`teamid`, `teamname`) VALUES
('ars', 'Arsenal'),
('ast', 'Aston Villa'),
('che', 'Chelsea'),
('eve', 'Everton'),
('ful', 'Fulham'),
('liv', 'Liverpool'),
('manc', 'Manchester City'),
('manu', 'Manchester United'),
('new', 'Newcastle United'),
('nor', 'Norwich City'),
('que', 'Queens Park Rangers'),
('rea', 'Reading'),
('sou', 'Southampton'),
('sto', 'Stoke City'),
('sun', 'Sunderland'),
('swa', 'Swansea City'),
('tot', 'Tottenham Hotspur'),
('wesb', 'West Bromwich Albion'),
('wesh', 'West Ham United'),
('wig', 'Wigan Athletic');

-- --------------------------------------------------------

--
-- Table structure for table `teamf1`
--

CREATE TABLE IF NOT EXISTS `teamf1` (
  `teamid` int(2) NOT NULL,
  `teamname` varchar(50) NOT NULL,
  PRIMARY KEY (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamf1`
--

INSERT INTO `teamf1` (`teamid`, `teamname`) VALUES
(1, 'Red Bull Racing'),
(2, 'McLaren'),
(3, 'Ferrari'),
(4, 'Lotus'),
(5, 'Mercedes'),
(6, 'Sauber'),
(7, 'Force India'),
(8, 'Williams'),
(9, 'Toro Rosso'),
(10, 'Marussia'),
(11, 'Caterham'),
(12, 'HRT');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `vid` int(5) NOT NULL,
  `path` varchar(255) NOT NULL,
  UNIQUE KEY `vid` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`vid`, `path`) VALUES
(1, 'cricket/1.swf'),
(2, 'cricket/2.swf'),
(3, 'cricket/3.swf'),
(4, 'football/4.swf'),
(5, 'football/5.swf'),
(6, 'football/6.swf'),
(7, 'formula1/7.swf'),
(8, 'formula1/8.swf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
