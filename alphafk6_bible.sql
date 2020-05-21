-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2020 at 02:27 PM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphafk6_bible`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `address` longtext NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `Username`, `first_name`, `last_name`, `Email`, `Password`, `phone_number`, `image`, `dob`, `address`, `gender`) VALUES
(1, 'Admin', 'admin', 'Admins', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '5656598598', 'download_(4).jpeg', '12/12/1998', '0', 'Male'),
(2, 'Gopal123', 'Gopal', 'Sharma', 'gopal@alphawizz.awsapps.com', 'ccd5e84f60d8694f5bcad804f151c29b', '4545556656', 'myw3schoolsimage.jpg', '19/02/1998', 'PU-3 Commercial, Princes Business Skypark, 6th Floor, 611, AB Rd, Scheme No 54, Indore, Madhya Pradesh 452010', 'Male'),
(3, 'admin', 'admin', '123', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1234567890', '', '21/2/1996', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Appointment`
--

CREATE TABLE `Appointment` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(100) NOT NULL,
  `doctor_id` int(100) NOT NULL,
  `department_id` int(100) NOT NULL,
  `appointment_date` varchar(100) NOT NULL,
  `appointment_time` varchar(100) NOT NULL,
  `status` int(5) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `shifting` int(10) NOT NULL,
  `appointment_reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Appointment`
--

INSERT INTO `Appointment` (`appointment_id`, `patient_id`, `doctor_id`, `department_id`, `appointment_date`, `appointment_time`, `status`, `created`, `full_name`, `phone_number`, `gender`, `address`, `age`, `description`, `shifting`, `appointment_reason`) VALUES
(1, 80, 63, 0, '2020-03-08', '02:38:16 pm', 0, '2020-03-04 09:24:30', 'ankita', '7485963214', 'Female', '', 20, '', 1, ''),
(2, 80, 71, 0, '2020-03-05', '02:39:36 pm', 1, '2020-03-04 09:35:24', 'seema', '7485096354', 'Female', '', 42, '', 1, ''),
(3, 80, 71, 0, '2020-03-06', '02:44:15 pm', 0, '2020-03-04 09:15:02', 'garima', '8059648685', 'Female', '', 25, '', 2, ''),
(4, 80, 71, 0, '2020-03-05', '02:47:27 pm', 1, '2020-03-04 09:37:40', 'sudesh', '9638054896', 'Male', '', 26, '', 2, ''),
(5, 80, 71, 0, '2020-03-05', '02:59:43 pm', 1, '2020-03-04 09:40:21', 'ashish', '9842584456', 'Male', '', 45, '', 1, ''),
(6, 80, 63, 0, '2020-03-06', '03:18:41 pm', 0, '2020-03-04 09:49:41', 'yash', '8079468497', 'Male', '', 25, '', 1, ''),
(7, 80, 71, 0, '2020-03-06', '04:50:57 PM', 0, '2020-03-05 11:21:19', 'uma', '8745624488', 'Female', '', 25, '', 1, ''),
(8, 74, 69, 0, '2020-03-07', '09:06:59 pm', 0, '2020-03-05 15:37:36', 'ibrar ', '7084110844', 'Male', 'bzha', 35, '', 1, ''),
(9, 74, 69, 0, '2020-03-07', '09:07:59 pm', 1, '2020-03-05 15:45:58', 'asfak', '9956039060', 'Male', 'ksvaj', 38, '', 1, ''),
(10, 74, 69, 0, '2020-03-07', '09:09:09 pm', 0, '2020-03-05 15:40:14', 'Abhishek', '7838586182', 'Male', 'nznaj', 45, '', 1, ''),
(11, 74, 69, 0, '2020-03-07', '09:11:00 pm', 0, '2020-03-05 15:42:12', 'ajeet', '8738815758', 'Male', 'jsjs', 41, '', 1, ''),
(12, 74, 69, 0, '2020-03-07', '09:12:38 pm', 0, '2020-03-05 15:43:37', 'aksh', '7239010509', 'Male', 'b HGH hi bg', 43, '', 1, ''),
(13, 74, 69, 0, '2020-03-07', '09:14:23 pm', 0, '2020-03-05 15:45:39', 'anjni', '6005341685', 'Male', 'giddy', 48, '', 1, ''),
(14, 74, 69, 0, '2020-03-07', '09:16:35 pm', 0, '2020-03-05 15:47:25', 'apretr', '8115985211', 'Male', 'bafggss', 40, '', 1, ''),
(15, 74, 69, 0, '2020-03-07', '09:18:48 pm', 0, '2020-03-05 15:49:40', 'puspendr', '6207751325', 'Male', ', n him', 39, '', 1, ''),
(16, 74, 69, 0, '2020-03-07', '09:19:58 pm', 0, '2020-03-05 15:51:26', 'golu', '8317012242', 'Male', 'cinch', 35, '', 1, ''),
(17, 74, 69, 0, '2020-03-07', '09:21:38 pm', 0, '2020-03-05 15:53:04', 'jubair', '9838713717', 'Male', 'vino sah', 42, '', 1, ''),
(18, 82, 69, 0, '2020-03-07', '09:41:45 PM', 1, '2020-03-06 03:36:03', 'chs', '0798521025', 'Male', 'ysdfg', 35, '', 1, ''),
(19, 82, 69, 0, '2020-03-07', '09:41:45 PM', 1, '2020-03-05 16:15:18', 'chs', '0798521025', 'Male', 'ysdfg', 35, '', 1, ''),
(20, 36, 7, 0, '2020-03-09', '10:16:21 AM', 0, '2020-03-09 04:54:38', 'Rahul', '9895656565', '?????', '', 12, '', 1, ''),
(21, 36, 7, 0, '2020-03-09', '10:39:20 AM', 0, '2020-03-09 05:10:00', 'rahul', '9907898654', 'Male', '', 12, '', 1, ''),
(22, 36, 7, 0, '2020-03-09', '11:14:44 AM', 0, '2020-03-09 05:45:14', 'rahul', '7845454545', 'Male', '', 45, '', 1, ''),
(23, 36, 7, 0, '2020-03-09', '11:24:37 AM', 0, '2020-03-09 05:55:18', 'rahul sharma', '1221212121', 'Male', 'test', 21, '', 1, ''),
(24, 36, 7, 0, '2020-03-09', '06:07:28 pm', 0, '2020-03-09 12:37:47', 'rahul ', '9988588855', 'Male', '', 35, '', 1, ''),
(25, 83, 71, 0, '2020-03-12', '12:58:39 p.m.', 0, '2020-03-11 07:29:37', 'raju', '9855478632', 'Male', '', 52, '', 1, ''),
(26, 83, 72, 0, '2020-03-13', '02:09:31 p.m.', 0, '2020-03-11 08:40:20', 'monu', '9663280480', 'Male', '', 22, '', 1, ''),
(27, 83, 72, 0, '2020-03-13', '02:11:44 p.m.', 0, '2020-03-11 08:42:08', 'sonu', '7480566458', 'Male', '', 22, '', 2, ''),
(28, 83, 71, 0, '2020-03-12', '02:13:26 p.m.', 0, '2020-03-11 08:43:56', 'mona', '8796624581', 'Female', '', 20, '', 2, ''),
(29, 83, 72, 0, '2020-03-13', '02:22:17 p.m.', 0, '2020-03-11 08:52:57', 'sona', '8967618878', 'Female', '', 20, '', 1, ''),
(30, 83, 71, 0, '2020-03-12', '02:36:44 p.m.', 0, '2020-03-11 09:08:26', 'rona', '8055475776', 'Female', '', 22, '', 2, ''),
(31, 36, 7, 0, '2020-03-16', '07:09:47 PM', 0, '2020-03-16 13:40:19', 'neha', '1212121212', 'Female', '', 2, '', 2, ''),
(32, 36, 7, 0, '2020-03-17', '06:37:20 pm', 1, '2020-03-17 13:11:04', 'Shubham Sharma', '9586858585', 'Male', '', 25, '', 2, ''),
(33, 36, 7, 0, '2020-03-24', '09:37:28 am', 1, '2020-03-24 11:50:10', 'rahul', '9907898654', 'Male', '', 25, '', 1, ''),
(34, 88, 126, 0, '2020-03-26', '03:53:45 p.m.', 1, '2020-03-24 10:31:29', 'sonu', '7412580963', 'Male', '', 20, '', 1, ''),
(35, 88, 71, 0, '2020-03-26', '03:55:24 p.m.', 0, '2020-03-24 10:25:58', 'garima', '8741253690', 'Female', '', 26, '', 2, ''),
(36, 88, 126, 0, '2020-03-30', '03:58:00 p.m.', 0, '2020-03-24 10:29:17', 'xyz', '9856325840', 'Female', '', 8, '', 2, ''),
(37, 90, 7, 0, '2020-03-24', '05:14:54 pm', 1, '2020-03-24 11:50:13', 'Rahul', '9907854884', 'Male', '', 25, '', 2, ''),
(38, 90, 7, 0, '2020-03-24', '07:34:16 pm', 0, '2020-03-24 14:05:24', 'rahul', '9907898645', 'Male', 'aggag', 25, '', 2, ''),
(39, 90, 7, 0, '2020-03-24', '07:47:48 pm', 0, '2020-03-24 14:18:53', 'jjjj', '5555555555', 'Male', '', 5, '', 2, ''),
(40, 92, 69, 0, '2020-04-04', '01:14:59 PM', 1, '2020-04-04 09:03:36', 'Rohan', '8173012410', 'Male', '', 5, '', 2, ''),
(41, 92, 7, 0, '2020-04-06', '01:32:16 PM', 0, '2020-04-04 08:05:02', 'Gudia Kumari ', '9140973075', 'Female', '', 23, '', 1, ''),
(42, 92, 69, 0, '2020-04-04', '02:21:29 PM', 1, '2020-04-04 09:19:41', 'shiv Kumar ', '9415657603', 'Male', '', 32, '', 2, ''),
(43, 92, 69, 0, '2020-04-04', '02:23:20 PM', 1, '2020-04-04 09:03:45', 'Manish ', '7068336624', 'Male', '', 24, '', 2, ''),
(44, 92, 69, 0, '2020-04-04', '02:25:00 PM', 1, '2020-04-04 09:19:51', 'Rohit Kumar ', '8173997317', 'Male', '', 21, '', 2, ''),
(45, 92, 69, 0, '2020-04-04', '02:26:46 PM', 1, '2020-04-04 09:03:52', 'Vivek Singh', '7317770888', 'Male', '', 31, '', 2, ''),
(46, 92, 69, 0, '2020-04-04', '02:29:11 PM', 1, '2020-04-04 09:19:44', 'Shila Devi', '0522234521', 'Female', '', 53, '', 2, ''),
(47, 93, 69, 0, '2020-04-06', '05:50:28 PM', 0, '2020-04-04 12:22:53', 'sudhanshu kumar singh', '7007675263', 'Male', 'seorai', 26, '', 1, ''),
(48, 93, 69, 0, '2020-04-07', '05:53:35 PM', 0, '2020-04-04 12:24:37', 'sudhanshu kumar singh', '7007675263', 'Male', 'seorai', 26, '', 2, ''),
(49, 93, 69, 0, '2020-04-08', '05:54:51 PM', 0, '2020-04-04 12:25:40', 'sudhanshu kumar singh', '7007675263', 'Male', 'seorai', 26, '', 2, ''),
(50, 93, 69, 0, '2020-04-06', '05:55:54 PM', 0, '2020-04-04 12:26:44', 'manoj kumar singh', '7007675263', 'Male', 'seorai', 40, '', 1, ''),
(51, 93, 69, 0, '2020-04-07', '05:57:02 PM', 0, '2020-04-04 12:27:56', 'manish kumar singh', '7007675263', 'Male', 'bhadaura', 38, '', 2, ''),
(52, 92, 69, 0, '2020-04-04', '06:29:00 PM', 0, '2020-04-04 13:02:14', 'Santanu singh', '8853015554', 'Male', '', 10, '', 2, ''),
(53, 92, 69, 0, '2020-04-04', '06:32:46 PM', 0, '2020-04-04 13:05:24', 'Abhimanu Kr', '9452100155', 'Male', '', 55, '', 2, ''),
(54, 93, 69, 0, '2020-04-08', '07:10:25 PM', 0, '2020-04-04 13:41:36', 'manish kumar singh', '7007675263', 'Male', 'seorai', 32, '', 2, ''),
(55, 93, 69, 0, '2020-04-06', '07:11:54 PM', 0, '2020-04-04 13:42:47', 'himanshu kumar singh', '7007675263', 'Male', 'seorai', 28, '', 1, ''),
(56, 72, 69, 0, '2020-04-06', '08:27:13 am', 0, '2020-04-05 02:58:44', 'rahul', '9616866402', 'Male', 'ghazipur', 20, '', 1, ''),
(57, 72, 69, 0, '2020-04-06', '08:30:08 am', 0, '2020-04-05 03:00:59', 'munna s', '9450723920', 'Male', 'seorai', 45, '', 1, ''),
(58, 72, 69, 0, '2020-04-06', '08:31:30 am', 0, '2020-04-05 03:02:34', 'binod s', '9554616445', 'Male', 'seorai', 50, '', 1, ''),
(59, 72, 69, 0, '2020-04-06', '08:32:51 am', 0, '2020-04-05 03:03:38', 'sona', '8957276428', 'Male', 'seorai', 30, '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `Banner`
--

CREATE TABLE `Banner` (
  `id` int(100) NOT NULL,
  `banner_image` varchar(190) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Banner`
--

INSERT INTO `Banner` (`id`, `banner_image`) VALUES
(1, 'b1.png'),
(2, 'b2.png'),
(3, 'b3.png'),
(4, 'b4.png'),
(5, 'b5.png'),
(6, 'b6.png'),
(7, 'b7.png'),
(8, 'b8.png');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bookmarkText` text NOT NULL,
  `title` text NOT NULL,
  `mId` varchar(100) NOT NULL,
  `isNew` varchar(100) NOT NULL,
  `create_at` varchar(111) NOT NULL,
  `postId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`id`, `user_id`, `bookmarkText`, `title`, `mId`, `isNew`, `create_at`, `postId`) VALUES
(1, 97, 'Testset', 'asdasdasd', '4564565454', 'true', '15-05-1988', 0),
(2, 97, 'Testset', 'asdasdasd', '4564565454', 'true', '15-05-1988', 0),
(11, 130, '<p>LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsum</p><\\n>', 'LoremIpsum', '5', '1', '25-Apr-2020', 1),
(15, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(16, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(17, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(18, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(19, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(20, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(21, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(22, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(23, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(24, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(25, 97, 'Testset', 'asdasdasd', '4564565454', '1', '15-05-1988', 0),
(26, 130, '<p>LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsum</p><\\n>', 'LoremIpsum', '1', '1', 'Apr 30, 2020', 1),
(27, 139, '<p>LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsum</p><\\n>', 'LoremIpsum', '1', '1', '1 May 2020', 1),
(28, 139, '<p>LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsum</p><\\n>', 'LoremIpsum', '1', '1', '2 May 2020', 1),
(29, 142, '<p>testestest</p><\\n>', 'testtest', '1', '1', 'May 7, 2020', 4),
(30, 130, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles1', '6', '1', 'May 19, 2020', 1),
(31, 144, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles1', '1', '1', 'May 19, 2020', 1),
(32, 145, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles2', '1', '1', 'May 19, 2020', 2),
(33, 148, '<p>1 These are the sons of Israel; Reuben, Simeon, Levi, and Judah, Issachar, and Zebulun,</p>\n<p>2 Dan, Joseph, and Benjamin, Naphtali, Gad, and Asher.</p>\n<p>3 The sons of Judah; Er, and Onan, and Shelah: which three were born unto him of the daughter of Shua the Canaanitess. And Er, the firstborn of Judah, was evil in the sight of the LORD; and he slew him.</p>\n<p>4 And Tamar his daughter in law bare him Pharez and Zerah. All the sons of Judah were five.</p>\n<p>5 The sons of Pharez; Hezron, and Hamul.</p>\n<p>6 And the sons of Zerah; Zimri, and Ethan, and Heman, and Calcol, and Dara: five of them in all.</p>\n<p>7 And the sons of Carmi; Achar, the troubler of Israel, who transgressed in the thing accursed.</p>\n<p>8 And the sons of Ethan; Azariah.</p>\n<p>9 The sons also of Hezron, that were born unto him; Jerahmeel, and Ram, and Chelubai.</p>\n<p>10 And Ram begat Amminadab; and Amminadab begat Nahshon, prince of the children of Judah;</p>\n<p>11 And Nahshon begat Salma, and Salma begat Boaz,</p>\n<p>12 And Boaz begat Obed, and Obed begat Jesse,</p>\n<p>13 And Jesse begat his firstborn Eliab, and Abinadab the second, and Shimma the third,</p>\n<p>14 Nethaneel the fourth, Raddai the fifth,</p>\n<p>15 Ozem the sixth, David the seventh:</p>\n<p>16 Whose sisters were Zeruiah, and Abigail. And the sons of Zeruiah; Abishai, and Joab, and Asahel, three.</p>\n<p>17 And Abigail bare Amasa: and the father of Amasa was Jether the Ishmeelite.</p>\n<p>18 And Caleb the son of Hezron begat children of Azubah his wife, and of Jerioth: her sons are these; Jesher, and Shobab, and Ardon.</p>\n<p>19 And when Azubah was dead, Caleb took unto him Ephrath, which bare him Hur.</p>\n<p>20 And Hur begat Uri, and Uri begat Bezaleel.</p>\n<p>21 And afterward Hezron went in to the daughter of Machir the father of Gilead, whom he married when he was threescore years old; and she bare him Segub.</p>\n<p>22 And Segub begat Jair, who had three and twenty cities in the land of Gilead.</p>\n<p>23 And he took Geshur, and Aram, with the towns of Jair, from them, with Kenath, and the towns thereof, even threescore cities. All these belonged to the sons of Machir the father of Gilead.</p>\n<p>24 And after that Hezron was dead in Caleb-ephratah, then Abiah Hezron&#39;s wife bare him Ashur the father of Tekoa.</p>\n<p>25 And the sons of Jerahmeel the firstborn of Hezron were, Ram the firstborn, and Bunah, and Oren, and Ozem, and Ahijah.</p>\n<p>26 Jerahmeel had also another wife, whose name was Atarah; she was the mother of Onam.</p>\n<p>27 And the sons of Ram the firstborn of Jerahmeel were, Maaz, and Jamin, and Eker.</p>\n<p>28 And the sons of Onam were, Shammai, and Jada. And the sons of Shammai; Nadab, and Abishur.</p>\n<p>29 And the name of the wife of Abishur was Abihail, and she bare him Ahban, and Molid.</p>\n<p>30 And the sons of Nadab; Seled, and Appaim: but Seled died without children.</p>\n<p>31 And the sons of Appaim; Ishi. And the sons of Ishi; Sheshan. And the children of Sheshan; Ahlai.</p>\n<p>32 And the sons of Jada the brother of Shammai; Jether and Jonathan: and Jether died without children.</p>\n<p>33 And the sons of Jonathan; Peleth, and Zaza. These were the sons of Jerahmeel.</p>\n<p>34 Now Sheshan had no sons, but daughters. And Sheshan had a servant, an Egyptian, whose name was Jarha.</p>\n<p>35 And Sheshan gave his daughter to Jarha his servant to wife; and she bare him Attai.</p>\n<p>36 And Attai begat Nathan, and Nathan begat Zabad,</p>\n<p>37 And Zabad begat Ephlal, and Ephlal begat Obed,</p>\n<p>38 And Obed begat Jehu, and Jehu begat Azariah,</p>\n<p>39 And Azariah begat Helez, and Helez begat Eleasah,</p>\n<p>40 And Eleasah begat Sisamai, and Sisamai begat Shallum,</p>\n<p>41 And Shallum begat Jekamiah, and Jekamiah begat Elishama.</p>\n<p>42 Now the sons of Caleb the brother of Jerahmeel were, Mesha his firstborn, which was the father of Ziph; and the sons of Mareshah the father of Hebron.</p>\n<p>43 And the sons of Hebron; Korah, and Tappuah, and Rekem, and Shema.</p>\n<p>44 And Shema begat Raham, the father of Jorkoam: and Rekem begat Shammai.</p>\n<p>45 And the son of Shammai was Maon: and Maon was the father of Beth-zur.</p>\n<p>46 And Ephah, Caleb&#39;s concubine, bare Haran, and Moza, and Gazez: and Haran begat Gazez.</p>\n<p>47 And the sons of Jahdai; Regem, and Jotham, and Geshan, and Pelet, and Ephah, and Shaaph.</p>\n<p>48 Maachah, Caleb&#39;s concubine, bare Sheber, and Tirhanah.</p>\n<p>49 She bare also Shaaph the father of Madmannah, Sheva the father of Machbenah, and the father of Gibea: and the daughter of Caleb was Achsah.</p>\n<p>50 These were the sons of Caleb the son of Hur, the firstborn of Ephratah; Shobal the father of Kirjath-jearim,</p>\n<p>51 Salma the father of Bethlehem, Hareph the father of Beth-gader.</p>\n<p>52 And Shobal the father of Kirjath-jearim had sons; Haroeh, and half of the Manahethites.</p>\n<p>53 And the families of Kirjath-jearim; the Ithrites, and the Puhites, and the Shumathites, and the Mishraites; of them came the Zareathites, and the Eshtaulites.</p>\n<p>54 The sons of Salma; Bethlehem, and the Netophathites, Ataroth, the house of Joab, and half of the Manahethites, the Zorites.</p>\n<p>55 And the families of the scribes which dwelt at Jabez; the Tirathites, the Shimeathites, and Suchathites. These are the Kenites that came of Hemath, the father of the house of Rechab.</p>\n', '1 Chronicles2', '1', '1', 'May 20, 2020', 2),
(34, 148, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles2', '2', '1', 'May 20, 2020', 2),
(36, 148, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles1', '4', '1', 'May 21, 2020', 1),
(37, 148, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles1', '5', '1', 'May 21, 2020', 1),
(38, 148, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles1', '6', '1', 'May 21, 2020', 1),
(39, 148, '<p>1 Adam, Sheth, Enosh,</p>\n<p>2 Kenan, Mahalaleel, Jered,</p>\n<p>3 Henoch, Methuselah, Lamech,</p>\n<p>4 Noah, Shem, Ham, and Japheth.</p>\n<p>5 The sons of Japheth; Gomer, and Magog, and Madai, and Javan, and Tubal, and Meshech, and Tiras.</p>\n<p>6 And the sons of Gomer; Ashchenaz, and Riphath, and Togarmah.</p>\n<p>7 And the sons of Javan; Elishah, and Tarshish, Kittim, and Dodanim.</p>\n<p>8 The sons of Ham; Cush, and Mizraim, Put, and Canaan.</p>\n<p>9 And the sons of Cush; Seba, and Havilah, and Sabta, and Raamah, and Sabtecha. And the sons of Raamah; Sheba, and Dedan.</p>\n<p>10 And Cush begat Nimrod: he began to be mighty upon the earth.</p>\n<p>11 And Mizraim begat Ludim, and Anamim, and Lehabim, and Naphtuhim,</p>\n<p>12 And Pathrusim, and Casluhim, (of whom came the Philistines,) and Caphthorim.</p>\n<p>13 And Canaan begat Zidon his firstborn, and Heth,</p>\n<p>14 The Jebusite also, and the Amorite, and the Girgashite,</p>\n<p>15 And the Hivite, and the Arkite, and the Sinite,</p>\n<p>16 And the Arvadite, and the Zemarite, and the Hamathite.</p>\n<p>17 The sons of Shem; Elam, and Asshur, and Arphaxad, and Lud, and Aram, and Uz, and Hul, and Gether, and Meshech.</p>\n<p>18 And Arphaxad begat Shelah, and Shelah begat Eber.</p>\n<p>19 And unto Eber were born two sons: the name of the one was Peleg; because in his days the earth was divided: and his brother&#39;s name was Joktan.</p>\n<p>20 And Joktan begat Almodad, and Sheleph, and Hazarmaveth, and Jerah,</p>\n<p>21 Hadoram also, and Uzal, and Diklah,</p>\n<p>22 And Ebal, and Abimael, and Sheba,</p>\n<p>23 And Ophir, and Havilah, and Jobab. All these were the sons of Joktan.</p>\n<p>24 Shem, Arphaxad, Shelah,</p>\n<p>25 Eber, Peleg, Reu,</p>\n<p>26 Serug, Nahor, Terah,</p>\n<p>27 Abram; the same is Abraham.</p>\n<p>28 The sons of Abraham; Isaac, and Ishmael.</p>\n<p>29 These are their generations: The firstborn of Ishmael, Nebaioth; then Kedar, and Adbeel, and Mibsam,</p>\n<p>30 Mishma and Dumah, Massa, Hadad, and Tema,</p>\n<p>31 Jetur, Naphish, and Kedemah. These are the sons of Ishmael.</p>\n<p>32 Now the sons of Keturah, Abraham&#39;s concubine: she bare Zimran, and Jokshan, and Medan, and Midian, and Ishbak, and Shuah. And the sons of Jokshan; Sheba, and Dedan.</p>\n<p>33 And the sons of Midian; Ephah, and Epher, and Henoch, and Abida, and Eldaah. All these are the sons of Keturah.</p>\n<p>34 And Abraham begat Isaac. The sons of Isaac; Esau and Israel.</p>\n<p>35 The sons of Esau; Eliphaz, Reuel, and Jeush, and Jaalam, and Korah.</p>\n<p>36 The sons of Eliphaz; Teman, and Omar, Zephi, and Gatam, Kenaz, and Timna, and Amalek.</p>\n<p>37 The sons of Reuel; Nahath, Zerah, Shammah, and Mizzah.</p>\n<p>38 And the sons of Seir; Lotan, and Shobal, and Zibeon, and Anah, and Dishon, and Ezer, and Dishan.</p>\n<p>39 And the sons of Lothan; Hori, and Homam: and Timna was Lotan&#39;s sister.</p>\n<p>40 The sons of Shobal; Alian, and Manahath, and Ebal, Shephi, and Onam. And the sons of Zibeon; Aiah, and Anah.</p>\n<p>41 The sons of Anah; Dishon. And the sons of Dishon; Amram, and Eshban, and Ithran, and Cheran.</p>\n<p>42 The sons of Ezer; Bilhan, and Zavan, and Jakan. The sons of Dishan; Uz, and Aran.</p>\n<p>43 Now these are the kings that reigned in the land of Edom before any king reigned over the children of Israel; Bela the son of Beor: and the name of his city was Dinhabah.</p>\n<p>44 And when Bela was dead, Jobab the son of Zerah of Bozrah reigned in his stead.</p>\n<p>45 And when Jobab was dead, Husham of the land of the Temanites reigned in his stead.</p>\n<p>46 And when Husham was dead, Hadad the son of Bedad, which smote Midian in the field of Moab, reigned in his stead: and the name of his city was Avith.</p>\n<p>47 And when Hadad was dead, Samlah of Masrekah reigned in his stead.</p>\n<p>48 And when Samlah was dead, Shaul of Rehoboth by the river reigned in his stead.</p>\n<p>49 And when Shaul was dead, Baal-hanan the son of Achbor reigned in his stead.</p>\n<p>50 And when Baal-hanan was dead, Hadad reigned in his stead: and the name of his city was Pai; and his wife&#39;s name was Mehetabel, the daughter of Matred, the daughter of Mezahab.</p>\n<p>51 Hadad died also. And the dukes of Edom were; duke Timnah, duke Aliah, duke Jetheth,</p>\n<p>52 Duke Aholibamah, duke Elah, duke Pinon,</p>\n<p>53 Duke Kenaz, duke Teman, duke Mibzar,</p>\n<p>54 Duke Magdiel, duke Iram. These are the dukes of Edom.</p>', '1 Chronicles1', '7', '1', 'May 21, 2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `chapter_name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `contant_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `id` int(100) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`id`, `department_name`, `description`, `status`) VALUES
(2, 'Nuero', 'edited', 1),
(4, 'dental', 'dsfsfdsf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Doctors`
--

CREATE TABLE `Doctors` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fees` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `education` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(10) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `biography` longtext NOT NULL,
  `status` int(2) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `exp` int(11) NOT NULL,
  `hospital_id` varchar(100) NOT NULL,
  `Appointment_limit` int(11) NOT NULL,
  `Firebase_token` longtext NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctors`
--

INSERT INTO `Doctors` (`id`, `first_name`, `last_name`, `username`, `fees`, `email`, `password`, `dob`, `gender`, `address`, `Country`, `education`, `city`, `state`, `postal_code`, `phone_number`, `image`, `biography`, `status`, `profession`, `exp`, `hospital_id`, `Appointment_limit`, `Firebase_token`, `otp`) VALUES
(7, 'Rahul', 'Sharma', 'admin', 345, 'rahul@gmail.com', '123456789', '09-03-2020', 'male', 'tedyh', 'INDIA', 'mbbs', 'INDIA', 'Andhra Pra', '453454', '9770194565', 'images_(5)1.jpeg', 'The Rahul Sharma', 0, 'fggh', 45, 'arvindo medical hospital', 0, 'eJOA_KNgRwaxNnVKkJ5TUi:APA91bENlMGoNBKCWzmXm-RA3QyPoBegF0IDo41ja7ckVP-gjQ9UIr-u9ZJzQKMqY1hqulEFb1oILW0_uDwqCY-KANqHUyYtHBv7yEcDWHrreWQJEEO7f08AgS2mhK1SysGhJN0o4xzH', 3904),
(62, 'amita', '', '', 500, 'amita1@gmail.com', 'qwer12345', '27/02/1993', 'Female', 'lig', 'India', 'MSW', 'Indore', 'M.P', '460765', '9632587410', '', 'I amita having 2 yrs exp. in health domain', 0, 'psychologist', 2, 'arvindo', 20, '', 0),
(63, 'Amit', '', '', 500, 'amitsolanki@gmail.com', 'qwer12345', '27/02/1989', 'Male', 'lig', 'India', 'BAM', 'India', 'M.P', '456017', '9635287965', '20200216_1318091.jpg', '', 0, 'psychologist', 4, 'arvindo', 20, 'fbcLX6VSRsuFlz8mBCKbHa:APA91bHnbe02xp5rTUrlf-RQzB5DvGjgfXQdGsw8cTV6FM-UwlyGZTAD_Px2GKuJAOSa6-KYPJkhRWr_x9XPFayI6qJHZTrX974ocrPOUzVhQ2tnhnnJHYQwZPhFqGrNJzrsNBthuL8l', 0),
(68, 'Namrata', 'Yadav', '', 0, 'sweetsanjukumari11@gmail.com ', 'Shreeja@123', '15/02/1992', 'Female', 'Lucknow', '', '', '', '', '', '9140973075', '', '', 0, '', 0, '', 0, '', 0),
(69, 'DR', 'THAKUR', '', 500, 'prasenjeet.singh84@gmail.com', 'thakur1984', '14-02-2020', 'Male', 'varanasi\n\n \n', 'india', 'mmp', 'varanasi', 'up', '232333', '9616866402', '20200225_2019412.jpg', 'b  uff    \n   ', 0, 'chaild ', 50, 'pp', 0, 'e77RpTFxTf2XAiwGkirN5U:APA91bE_Gao-bHNpCx03CuT2TRQLCAC1fqJWJuRrjbfNK9dgSAtv8B4EZ4nBwc70UMAQD0IczwWERsLzjw0Ra5R6s4BYmZ2UQACfkUV7BAC9lekQf2K4d1Q0eGR66A1mUArdUI15ximC', 9317),
(71, 'aayushi', '', '', 500, 'aayushi@gmail.com', 'qwer12345', '04/03/1994', 'Female', 'lig', 'India', 'BAM', 'India', 'M.P', '467892', '6250864345', 'IMG-20200302-WA0021.jpg', 'xrycubsubianoau', 0, 'psychology ', 4, 'arvindo', 0, 'fr86urpmQSWh9oHDx8FAyK:APA91bGL_2sI4TMVe2YdJaaQ3krkYx7NOu1pxsliXQdM9enQZY7a0kqWRMw2m-b6xe5527do_2QtWIOl_xFwG0lti5m7gI8G5QrdRQm3WMj4YU-PnKv7wf_FL2MQqzy8a-8G9-Qi4aCm', 0),
(72, 'sudesh', '', '', 0, 'sudesh@gmail.com', 'qwer@1234', '11/03/1992', 'Male', 'mig', '', '', '', '', '', '8745696321', '', '', 0, '', 0, '', 0, 'e9rEq9zJSO2k9Sfywu99Sz:APA91bHlJbHMDU5GoNFdDS-GL4AEGiHeDOilwm1ZehahiNB2fdjEbZ8Bkr42GYd7nszlLUgDy8MxA3joX2NgcajaNbS8zY4YRPAXafUcpfURswlB2p10duJB6iXKAiFlj2FoRrfb9l6O', 0),
(73, 'asffda', '', '', 0, 'umangchopra4@gmail.com', '123456', '08121995', 'male', 'barnagar', '', '', '', '', '', '9926700342', '', '', 0, '', 0, '', 0, '', 0),
(74, 'Umang', '', '', 0, 'umang@gmail.com', '12345', '12344', 'Advance Be', 'D vyas Colony', '', '', '', '', '', '9926700343', '', '', 0, '', 0, '', 0, '', 0),
(75, 'rock', '', '', 0, 'rock@gmail.com', '12345', '12345', 'Advance', 'D vyas Colony', '', '', '', '', '', '9999999999', '', '', 0, '', 0, '', 0, '', 0),
(76, 'data', '', '', 0, 'data@gmail.com', '12345', '12345', 'Low Beginn', 'D vyas Colony', '', '', '', '', '', '1234512345', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(77, 'data1', '', '', 0, 'data1@gmail.com', '12345', '12345', 'Advance', 'D vyas Colony', '', '', '', '', '', '9999923456', '', '', 0, '', 0, '', 0, '', 0),
(78, 'Jimmy', 'D', '', 0, 'testjim111@gmail.com', '123456', '1234', 'Low Beginn', 'D vyas Colony', '', '', '', '', '', '123456789', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(79, 'samsung', '', '', 0, 'samsung@gmail.com', '12345', '12345', 'Advance', 'D vyas Colony', '', '', '', '', '', '9926700344', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(80, 'Umang', '', '', 0, 'suraj@gmail.com', '12345678', '1234', 'Advance', 'D vyas Colony', '', '', '', '', '', '9400648272', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(81, 'shubham', '', '', 0, 'shubham@gmail.com', '12345678', '08121995', 'male', 'D vyas Colony', '', '', '', '', '', '9926700123', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(82, 'umang', '', '', 0, 'user@gmail.com', '12345', '08121995', 'male', '12345', '', '', '', '', '', '1234567890', '', '', 0, '', 0, '', 0, '', 0),
(83, 'computer', '', '', 0, 'comp@user.com', '12345', '08121995', 'male', '12345', '', '', '', '', '', '9926700349', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(84, 'Umang', '', '', 0, 'someone@gmail.com', '12345', '1234', 'Low Beginn', '12345', '', '', '', '', '', '9926700340', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(85, 'ratan', '', '', 0, 'ratan@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '569863523563', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(86, 'dhamnesh', '', '', 0, 'dhamnesh@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '5632563698', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(87, 'test', '', '', 0, 'test@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '1234567898', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(88, 'ghhgg', '', '', 0, 'gggg@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '666666666666', '', '', 0, '', 0, '', 0, '', 0),
(89, 'dafasdfasfasdf', '', '', 0, 'Test', 'tyrtrtyrty', '08121995', 'male', 'fsdafsdf', '', '', '', '', '', '849238493284', '', '', 0, '', 0, '', 0, '', 0),
(90, 'umang', '', '', 0, 'dafadsf@gmail.com', '23423444', '08121995', 'male', '4234234234', '', '', '', '', '', '992674234423', '', '', 0, '', 0, '', 0, '', 0),
(91, 'umang', '', '', 0, 'umanfasdfg@gmail.com', '4332342343', '08121995', 'male', '2432432423', '', '', '', '', '', '423423423432', '', '', 0, '', 0, '', 0, '', 0),
(92, 'umang', '', '', 0, '123@gmail.com', '123@gmail.com', '08121995', 'male', '123@gmail.com', '', '', '', '', '', '123@gmail.co', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(93, 'fsdafd@gmail.com', '', '', 0, '42342344@gmail.com', 'jhflsahdfsafh', '08121995', 'male', 'fdklsaklfhsaflfl', '', '', '', '', '', '248357435843', '', '', 0, '', 0, '', 0, '', 0),
(94, 'umang', '', '', 0, 'fjsdkl@gmail.com', 'FASFSADFASFF', '08121995', 'male', 'SDAFSDAFSDAFSFSAFSDAF', '', '', '', '', '', '99267000342F', '', '', 0, '', 0, '', 0, '', 0),
(95, 'UMAFNAF', '', '', 0, 'JHFDAJA@', 'fsdafsafds', '08121995', 'male', 'fsdfsdaff', '', '', '', '', '', 'dasgmail.com', '', '', 0, '', 0, '', 0, '', 0),
(96, 'umang', 'chopra', '', 0, 'umangchopra765@gmail.com', 'mcaum', '08121995', 'male', 'mcaum', '', '', '', '', '', '499267003466', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(97, 'gdhdhdh', '', '', 0, 'today@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '253646464777', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(98, 'arpit', '', '', 0, 'arpitjadhav@alphawizz.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '9815400289', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(99, 'fsiodafa', '', '', 0, 'fklsdahfklsdahf@gmail.com', '78324723842', '321313', 'Advance Be', '49872387384', '', '', '', '', '', '54835735734', '', '', 0, '', 0, '', 0, '', 0),
(100, 'Jimmy', '', '', 0, 'test111@gmail.com', '123', '08121995', 'male', '123', '', '', '', '', '', '123456', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(101, 'fdsaf', '', '', 0, 'fsadfdsaff@gmail.com', '24234234324', '43234234', 'Low Interm', '42342342424', '', '', '', '', '', '894023424423', '', '', 0, '', 0, '', 0, '', 0),
(102, 'myname', '', '', 0, 'myname@gmail.com', '12345678', '08121995', 'male', '12345678', '', '', '', '', '', '0987654321', '', '', 0, '', 0, '', 0, '', 0),
(103, 'raj', '', '', 0, 'raj@gmail.com', 'qwer@1234', '18/03/1993', 'Male', 'mig', '', '', '', '', '', '7723015564', '', '', 0, '', 0, '', 0, '', 6251),
(104, 'rock', '', '', 0, 'rockboys@gmail.com', 'mcaumang', '1234', 'Low Interm', 'mcaumang', '', '', '', '', '', '932489484343', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(105, 'umang', '', '', 0, 'umang123@gmail.com', 'mcaumang', '08121995', 'male', 'mcaumang', '', '', '', '', '', '98234234324', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(106, 'test', '', '', 0, 'demo123@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '12345566633', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(107, 'umang', 'chopra', '', 0, 'today1@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '49926700342', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(108, 'corona', '', '', 0, 'corona@gmail.com', 'mcaumang', '1234', 'Advance', 'mcaumang', '', '', '', '', '', 'coronafadfd', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(109, 'sdhafjksdahfjk', '', '', 0, 'gjlfdshflah@gmail.com', '111111', '1234', 'Advance In', '111111', '', '', '', '', '', '23784723487', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(110, 'fdsdfsdaf', '', '', 0, 'fsdafsdafsd@gmail.com', '83428472', '08121995', 'male', '83428472', '', '', '', '', '', '83428472894', '', '', 0, '', 0, '', 0, '', 0),
(111, 'data@gmailcom', '', '', 0, 'data@gmailcom', '111111', '1234', 'Low Beginn', '111111', '', '', '', '', '', '28347234842', '', '', 0, '', 0, '', 0, '', 0),
(112, 'umang@gmail.cpom', '', '', 0, 'umang@gmail.cpom', '123456', '1234', 'Advance In', '123456', '', '', '', '', '', 'umang@gmail.', '', '', 0, '', 0, '', 0, '', 0),
(113, 'rokck', '', '', 0, 'rokck@gmail.com', '111111', '1233', 'Advance In', '111111', '', '', '', '', '', '9929382131', '', '', 0, '', 0, '', 0, '', 0),
(114, 'umang', '', '', 0, 'yoyo@gmail.com', '111111', '1234', 'Advance In', '111111', '', '', '', '', '', '9926700243', '', '', 0, '', 0, '', 0, '', 0),
(115, 'rock@gmail.com', '', '', 0, 'rock@gmail..com', 'mcaumang', '1234', 'Advance In', 'mcaumang', '', '', '', '', '', '9929992929', '', '', 0, '', 0, '', 0, '', 0),
(116, 'mobilepasswordClick', '', '', 0, 'mobilepassword21321lick@gmail.com', '111111', '1234', 'Low Interm', '111111', '', '', '', '', '', '2132133213', '', '', 0, '', 0, '', 0, '', 0),
(117, 'rockstar', '', '', 0, 'rockstar@gmail.com', '111111', '1234', 'Advance', '111111', '', '', '', '', '', '9797979797', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(118, 'Shree', '', '', 0, 'shree@gmail.com', 'mcaumang', '08121995', 'male', 'mcaumang', '', '', '', '', '', '9926700700', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(119, 'gp', '', '', 0, 'gp@gmail.com', 'gp1234', '08121995', 'male', 'gp1234', '', '', '', '', '', '7896541230', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(120, 'Kahraman', '', '', 0, 'info@mobilm.net', '123456', '08121995', 'male', '123456', '', '', '', '', '', '5555555555', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(121, 'data', '', '', 0, 'surya1@gmail.com', 'mcaumang', '08121995', 'male', 'mcaumang', '', '', '', '', '', '9926700311', '', '', 0, '', 0, '', 0, '', 0),
(122, 'your', '', '', 0, 'your@gmail.com', 'mcaumang', '08121995', 'male', 'mcaumang', '', '', '', '', '', '998877665544', '', '', 0, '', 0, '', 0, '', 0),
(123, 'subhash', '', '', 0, 'datass@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '9926700111', '', '', 0, '', 0, '', 0, '', 0),
(124, 'data', '', '', 0, 'data12345@gmail.com', 'mcaumang', '08121995', 'male', 'mcaumang', '', '', '', '', '', '9926777777', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(125, 'Vini', '', '', 0, 'vinisingh0912@gmail.com', 'qwer1234', '08121995', 'male', 'qwer1234', '', '', '', '', '', '6261342541', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(126, 'preeti', '', '', 500, 'preeti@gmail.com', 'qwer@1234', '24/03/1991', 'Female', 'indore', 'india', 'MBBS', 'indore', 'mp', '456780', '9109577738', 'images1.jpg', '', 0, '', 3, 'apollo', 0, 'ctME8iSjQcWG8kJ-RCejMB:APA91bFc6vlZMppfhSlVSfrY87MohToepFNc53HvqCo89DFgL3psbpybGHaRk-kP7M2HXaodMmmCJpeeJThfxqN2F6DBg56wu4YcRAsd7mZ85VddimhTGc7mx9ZGeX7etHPoAqwVqsuT', 5016),
(127, 'gsdafagdasfa', '', '', 0, 'test888@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '1231235231', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(128, 'data', '', '', 0, 'useradmin123@gmail.com', 'mcaumang', '1234', 'Advance', 'mcaumang', '', '', '', '', '', '99267004322', '', '', 0, '', 0, '', 0, '', 0),
(129, 'amit', '', '', 0, 'amit@gmail', 'qwer@1', '08121995', 'male', 'qwer@1', '', '', '', '', '', '7415612822', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(130, 'vishal', '', '', 0, 'vishal@gmail.com', 'qwer@1', '2822', 'Low Beginn', 'qwer@1', '', '', '', '', '', '74125612822', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(131, 'peter', '', '', 0, 'ploh1111@gmail.com', '123456', '08121995', 'male', '123456', '', '', '', '', '', '1231231111', '', '', 0, '', 0, '', 0, 'f7GEYQJqTBCSeo-KWKPCRd:APA91bHl-Z3ZU_lHWsC1MkJdkK4KflAyaWLn1H1EKH5rib79xQ6Gyqhq7LAi2Apnbf0h59fMMGBvSyF-yuIsyhRmk1fK7gvcQuu3sHK0c6LwEVohtx18zGXnZ23ilkiYzn85xOWeQBrK', 0),
(132, 'Shiv', 'Kumar', '', 0, 'shiv6680@hotmail.com ', '9889259958', '07/03/1986', 'Male', 'H.N 545, Inderprastha Colony, Rohtak H.R', '', '', '', '', '', '8173012410', '', '', 0, '', 0, '', 0, '', 9199);

-- --------------------------------------------------------

--
-- Table structure for table `doctors_availablity`
--

CREATE TABLE `doctors_availablity` (
  `id` int(11) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors_availablity`
--

INSERT INTO `doctors_availablity` (`id`, `from_date`, `to_date`, `doctor_id`, `status`) VALUES
(16, '1970-01-01 12:00:00', '1970-01-01 12:00:00', 7, 0),
(15, '2020-01-12 12:00:00', '2020-01-16 12:00:00', 7, 0),
(14, '2020-01-12 12:00:00', '2020-01-16 12:00:00', 7, 0),
(13, '2020-01-12 12:00:00', '2020-01-16 12:00:00', 7, 0),
(12, '2020-01-12 12:00:00', '2020-01-16 12:00:00', 7, 0),
(11, '2020-01-12 12:00:00', '2020-01-16 12:00:00', 7, 0),
(10, '2020-01-12 12:00:00', '2020-01-16 12:00:00', 7, 0),
(17, '2020-01-29 12:00:00', '2020-01-29 12:00:00', 7, 1),
(18, '2020-01-29 12:00:00', '2020-01-30 12:00:00', 7, 0),
(19, '2020-01-29 12:00:00', '2020-01-30 12:00:00', 7, 1),
(20, '2020-01-30 12:00:00', '2020-01-30 12:00:00', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Doctor_review`
--

CREATE TABLE `Doctor_review` (
  `id` int(100) NOT NULL,
  `doctor_id` int(100) NOT NULL,
  `patient_id` int(100) NOT NULL,
  `comment` longtext NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor_review`
--

INSERT INTO `Doctor_review` (`id`, `doctor_id`, `patient_id`, `comment`, `rating`) VALUES
(3, 14, 34, 'hii ', 4),
(4, 14, 34, 'hii ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Doctor_schedule`
--

CREATE TABLE `Doctor_schedule` (
  `id` int(100) NOT NULL,
  `doctor_id` int(100) NOT NULL,
  `department_id` int(100) NOT NULL,
  `available` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `status` int(10) NOT NULL,
  `morning_start_time` varchar(100) NOT NULL,
  `morning_end_time` varchar(100) NOT NULL,
  `evening_start_time` varchar(100) NOT NULL,
  `evening_end_time` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `evening_morning_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor_schedule`
--

INSERT INTO `Doctor_schedule` (`id`, `doctor_id`, `department_id`, `available`, `start_time`, `end_time`, `status`, `morning_start_time`, `morning_end_time`, `evening_start_time`, `evening_end_time`, `from_date`, `to_date`, `evening_morning_status`) VALUES
(2, 12, 2, '[\"Monday\"]', '12.00', '6.00 AM', 1, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(4, 11, 2, '[\"Tuesday\",\"Wednesday\",\"Thursday\"]', '10:00 AM', '8:00 PM', 1, '8.00AM', '12.30AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(29, 7, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\"]', '1:03 PM', '1:03 PM', 1, '08:00 Am', '11:00 Am', '04:00 PM', '09:00 PM', '2020-03-07', '2020-03-08', '1,1'),
(49, 14, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\"]', '9:00 AM', '6:30 PM', 1, '8.00AM', '11.30AM', '6.00PM', '8.30PM', '2020-01-30', '2020-01-30', '1,1'),
(50, 57, 2, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Friday\"]', '5:00 PM', '11:00 PM', 1, '08.00 AM', '11.00AM', '05.00 PM', '09.00 PM', '2020-01-31', '2020-02-22', '1,1'),
(51, 42, 0, '[\"Tuesday\",\"Thursday\",\"Saturday\"]', '', '', 1, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(52, 43, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\",\"Sunday\"]', '', '', 1, '', '', '5.00PM', '9.00PM', '0000-00-00', '0000-00-00', '0,1'),
(53, 44, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\"]', '3:00 PM', '9:00 PM', 1, '', '', '5.00PM', '9.00PM', '0000-00-00', '0000-00-00', '1,1'),
(55, 11, 2, '[\"Tuesday\",\"Thursday\",\"Saturday\"]', '12:00 PM', '10:30 PM', 1, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(56, 13, 2, '[\"Monday\"]', '12:39 PM', '12:39 PM', 1, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(57, 46, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\"]', '', '', 1, '8.00AM', '11.00AM', '', '', '2020-02-23', '2020-02-23', '0,1'),
(58, 20, 2, '[\"Sunday\",\"Monday\",\"Tuesday\"]', '5:28 PM', '5:28 PM', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(59, 27, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(60, 28, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(61, 29, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(62, 30, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(63, 31, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(64, 32, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(65, 34, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(66, 35, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(67, 36, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,1'),
(68, 37, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(69, 38, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(70, 40, 2, '[\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday...', '', '', 0, '8.00AM', '11.00AM', '', '', '0000-00-00', '0000-00-00', '1,0'),
(71, 57, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Friday\",\"Sunday\"]', '', '', 0, '08.00 AM', '11.00 AM', '04.00 PM', '07.00 PM', '2020-02-26', '2020-02-29', '1,1'),
(72, 53, 2, '[\"Sunday\",\"Monday\"]', '6:03 PM', '6:03 PM', 0, '8.00AM', '11.00AM', '', '', '2020-02-13', '2020-02-19', '1,1'),
(82, 58, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\"]', '', '', 1, '10:30 PM', '12.00 PM', '04.00 PM', '07.00 PM', '0000-00-00', '0000-00-00', '1,1'),
(83, 54, 0, '', '', '', 0, '08.00 AM', '11.00 AM', '04.00 PM', '07.00 PM', '0000-00-00', '0000-00-00', '1,1'),
(87, 55, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\",\"Sunday\"]', '', '', 0, '9:30AM', '07:00 AM', '02:00 PM', '9:30PM', '2020-02-29', '2020-03-01', '1,1'),
(88, 71, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\"]', '', '', 1, '08:00 Am', '10:00 Am', '07:00 PM', '22:00 PM', '2020-03-10', '2020-03-11', '1,1'),
(89, 57, 0, '', '', '', 0, '08.00 AM', '11.00 AM', '04.00 PM', '07.00 PM', '0000-00-00', '0000-00-00', '1,1'),
(90, 62, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\"]', '', '', 0, '11:00 AM', '12:00 PM', '04:00 PM', '8:00 PM', '2020-02-29', '2020-03-01', '1,1'),
(91, 63, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\",\"Sunday\"]', '', '', 1, '07:00 Am', '12:00 PM', '07:00 PM', '22:16 PM', '2020-03-07', '2020-03-08', '1,1'),
(92, 64, 0, '[\"Monday\",\"Wednesday\",\"Friday\"]', '', '', 0, '9:0AM', '12:0AM', '5:0PM', '9:0PM', '2020-03-02', '2020-03-05', '1,1'),
(93, 65, 0, '', '', '', 0, '', '', '', '', '2020-02-28', '2020-02-28', ''),
(94, 66, 0, '[\"Monday\",\"Wednesday\",\"Friday\",\"Sunday\"]', '', '', 1, '9:0PM', '1:0PM', '5:30PM', '10:46PM', '2020-03-02', '2020-03-08', '1,1'),
(95, 67, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Sunday\"]', '', '', 0, '9:0PM', '11:0PM', '', '', '2020-03-01', '2020-03-05', '1,0'),
(96, 70, 0, '[\"Monday\",\"Wednesday\",\"Friday\"]', '', '', 1, '', '', '', '', '0000-00-00', '0000-00-00', ''),
(97, 69, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\"]', '', '', 1, '9:12PM', '1:12PM', '3:37PM', '5:37PM', '2020-03-13', '2020-03-22', '1,1'),
(98, 72, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\"]', '', '', 0, '8:00 Am', '11:00 Am', '7:00 PM', '10:00 PM', '2020-03-14', '2020-03-15', '1,1'),
(99, 126, 0, '[\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\",\"Friday\",\"Saturday\"]', '', '', 1, '8:00 Am', '11:00 Am', '7:00 PM', '10:00 PM', '2020-03-25', '2020-03-25', '1,1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `doctor_id` int(100) NOT NULL,
  `patient_id` int(100) NOT NULL,
  `feedback` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `doctor_id`, `patient_id`, `feedback`) VALUES
(1, 7, 20, 'best doctor'),
(2, 11, 20, 'best doctor'),
(3, 13, 20, 'best doctor'),
(4, 14, 20, 'best doctor'),
(5, 20, 20, 'best doctor'),
(6, 20, 20, 'best doctor'),
(7, 20, 21, 'best doctor'),
(8, 20, 23, 'best doctor');

-- --------------------------------------------------------

--
-- Table structure for table `Highlights`
--

CREATE TABLE `Highlights` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `highlightText` varchar(100) NOT NULL,
  `highlightColorCode` int(20) NOT NULL,
  `isNew` int(10) NOT NULL,
  `mId` int(30) NOT NULL,
  `postId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Highlights`
--

INSERT INTO `Highlights` (`id`, `user_id`, `highlightText`, `highlightColorCode`, `isNew`, `mId`, `postId`) VALUES
(55, 126, 'remIpsum', 1, 0, 6, 0),
(54, 126, 'LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsum', 1, 0, 5, 0),
(96, 130, 'Which is a manifest token of the righteous judgment of God, that ye may be counted worthy of the kin', 1, 0, 9, 4),
(49, 125, 'LoremIpsumLoremIpsumLoremIpsu', 1, 0, 5, 0),
(97, 130, 'shall be punished with everlasting destruction from the presence of the Lord, and from the glory of ', 1, 0, 10, 4),
(45, 124, 'LoremIp', 1, 0, 7, 0),
(44, 124, 'LoremIp', 1, 0, 7, 0),
(43, 124, 'LoremIpsumLoremIpsu', 1, 0, 6, 0),
(42, 124, 'LoremIpsumLoremIpsumLoremIpsumLo', 1, 0, 5, 0),
(30, 104, 'demo3', 3, 0, 125, 0),
(31, 105, 'demo4', 3, 0, 126, 0),
(32, 106, 'demo5', 1, 0, 127, 0),
(33, 106, 'demo5', 1, 0, 127, 0),
(34, 107, 'asdf', 2, 0, 128, 0),
(35, 108, 'asdfqwqw', 1, 0, 129, 0),
(36, 110, 'qwerty', 3, 0, 131, 0),
(37, 111, 'asdfghhjkkk', 2, 0, 132, 0),
(38, 111, 'asdfghhjkkk', 2, 0, 132, 0),
(39, 111, 'asdfghhjkkk', 2, 0, 132, 0),
(41, 124, 'LoremIpsumLoremIpsumLoremIpsumLo', 1, 0, 5, 0),
(56, 126, 'remIpsum', 1, 0, 6, 0),
(94, 130, '8 And then shall that Wicked be revealed, whom the Lord shall consume with the spirit of his mouth, ', 1, 0, 7, 4),
(95, 130, 'And now ye know what withholdeth that he might be revealed in his time.\n7 For the mystery of iniquit', 1, 0, 8, 4),
(88, 136, 'LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsum', 1, 0, 2, 1),
(80, 130, 'remIpsumLoremIpsumLoremIpsumLoremIpsum', 1, 0, 6, 1),
(79, 130, 'LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLore', 1, 0, 5, 1),
(98, 130, 'Silvanus, and Timo', 1, 0, 11, 4),
(99, 130, 'thank', 1, 0, 12, 4),
(100, 130, 'manifest token of the righteous judgment of God, that ye may be counted worthy of the kingdom of God', 1, 0, 13, 4),
(101, 130, 'token of the righteous judgment of God, that ye may be counted worthy of the kingdom of God, for whi', 1, 0, 14, 4),
(102, 130, 'you', 1, 0, 15, 4),
(103, 130, 'to', 1, 0, 16, 4),
(104, 130, 'with us, when', 1, 0, 17, 4),
(105, 130, 'for you, brethren, as it is meet, because that your faith groweth exceedingly, and the charity of ev', 1, 0, 18, 4),
(106, 130, 'righteous judgment of God, that ye may be counted worthy of the kingdom of God, for which ye also su', 1, 0, 19, 4),
(107, 130, 'chargeable to any of you:\n9 Not because we have not power, but to make ourselves an ensample unto yo', 1, 0, 20, 1),
(108, 130, 'with all power and signs and lying wonders,\n10 And with all deceivableness of unrighteousness in the', 1, 0, 21, 1),
(109, 130, 'things which we command you.\nAnd the Lord direct your hearts into the love of God, and into the pati', 1, 0, 22, 1),
(110, 130, 'glorified', 1, 0, 23, 1),
(111, 130, '\nFor yourselves know how ye ought to follow us: for we behaved not ourselves disorderly among you;', 1, 0, 24, 1),
(112, 130, 'w we command you, brethren, in the name of our Lord Jesus Christ, that ye withdraw yourselves from e', 1, 0, 25, 1),
(113, 130, 'Neither did we eat any man\'s bread for nought; but wrought with labour and travail night and day, th', 1, 0, 26, 1),
(114, 130, 'Neither did we eat any man\'s bread for nought; but wrought with labour and travail night and day, th', 1, 0, 27, 1),
(115, 130, 'yourselves know how ye ou', 1, 0, 28, 1),
(116, 130, 'Neither did we eat any man\'s bread for nought; but wrought ', 1, 0, 29, 1),
(117, 130, 'For yourselves know how ye ought to follow us: for we behaved not ourselves', 1, 0, 30, 1),
(118, 130, 'did we eat any man\'s bread for nought; but wrought with labour and travail', 1, 0, 31, 1),
(119, 130, 'ourselves disorderly', 1, 0, 32, 1),
(120, 130, 'Christ, that ye withdraw yourselves from every brother that walketh disorderly, and not after the tr', 1, 0, 33, 1),
(121, 130, 'walketh', 1, 0, 34, 1),
(122, 130, 'eat any man\'s bread for nought; but wrought with labour and travail night and day, that we might not', 1, 0, 35, 1),
(123, 130, 'we were with you, this we commanded you, that if any would not work, neither should he eat.', 1, 0, 36, 1),
(124, 130, 'we might not be chargeable to any of yo', 1, 0, 37, 1),
(125, 130, '6 Now we command you, brethren, in the name of our Lord Jesus Christ, that ye withdraw yourselves fr', 1, 0, 38, 1),
(126, 130, '8 Neither did we eat any man\'s bread for nought; but wrought with labour and travail night and day, ', 1, 0, 39, 1),
(127, 130, 'not work, neither should h', 1, 0, 40, 1),
(128, 130, 'any man\'s bread for nought; but wrought with labour and travail night and day, that w', 1, 0, 41, 1),
(129, 130, 'withdraw yourselves from every brother that walketh disorderly, and not after the tradition', 1, 0, 42, 1),
(130, 130, ' And Canaan begat Zidon his firstborn, and Heth,', 1, 0, 43, 1),
(136, 148, 'third, Absalom the son of Maachah the daughter of Talmai king of Geshur: ', 1, 0, 2, 2),
(137, 148, 'and six months: and in Jerusalem he r', 1, 0, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Hospital`
--

CREATE TABLE `Hospital` (
  `id` int(100) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `hospital_address` varchar(100) NOT NULL,
  `hospital_service` longtext NOT NULL,
  `hospital_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hospital`
--

INSERT INTO `Hospital` (`id`, `hospital_name`, `hospital_address`, `hospital_service`, `hospital_image`) VALUES
(6, 'Bombay Hospital', 'Bombay Hospital, Eastern Ring Road, Tulsi Nagar, Vijay Nagar, Indore, Madhya Pradesh, India', 'Considered the premier private trust hospital in India which was Set up in 1950s by the great philan', 'famous_hospital2.jpeg'),
(13, 'AIIMS, All India Institute of Medical Sciences', 'All India Institute of Medical Sciences. Ansari Nagar, New Delhi - 110029', 'Considered the premier private trust hospital in India which was Set up in 1930s by the great philan', 'famous_hospital1.jpeg'),
(19, 'King Edward Memorial Hospital', ' Acharya Donde Marg, Parel, Mumbai, Maharashtra 400012', 'Top 15 Best Hospitals in India – Most Reputed & TrustedHOSPITALS BY SANTOSH JULY 12, 2019 NO COMMENTS Share 5 Tweet Share Pin 5SHARES    Over a period of time, India has gained a global reputation as medical hub.', 'King_Edward_Memorial_Hospital.jpg'),
(20, 'Hiranandani Hospital', 'Hill Side Avenue, Hiranandani Gardens, Powai, Mumbai – 400 076. Phone: 022 25763300 / 3333 – 022 710', 'Top 15 Best Hospitals in India – Most Reputed & TrustedHOSPITALS BY SANTOSH JULY 12, 2019 NO COMMENTS Share 5 Tweet Share Pin 5SHARES    Over a period of time, India has gained a global reputation as medical hub, where patients get world class healthcare facilities, coming at affordable prices. Hospitals all over the country are equipped with trained doctors, medical staff and infrastructure, to help the patient get fit and fine with the best possible treatment.   Listed below are top 15 best hospitals in India:  15. Sir Ganga Ram Hospital Sir-Ganga-Ram-Hospital  This is a 675 bed multi-specialty hospital located in New Delhi. The Minimal Access Surgery Department of the hospital is the first of its kind in South Asia.', 'hirandani-hospital.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Loan`
--

CREATE TABLE `Loan` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `loan_amount` int(100) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `loan_interest` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `patient_name` varchar(111) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Loan`
--

INSERT INTO `Loan` (`id`, `patient_id`, `loan_amount`, `from`, `to`, `loan_interest`, `status`, `patient_name`, `phone_number`) VALUES
(9, '', 25, '2020-01-31', '2020-02-02', 0, 1, 'gopal sharma', 2147483647),
(10, '', 25, '2020-01-31', '2020-03-02', 0, 0, 'rahul sharma', 2147483647),
(11, '', 55, '2020-01-31', '2021-01-31', 0, 2, 'mukesh dubey', 2147483647),
(16, '90', 12, '2020-12-12', '2020-04-12', 0, 1, 'gopal sharma', 2147483647),
(17, '20', 23000, '2020-12-05', '2020-12-06', 5, 0, 'gopal sharma', 2147483647),
(18, '20', 23000, '1970-01-01', '1970-01-01', 5, 2, 'gopal sharma', 2147483647),
(19, '20', 23000, '2020-12-05', '2020-12-06', 5, 0, 'gopal sharma', 2147483647),
(20, '36', 1000, '2020-02-22', '2020-02-22', 2020, 0, 'tedd', 2147483647),
(21, '36', 1000, '2020-02-22', '2020-02-22', 2020, 2, 'test', 2147483647),
(22, '36', 4800, '2020-02-23', '2020-02-25', 2020, 0, 'mikesh', 2147483647),
(23, '50', 1000, '2020-02-29', '2020-11-08', 2020, 2, 'bf', 2147483647),
(24, '36', 10000000, '2020-02-26', '2020-03-27', 2020, 0, 'THAKUR ', 2147483647),
(25, '36', 1000, '2020-02-29', '2020-02-29', 2020, 0, 'tkfkfktkrrk', 2147483647),
(26, '36', 1000, '2020-02-25', '2020-02-25', 2020, 2, 'fifjfk', 2147483647),
(27, '72', 1000, '2020-03-01', '2020-03-22', 2020, 0, 'THAKUR ', 2147483647),
(28, '72', 12, '2020-03-04', '2020-03-22', 2020, 0, 'munna singh', 2147483647),
(29, '73', 3500, '2020-02-29', '2020-03-28', 2020, 0, 'manash', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `loan_amount`
--

CREATE TABLE `loan_amount` (
  `id` int(100) NOT NULL,
  `loan_amount` int(100) NOT NULL,
  `loan_intrest` int(10) NOT NULL,
  `weekly_payment` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_amount`
--

INSERT INTO `loan_amount` (`id`, `loan_amount`, `loan_intrest`, `weekly_payment`) VALUES
(1, 1000, 5, 200),
(2, 2000, 5, 200),
(3, 3500, 6, 300),
(4, 4800, 6, 400),
(5, 5200, 6, 400),
(6, 6500, 6, 400),
(7, 7000, 6, 400),
(8, 12, 3, 1),
(9, 10000000, 50, 1000),
(10, 10000000, 50, 1000),
(11, 10000000, 50, 1000),
(12, 10000000, 34, 12000),
(13, 34000, 35, 1200),
(14, 34000, 35, 1200),
(15, 34000, 35, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `Notification`
--

CREATE TABLE `Notification` (
  `notification_id` int(100) NOT NULL,
  `user_type` int(10) NOT NULL,
  `user_id` int(100) NOT NULL,
  `appointment_id` int(100) NOT NULL,
  `notification` longtext NOT NULL,
  `read_status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Notification`
--

INSERT INTO `Notification` (`notification_id`, `user_type`, `user_id`, `appointment_id`, `notification`, `read_status`, `created`) VALUES
(1, 2, 80, 1, 'Appointment addedd successfully', 1, '2020-03-04 09:08:49'),
(2, 2, 80, 1, 'Appointment reschedule successfully', 1, '2020-03-04 09:08:49'),
(3, 2, 80, 1, 'Appointment reschedule successfully', 1, '2020-03-04 09:08:49'),
(4, 2, 80, 1, 'Appointment reschedule successfully', 1, '2020-03-04 09:08:49'),
(5, 2, 80, 1, 'Appointment reschedule successfully', 1, '2020-03-04 09:08:49'),
(6, 2, 80, 2, 'Appointment addedd successfully', 1, '2020-03-04 09:32:01'),
(7, 2, 80, 3, 'Appointment addedd successfully', 1, '2020-03-04 09:32:01'),
(8, 2, 80, 4, 'Appointment addedd successfully', 1, '2020-03-04 09:32:01'),
(9, 2, 80, 5, 'Appointment addedd successfully', 1, '2020-03-04 09:32:01'),
(10, 2, 80, 2, 'Your Appointment Approved By Doctor', 1, '2020-03-04 09:47:09'),
(11, 2, 80, 2, 'Your Appointment Approved By Doctor', 1, '2020-03-04 09:47:09'),
(12, 2, 80, 4, 'Your Appointment Approved By Doctor', 1, '2020-03-04 09:47:09'),
(13, 2, 80, 5, 'Your Appointment Approved By Doctor', 1, '2020-03-04 09:47:09'),
(14, 2, 80, 6, 'Appointment addedd successfully', 0, '2020-03-04 09:49:41'),
(15, 2, 80, 7, 'Appointment addedd successfully', 0, '2020-03-05 11:21:19'),
(16, 2, 74, 8, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(17, 2, 74, 9, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(18, 2, 74, 10, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(19, 2, 74, 11, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(20, 2, 74, 12, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(21, 2, 74, 13, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(22, 2, 74, 9, 'Your Appointment Approved By Doctor', 1, '2020-03-05 15:53:19'),
(23, 2, 74, 9, 'Your Appointment Approved By Doctor', 1, '2020-03-05 15:53:19'),
(24, 2, 74, 9, 'Your Appointment Approved By Doctor', 1, '2020-03-05 15:53:19'),
(25, 2, 74, 14, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(26, 2, 74, 15, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(27, 2, 74, 16, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(28, 2, 74, 17, 'Appointment addedd successfully', 1, '2020-03-05 15:53:19'),
(29, 2, 82, 18, 'Appointment addedd successfully', 0, '2020-03-05 16:12:54'),
(30, 2, 82, 19, 'Appointment addedd successfully', 0, '2020-03-05 16:12:55'),
(31, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:15:18'),
(32, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:15:18'),
(33, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:15:18'),
(34, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:16:20'),
(35, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:16:20'),
(36, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:16:20'),
(37, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:16:20'),
(38, 2, 82, 19, 'Your Appointment Approved By Doctor', 0, '2020-03-05 16:16:20'),
(39, 2, 82, 18, 'Your Appointment Approved By Doctor', 0, '2020-03-06 03:36:03'),
(40, 2, 82, 18, 'Your Appointment Approved By Doctor', 0, '2020-03-06 03:36:03'),
(41, 2, 36, 20, 'Appointment addedd successfully', 1, '2020-03-09 06:08:03'),
(42, 2, 36, 21, 'Appointment addedd successfully', 1, '2020-03-09 06:08:03'),
(43, 2, 36, 22, 'Appointment addedd successfully', 1, '2020-03-09 06:08:03'),
(44, 2, 36, 23, 'Appointment addedd successfully', 1, '2020-03-09 06:08:03'),
(45, 2, 36, 24, 'Appointment addedd successfully', 1, '2020-03-11 05:35:18'),
(46, 2, 36, 24, 'Appointment reschedule successfully', 1, '2020-03-11 05:35:18'),
(47, 2, 83, 25, 'Appointment addedd successfully', 1, '2020-03-11 07:31:22'),
(48, 2, 83, 26, 'Appointment addedd successfully', 1, '2020-03-11 08:49:47'),
(49, 2, 83, 27, 'Appointment addedd successfully', 1, '2020-03-11 08:49:47'),
(50, 2, 83, 28, 'Appointment addedd successfully', 1, '2020-03-11 08:49:47'),
(51, 2, 83, 29, 'Appointment addedd successfully', 1, '2020-03-11 09:05:06'),
(52, 2, 83, 30, 'Appointment addedd successfully', 0, '2020-03-11 09:08:26'),
(53, 2, 36, 31, 'Appointment addedd successfully', 1, '2020-03-17 13:11:48'),
(54, 2, 36, 32, 'Appointment addedd successfully', 1, '2020-03-17 13:11:48'),
(55, 2, 36, 32, 'Your Appointment Approved By Doctor', 1, '2020-03-17 13:11:48'),
(56, 2, 36, 33, 'Appointment addedd successfully', 0, '2020-03-24 04:08:31'),
(57, 2, 88, 34, 'Appointment addedd successfully', 0, '2020-03-24 10:24:43'),
(58, 2, 88, 35, 'Appointment addedd successfully', 0, '2020-03-24 10:25:59'),
(59, 2, 88, 36, 'Appointment addedd successfully', 0, '2020-03-24 10:29:18'),
(60, 2, 88, 34, 'Your Appointment Approved By Doctor', 0, '2020-03-24 10:31:29'),
(61, 2, 88, 34, 'Your Appointment Approved By Doctor', 0, '2020-03-24 10:31:30'),
(62, 2, 90, 37, 'Appointment addedd successfully', 1, '2020-03-24 11:47:49'),
(63, 2, 36, 33, 'Your Appointment Approved By Doctor', 0, '2020-03-24 11:50:10'),
(64, 2, 90, 37, 'Your Appointment Approved By Doctor', 1, '2020-03-24 13:26:04'),
(65, 2, 90, 38, 'Appointment addedd successfully', 1, '2020-03-24 14:17:29'),
(66, 2, 90, 39, 'Appointment addedd successfully', 1, '2020-03-24 14:24:35'),
(67, 2, 92, 40, 'Appointment addedd successfully', 1, '2020-04-04 08:51:13'),
(68, 2, 92, 41, 'Appointment addedd successfully', 1, '2020-04-04 08:51:13'),
(69, 2, 92, 42, 'Appointment addedd successfully', 0, '2020-04-04 08:52:38'),
(70, 2, 92, 43, 'Appointment addedd successfully', 0, '2020-04-04 08:54:38'),
(71, 2, 92, 44, 'Appointment addedd successfully', 0, '2020-04-04 08:56:18'),
(72, 2, 92, 45, 'Appointment addedd successfully', 0, '2020-04-04 08:58:19'),
(73, 2, 92, 46, 'Appointment addedd successfully', 0, '2020-04-04 09:00:52'),
(74, 2, 92, 40, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:36'),
(75, 2, 92, 40, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:37'),
(76, 2, 92, 40, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:37'),
(77, 2, 92, 40, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:37'),
(78, 2, 92, 40, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:37'),
(79, 2, 92, 43, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:45'),
(80, 2, 92, 43, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:45'),
(81, 2, 92, 43, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:45'),
(82, 2, 92, 45, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:52'),
(83, 2, 92, 45, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:53'),
(84, 2, 92, 45, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:03:54'),
(85, 2, 92, 42, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:42'),
(86, 2, 92, 42, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:42'),
(87, 2, 92, 42, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:42'),
(88, 2, 92, 42, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:42'),
(89, 2, 92, 46, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:44'),
(90, 2, 92, 44, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:51'),
(91, 2, 92, 44, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:51'),
(92, 2, 92, 44, 'Your Appointment Approved By Doctor', 0, '2020-04-04 09:19:52'),
(93, 2, 93, 47, 'Appointment addedd successfully', 0, '2020-04-04 12:22:54'),
(94, 2, 93, 48, 'Appointment addedd successfully', 0, '2020-04-04 12:24:37'),
(95, 2, 93, 49, 'Appointment addedd successfully', 0, '2020-04-04 12:25:40'),
(96, 2, 93, 50, 'Appointment addedd successfully', 0, '2020-04-04 12:26:44'),
(97, 2, 93, 51, 'Appointment addedd successfully', 0, '2020-04-04 12:27:56'),
(98, 2, 92, 52, 'Appointment addedd successfully', 0, '2020-04-04 13:02:14'),
(99, 2, 92, 53, 'Appointment addedd successfully', 0, '2020-04-04 13:05:24'),
(100, 2, 93, 54, 'Appointment addedd successfully', 0, '2020-04-04 13:41:36'),
(101, 2, 93, 55, 'Appointment addedd successfully', 0, '2020-04-04 13:42:47'),
(102, 2, 72, 56, 'Appointment addedd successfully', 0, '2020-04-05 02:58:45'),
(103, 2, 72, 57, 'Appointment addedd successfully', 0, '2020-04-05 03:00:59'),
(104, 2, 72, 58, 'Appointment addedd successfully', 0, '2020-04-05 03:02:34'),
(105, 2, 72, 59, 'Appointment addedd successfully', 0, '2020-04-05 03:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(111) NOT NULL,
  `description` varchar(111) NOT NULL,
  `image` varchar(111) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `image`) VALUES
(1, 'LoremIpsum', '<p>LoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsumLoremIpsum</p>\r\n', 'Screenshot_(11).png'),
(3, 'okokokok', 'okokokok', ''),
(4, 'testtest', 'testestest', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fontSize` int(10) NOT NULL,
  `lineSpacing` int(20) NOT NULL,
  `screenRotation` int(10) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `user_id`, `fontSize`, `lineSpacing`, `screenRotation`, `create_at`) VALUES
(1, 100, 20, 2, 1, '0000-00-00 00:00:00'),
(2, 100, 20, 2, 1, '0000-00-00 00:00:00'),
(3, 99, 30, 20, 1, '0000-00-00 00:00:00'),
(4, 98, 50, 10, 1, '0000-00-00 00:00:00'),
(5, 98, 50, 10, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `bio` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(10) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `Firebase_token` longtext NOT NULL,
  `otp` int(11) NOT NULL,
  `social` int(11) NOT NULL,
  `facebookID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `dob`, `bio`, `gender`, `disease`, `address`, `Country`, `city`, `state`, `postal_code`, `phone_number`, `image`, `status`, `Firebase_token`, `otp`, `social`, `facebookID`) VALUES
(97, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '7389262489', '', 0, '', 6158, 0, ''),
(98, 'sonali', 'malviya', '', 'sonali@gmail.com', '', '10th july', 'Test profile', 'Female', '', '', '', '', '', '', '9638521471', 'uploads/5e9fcb1bcc9ac.jpeg', 0, '', 3480, 0, ''),
(99, 'sona', '', '', '', '', '', '', '', '', '', '', '', '', '', '1234596358', '', 0, '', 2211, 0, ''),
(100, 'Sonali', '', '', '', '', '', '', '', '', '', '', '', '', '', '7415556778', '', 0, '', 7504, 0, ''),
(101, 'Ravi', '', '', '', '', '', '', '', '', '', '', '', '', '', '9898989898', '', 0, '', 8564, 0, ''),
(102, 'Riya', '', '', '', '', '', '', '', '', '', '', '', '', '', '3434343434', '', 0, '', 5726, 0, ''),
(103, 'tony ', '', '', '', '', '', '', '', '', '', '', '', '', '', '7878787878', '', 0, '', 9299, 0, ''),
(104, 'Santa ', '', '', '', '', '', '', '', '', '', '', '', '', '', '1212121212', '', 0, '', 6060, 0, ''),
(105, 'golu', '', '', '', '', '', '', '', '', '', '', '', '', '', '1356245678', '', 0, '', 2643, 0, ''),
(106, 'Rohan', '', '', '', '', '', '', '', '', '', '', '', '', '', '1234678944', '', 0, '', 4056, 0, ''),
(107, 'Siya', '', '', '', '', '', '', '', '', '', '', '', '', '', '9865431345', '', 0, '', 4601, 0, ''),
(108, 'Aarush', '', '', '', '', '', '', '', '', '', '', '', '', '', '3434567864', '', 0, '', 8768, 0, ''),
(109, 'Hari', '', '', '', '', '', '', '', '', '', '', '', '', '', '3344556654', '', 0, '', 7203, 0, ''),
(110, 'guys', '', '', '', '', '', '', '', '', '', '', '', '', '', '8786458075', '', 0, '', 1385, 0, ''),
(111, 'saakshi1', 'gupta1', '', 'saakshi@gmail.com', '', '10th june', 'Test profile', 'Female', '', '', '', '', '', '', '9638521471', 'uploads/5e9fc97607955.jpeg', 0, '', 6261, 0, ''),
(112, 'Sonali Malviya', '', '', 'sonali.malviya1702@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, ''),
(113, 'roshni', 'rangari', '', 'sonali@gmail.com', '', '10th july', 'Test profile', 'Female', '', '', '', '', '', '', '9638521471', 'uploads/5ea01a21d9ec3.jpeg', 0, '', 0, 2, ''),
(114, 'qwerty', 'zxc', '', 'qwerty1@gmail.com', '', '17th june', 'Test profile', 'Female', '', '', '', '', '', '', '7896541231', 'uploads/5ea0290a03ece.jpeg', 0, '', 1372, 0, ''),
(115, 'Diya', '', '', '', '', '', '', '', '', '', '', '', '', '', '9827669938', '', 0, '', 2720, 0, ''),
(116, 'Abhishek', '', '', '', '', '', '', '', '', '', '', '', '', '', '7896541235', '', 0, '', 1418, 0, ''),
(117, 'Shiv’s', '', '', '', '', '', '', '', '', '', '', '', '', '', '9988998866', '', 0, '', 3748, 0, ''),
(118, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '8258258258', '', 0, '', 2907, 0, ''),
(119, 'Nitu', '', '', '', '', '', '', '', '', '', '', '', '', '', '3693693695', '', 0, '', 6050, 0, ''),
(120, 'chasing', '', '', '', '', '', '', '', '', '', '', '', '', '', '3465728391', '', 0, '', 5206, 0, ''),
(121, 'hourly', 'testy', '', 'rest@gmail.com', '', '22/04/2012', 'Cruise', '', '', '', '', '', '', '', '5555555555', 'uploads/5ea0365e26b23.jpeg', 0, '', 6723, 0, ''),
(122, 'Avni Solanki', '', '', '223490739065849', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, ''),
(123, 'Mona', 'Malviya', '', 'mona@gmail.com', '', '22/04/1998', 'Test user', '', '', '', '', '', '', '', '1111111111', 'uploads/5ea0418f4da52.jpeg', 0, '', 8536, 0, ''),
(124, 'Tom', 'james ', '', 'tom@gmail.com', '', '22/04/2007', 'Hello I am Tom', '', '', '', '', '', '', '', '9652445637', 'uploads/5ea052408e9b5.jpeg', 0, '', 2296, 0, ''),
(125, 'Rajan', '', '', '', '', '', '', '', '', '', '', '', '', '', '7777777777', '', 0, '', 7200, 0, ''),
(126, 'Rohan ', '', '', '', '', '', '', '', '', '', '', '', '', '', '8888888888', '', 0, '', 4739, 0, ''),
(127, 'build', '', '', '', '', '', '', '', '', '', '', '', '', '', '6666666666', '', 0, '', 5271, 0, ''),
(128, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '2222222222', '', 0, '', 1323, 0, ''),
(129, 'Gigi', '', '', '', '', '', '', '', '', '', '', '', '', '', '4444444444', '', 0, '', 5889, 0, ''),
(130, 'vxbvjvkb', 'chuff', '', 'dg@hi.fui', '', '01/05/2007', ' M    Thuggishgzjxh', 'Male', '', '', '', '', '', '', '1122222222', 'uploads/5ec3fecd411d8.jpeg', 0, '', 4293, 0, ''),
(131, 'tyiyt', '', '', '', '', '', '', '', '', '', '', '', '', '', '2233366666', '', 0, '', 2077, 0, ''),
(132, 'try', '', '', '', '', '', '', '', '', '', '', '', '', '', '8525525222', '', 0, '', 4794, 0, ''),
(133, '3455', '', '', '', '', '', '', '', '', '', '', '', '', '', '8223654141', '', 0, '', 9760, 0, ''),
(134, 'Himani', 'Jain ', '', 'himani@gmail.com', '', '25/04/2009', 'Hello I am Himani I am an iOS developer having knowledge of Swift ', 'Female', '', '', '', '', '', '', '3366523995', 'uploads/5ea4550fa5f7d.jpeg', 0, '', 2622, 0, ''),
(135, 'Avni Solanki', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 2, '223490739065849'),
(136, 'going', 'Hanif', '', 'going@gmail.com', '', '27/04/2005', 'Hello user I m a developer ', 'Female', '', '', '', '', '', '', '9685742564', 'uploads/5eaab5f35328b.jpeg', 0, '', 4303, 0, ''),
(137, 'go', '', '', '', '', '', '', '', '', '', '', '', '', '', '5552222222', '', 0, '', 3445, 0, ''),
(138, 'can', '', '', '', '', '', '', '', '', '', '', '', '', '', '8585365217', '', 0, '', 5986, 0, ''),
(139, 'Lindeberguem Santana Neves', '', '', 'lindeberguem@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 1, ''),
(140, 'jackfruit', '', '', '', '', '', '', '', '', '', '', '', '', '', '8652424275', '', 0, '', 4908, 0, ''),
(141, 'Divya ', '', '', '', '', '', '', '', '', '', '', '', '', '', '1245327896', '', 0, '', 5571, 0, ''),
(142, 'maya ', 'user', '', 'maya@gmail.com', '', '07/05/2015', 'Hi I am maya!!!!', 'Female', '', '', '', '', '', '', '2323232323', 'uploads/5eb3b0411cb9e.jpeg', 0, '', 4911, 0, ''),
(143, 'tutu ', 'tub', '', 'tutu@gmail.com', '', '07/05/2013', 'Hi I m tutu', 'Female', '', '', '', '', '', '', '3636363636', 'uploads/5eb3b09c48fb9.jpeg', 0, '', 3385, 0, ''),
(144, 'tvjv', '', '', '', '', '', '', '', '', '', '', '', '', '', '4577283363', '', 0, '', 4291, 0, ''),
(145, 'Fahd', '', '', '', '', '', '', '', '', '', '', '', '', '', '8757676575', '', 0, '', 7845, 0, ''),
(146, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', '1426685757', '', 0, '', 1941, 0, ''),
(147, 'chcjcj', '', '', '', '', '', '', '', '', '', '', '', '', '', '5555252524', '', 0, '', 7692, 0, ''),
(148, 'bunch', '', '', '', '', '', '', '', '', '', '', '', '', '', '7567657646', '', 0, '', 7286, 0, ''),
(149, 'chcjcj', '', '', '', '', '', '', '', '', '', '', '', '', '', '7845962586', '', 0, '', 3393, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Appointment`
--
ALTER TABLE `Appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `Banner`
--
ALTER TABLE `Banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Doctors`
--
ALTER TABLE `Doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors_availablity`
--
ALTER TABLE `doctors_availablity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Doctor_review`
--
ALTER TABLE `Doctor_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Doctor_schedule`
--
ALTER TABLE `Doctor_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Highlights`
--
ALTER TABLE `Highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Hospital`
--
ALTER TABLE `Hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Loan`
--
ALTER TABLE `Loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_amount`
--
ALTER TABLE `loan_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Notification`
--
ALTER TABLE `Notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Appointment`
--
ALTER TABLE `Appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `Banner`
--
ALTER TABLE `Banner`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Doctors`
--
ALTER TABLE `Doctors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `doctors_availablity`
--
ALTER TABLE `doctors_availablity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Doctor_review`
--
ALTER TABLE `Doctor_review`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Doctor_schedule`
--
ALTER TABLE `Doctor_schedule`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Highlights`
--
ALTER TABLE `Highlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `Hospital`
--
ALTER TABLE `Hospital`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Loan`
--
ALTER TABLE `Loan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `loan_amount`
--
ALTER TABLE `loan_amount`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Notification`
--
ALTER TABLE `Notification`
  MODIFY `notification_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
