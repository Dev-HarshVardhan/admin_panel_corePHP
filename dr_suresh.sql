-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 12:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dr_suresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(2, 'admin@gmail.com', '$2y$10$5v0bnWw8rBlOWjfxB1jkLuvIjAqCwbvgg7QhqGSeBbj2Ys8E6Kv26');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `post_by` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `post_by`, `title`, `description`, `image`, `date`) VALUES
(19, 'Admin', ' Cedars-Sinai Blog', '<p>Plenty of medical institutions have blogs, but&nbsp;stands out for covering genuinely interesting topics.</p>\r\n', 'gallery2.png', '2024-07-15'),
(20, 'Admin', 'Kaiser Health News', '<p>If you find yourself constantly bookmarking health sections on news websites<a href=\"#\">,&nbsp;</a><a href=\"https://khn.org/\">Kaiser Health News</a>&nbsp;is a must-follow. Knowing where to start can be overwhelming with so many topics to choose from,&nbsp;</p>\r\n', 'gallery5.png', '2024-07-14'),
(21, 'Creativemela', 'Best blogs about medical technology', '<p>Technology has transformed healthcare, and not just in the way we maintain medical records. These blogs highlight how new devices, techniques, and security measures are improving the industry.</p>\r\n', 'gallery9.png', '2024-07-15'),
(22, 'Harsh', 'Hejjf', '<p>vfeve</p>\r\n', 'gallery7.png', '2024-07-30'),
(23, 'Css Founder', 'The Impact of Artificial Intelligence on Healthcare', '<p>AI-powered diagnostic tools have enhanced the accuracy and speed of disease detection. Machine learning algorithms analyze medical images, such as X-rays and MRIs, to identify anomalies that might be missed by human eyes alone.&nbsp;</p>\r\n', 'blog4.png', '2024-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `spe` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `district_id`, `city_name`, `state_id`) VALUES
(24, 33, 'Tirumala ', 20),
(25, 33, 'Renigunta ', 20),
(26, 33, 'Chandragiri ', 20),
(27, 33, 'Srikalahasti ', 20),
(28, 32, 'Vijayawada ', 20),
(29, 32, 'Guntur ', 20),
(30, 32, 'Kurnool ', 20),
(31, 32, 'Kakinada ', 20),
(32, 34, 'Eluru ', 20),
(33, 34, 'Bhimavaram ', 20),
(34, 34, 'Tanuku ', 20),
(35, 34, 'Narasapuram ', 20),
(36, 139, 'Durgi', 20),
(37, 139, 'Kakumanu', 20),
(38, 139, 'Amaravathi', 20),
(39, 139, 'Bapatla', 20),
(40, 36, 'Lathao', 21),
(41, 36, 'Lohit', 21),
(42, 36, 'Piyong', 21),
(43, 36, 'Tezu', 21),
(44, 37, 'Jang', 21),
(45, 37, 'Kitpi', 21),
(46, 37, 'Lumla', 21),
(47, 37, 'Mukto', 21),
(48, 38, 'Balemu', 21),
(49, 38, 'Bomdila', 21),
(50, 38, 'Jamiri', 21),
(51, 38, 'Rupa', 21),
(52, 39, 'Balijan', 21),
(53, 39, 'Gumto', 21),
(54, 39, 'Kakoi', 21),
(55, 39, 'Kimin', 21),
(56, 140, 'Baksa', 22),
(57, 140, 'Tihu', 22),
(58, 140, 'Tamulpur', 22),
(59, 140, 'Pathorighat', 22),
(60, 141, 'Baghbor', 22),
(61, 141, 'Bajali', 22),
(62, 141, 'Jalah', 22),
(63, 141, 'Howli', 22),
(64, 142, 'Mankachar', 22),
(65, 142, 'Gauripur', 22),
(66, 142, 'Agamoni', 22),
(67, 142, 'Sapatgram', 22),
(68, 143, 'Jarhat', 22),
(69, 143, 'Majuli', 22),
(70, 143, 'Jarhat East', 22),
(71, 143, 'Titabor', 22),
(72, 44, 'Bhabua', 23),
(73, 44, 'Chand', 23),
(74, 44, 'Rampur', 23),
(75, 44, 'Kudra', 23),
(76, 45, 'Amas', 23),
(77, 45, 'Gaya', 23),
(78, 45, 'Fatehpur', 23),
(79, 45, 'Manpur', 23),
(80, 46, 'Bagaha', 23),
(81, 46, 'Piprasi', 23),
(82, 46, 'Sikta', 23),
(83, 46, 'Lauriya', 23),
(84, 47, 'Buxar', 23),
(85, 47, 'Chakki', 23),
(86, 47, 'Itarhi', 23),
(87, 47, 'Kesath', 23),
(88, 48, 'Amadi', 24),
(89, 48, 'Nagari', 24),
(90, 48, 'Kurud', 24),
(91, 48, 'Magarload', 24),
(92, 49, 'Devkar', 24),
(93, 49, 'Gurur', 24),
(94, 49, 'Jamul', 24),
(95, 49, 'Berla', 24),
(96, 51, 'Dipka', 24),
(97, 51, 'Pali', 24),
(98, 51, 'Kartala', 24),
(99, 51, 'Korba', 24),
(100, 144, 'Bharatpur', 24),
(101, 144, 'Chirmiri', 24),
(102, 144, 'Sonhat', 24),
(103, 144, 'Koriya', 24),
(104, 52, 'Mapusha', 25),
(105, 52, 'Panaji', 25),
(106, 52, 'Ponda', 25),
(107, 52, 'Valpoi', 25),
(108, 53, 'Margao', 25),
(109, 53, 'South Goa', 25),
(110, 53, 'Salcete', 25),
(111, 53, 'Canacona', 25),
(112, 54, 'Ahmedabad', 26),
(113, 54, 'Ahmedabad city', 26),
(114, 54, 'Mandal', 26),
(115, 54, 'Ranpur', 26),
(116, 55, 'Bardoli', 26),
(117, 55, 'Chorasi', 26),
(118, 55, 'Hajira', 26),
(119, 55, 'Kansad', 26),
(120, 56, 'Bhayavadar', 26),
(121, 56, 'Dhoraji', 26),
(122, 56, 'Gondal', 26),
(123, 56, 'Jasdan', 26),
(124, 57, 'Amreli', 26),
(125, 57, 'Babra', 26),
(126, 57, 'Lathi', 26),
(127, 57, 'Rajula', 26),
(128, 58, 'Ambala', 27),
(129, 58, 'Ambala cantt', 27),
(130, 58, 'Barara', 27),
(131, 58, 'Ambala sadar', 27),
(132, 59, 'Gurgaon ', 27),
(133, 59, 'Manesar', 27),
(134, 59, 'Sohna', 27),
(135, 59, 'Pataudi', 27),
(136, 60, 'Ballabgarh', 27),
(137, 60, 'Faridabad', 27),
(138, 61, 'Fatehabad', 27),
(139, 61, 'Ratia', 27),
(140, 61, 'Tohana', 27),
(141, 62, 'Bharari', 28),
(142, 62, 'Naina Devi', 28),
(143, 62, 'Namhol', 28),
(144, 62, 'Talai', 28),
(145, 63, 'Bakloh', 28),
(146, 63, 'Bhalai', 28),
(147, 63, 'Holi', 28),
(148, 63, 'Panji', 28),
(149, 64, 'Kalpa', 28),
(150, 64, 'Poo', 28),
(151, 64, 'Sangla', 28),
(152, 64, 'Nichar', 28),
(153, 65, 'Ani', 28),
(154, 65, 'Banjar', 28),
(155, 65, 'Manali', 28),
(156, 65, 'Bhuntar', 28),
(157, 66, 'Chatra', 29),
(158, 66, 'Kunda', 29),
(159, 66, 'Tandwa', 29),
(160, 66, 'Itkhori', 29),
(161, 67, 'Bermo', 29),
(162, 67, 'Bakora', 29),
(163, 67, 'Chas', 29),
(164, 67, 'Kasmar', 29),
(165, 68, 'Dhanbad', 29),
(166, 68, 'Baliapur', 29),
(167, 68, 'Gobindpur', 29),
(168, 68, 'Purbi Tundi', 29),
(169, 69, 'Boram', 29),
(170, 69, 'Mango', 29),
(171, 69, 'Potka', 29),
(172, 69, 'Patamda', 29),
(173, 70, 'Badami', 30),
(174, 70, 'Bilgi', 30),
(175, 70, 'Kerur', 30),
(176, 70, 'Terdal', 30),
(177, 71, 'Anekal', 30),
(178, 71, 'Bangalore', 30),
(179, 71, 'Bangalore East', 30),
(180, 71, 'Bangalore North', 30),
(181, 72, 'Aurad', 30),
(182, 72, 'Bhalki', 30),
(183, 72, 'Bidar', 30),
(184, 72, 'Homnabad', 30),
(185, 73, 'Bijapur', 30),
(186, 73, 'Indi', 30),
(187, 73, 'Sindagi', 30),
(188, 73, 'Talikota', 30),
(189, 74, 'Attingal', 31),
(190, 74, 'Varkala', 31),
(191, 74, 'Thiruvananthapuram', 31),
(192, 74, 'Nedumangad', 31),
(193, 75, 'Kollam', 31),
(194, 75, 'Punalur', 31);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `fname`, `lname`, `email`, `phone`, `message`) VALUES
(24, 'Harshvardhan', 'Sharma', 'hs360863@gmail.com', '8009026426', 'Hello sir, I am Harsh'),
(25, 'Shubham', 'Tiwari', 'shubahma@gmail.com', '8009309303', 'Hello sir, I am Shubham'),
(26, 'Amit', 'Tiwari', 'amit@gmail.com', '9080725225', 'Hello sir, I am Amit'),
(27, 'Shivam', 'Yadav ', 'shivam@yahoo.com', '8004026426', 'Hello Shiavm'),
(29, 'Shivam', 'sharma', 'sm@gmail.com', '8004026426', 'Hello sir '),
(30, 'Shubham', 'Tiwari', 'subham@gmail.com', '9080725225', 'Hello Shubham'),
(31, 'Suresh', 'sharma', 'suresh@gmail.com', '8009026426', 'Hello suresh ji'),
(33, 'Ritesh', 'pandey', 'ritesh@gmail.com', '9877373728', 'Hello Sir Ritesh'),
(34, 'Suresh', 'Sharma', 'suresh@gmail.com', '8973636326', 'Hello Sir I am Suresh Sharma'),
(35, 'Manisha', 'Kumar', 'manish@gmail.com', '8322366377', 'Hell Sir I am Manisha '),
(36, 'Kumar ', 'Gopal', 'Medhanshkumar007@gmail.com', '9821267627', 'Yes'),
(37, 'Harsh', 'Sharma', 'hs360863@gmail.com', '8009026426', 'Hello sir I am Harsh'),
(38, 'Shivam', 'Yadav ', 'shivam@yahoo.com', '9090828282', 'Hello sir '),
(39, 'Aman ', 'Patel ', 'aman@gmail.com', '9090828282', 'Hello Sir Aman');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `state_id`, `district_name`) VALUES
(32, 20, 'Visakhapatnam'),
(33, 20, 'Tirupati'),
(34, 20, 'West Godavari'),
(36, 21, 'Lohit'),
(37, 21, 'Tawang'),
(38, 21, 'West Kameng'),
(39, 21, 'Papum Pare'),
(44, 23, 'Kaimur (Bhabua)'),
(45, 23, 'Gaya'),
(46, 23, 'West Champaran'),
(47, 23, 'Buxar'),
(48, 24, 'Dhamtari'),
(49, 24, 'Durg'),
(51, 24, 'Korba'),
(52, 25, 'Nourth Goa'),
(53, 25, 'South Goa'),
(54, 26, 'Ahmedabad'),
(55, 26, 'Surat'),
(56, 26, 'Rajkot'),
(57, 26, 'Amreli'),
(58, 27, 'Ambala '),
(59, 27, 'Gurugram '),
(60, 27, 'Faridabad '),
(61, 27, 'Fatehabad '),
(62, 28, 'Bilaspur '),
(63, 28, 'Chamba '),
(64, 28, 'Kinnaur '),
(65, 28, 'Kullu '),
(66, 29, 'Chatra'),
(67, 29, ' Bokaro'),
(68, 29, 'Dhanbad'),
(69, 29, ' East Singhbhum'),
(70, 30, 'Bagalkot'),
(71, 30, ' Bengaluru Urban'),
(72, 30, ' Bidar'),
(73, 30, ' Vijayapura'),
(74, 31, ' Thiruvananthapuram'),
(75, 31, 'Kollam'),
(76, 31, ' Palakkad'),
(77, 31, ' Ernakulam'),
(78, 32, 'Balaghat'),
(79, 32, 'Barwani '),
(80, 32, 'Betul '),
(81, 32, 'AshokNagar '),
(82, 33, 'Thane'),
(83, 33, 'Washim'),
(84, 33, 'Palghar'),
(85, 33, 'Mumbai city'),
(86, 34, 'Bishnupur'),
(87, 34, 'Churachandpur'),
(88, 34, 'Tengnoupal'),
(89, 34, 'Tamenglong'),
(94, 36, 'Aizawl'),
(95, 36, 'Champhai'),
(96, 36, 'Hnahthial'),
(97, 36, 'Lawngtlai'),
(98, 37, 'Dimapur'),
(99, 37, 'Kohima'),
(100, 37, 'Kiphire'),
(101, 37, 'Mokokchung'),
(102, 38, 'Angul'),
(103, 38, 'Boudh'),
(104, 38, 'Khordha'),
(105, 38, 'Gajapati'),
(106, 39, 'Amritsar'),
(107, 39, 'Ferozepur'),
(108, 39, 'Mohali '),
(109, 39, 'Ludhiana'),
(110, 40, 'Ajmer'),
(111, 40, 'Jaipur'),
(112, 40, 'Jaisalmer'),
(113, 40, 'Jodhpur'),
(114, 41, 'East Sikkim'),
(115, 41, 'West Sikkim'),
(117, 41, 'North Sikkim'),
(118, 42, 'Chennai'),
(119, 42, 'Dharmapuri'),
(120, 42, 'Kanchipuram'),
(121, 42, 'Namakkal'),
(122, 44, 'Gomati'),
(123, 44, 'North Tripura'),
(124, 44, 'South Tripura'),
(125, 44, 'Unakoti'),
(126, 45, 'Agra'),
(127, 45, 'Varanasi'),
(128, 45, 'Chandauli'),
(130, 46, 'Udham Singh Nagar'),
(131, 46, 'Almora'),
(132, 46, 'Chamoli'),
(133, 46, 'Nainital'),
(134, 47, 'Kolkata'),
(135, 47, 'Howrah'),
(136, 47, 'Hooghly'),
(137, 47, 'Malda'),
(138, 45, 'Amethi'),
(139, 20, 'Guntur'),
(140, 22, 'Baksa'),
(141, 22, 'Barpeta'),
(142, 22, 'Dhubari'),
(143, 22, 'Jarhat'),
(144, 24, 'Koriya'),
(145, 20, 'Adilabad'),
(146, 20, 'Anantapur'),
(147, 20, 'Srikakulam'),
(148, 20, 'Vizianagaram'),
(149, 20, 'Anakapalli'),
(150, 20, 'Alluri Sitharama Raju'),
(151, 20, 'Kakinada'),
(152, 20, 'Konaseema'),
(153, 20, 'Eluru'),
(154, 20, 'NTR'),
(155, 20, 'Bapatla'),
(156, 20, 'Palnadu'),
(157, 20, 'Prakasam'),
(158, 20, 'Sri Potti Sriramulu Nellore'),
(159, 20, 'Kurnool'),
(160, 20, 'Nandyal'),
(161, 20, 'Anantapur'),
(162, 20, 'Sri Sathya Sai'),
(163, 20, 'Annamayya'),
(164, 20, 'Chittoor'),
(165, 20, 'Sri Balaji'),
(166, 20, 'Krishna'),
(167, 21, 'Anjaw'),
(168, 21, 'Changlang'),
(169, 21, 'Dibang Valley'),
(170, 21, 'East Kameng'),
(171, 21, 'East Siang'),
(172, 21, 'Kamle'),
(173, 21, 'Kra Daadi'),
(174, 21, 'Kurung Kumey'),
(175, 21, 'Lepa Rada'),
(176, 21, 'Longding'),
(177, 21, 'West Siang'),
(178, 21, 'Upper Subansiri'),
(179, 21, 'Upper Siang'),
(180, 21, 'Pakke-Kessang'),
(181, 22, 'Biswanath'),
(182, 22, 'Bongaigaon'),
(183, 22, 'Cachar'),
(184, 22, 'Charaideo'),
(185, 22, 'Chirang'),
(186, 22, 'Darrang'),
(187, 22, 'Dhemaji'),
(188, 22, 'Dibrugarh'),
(189, 22, 'Dima Hasao'),
(190, 22, 'Goalpara'),
(191, 22, 'Golaghat'),
(192, 22, 'Hailakandi'),
(193, 22, 'Hojai'),
(194, 22, 'Kamrup Metropolitan'),
(195, 22, 'Kamrup'),
(196, 22, 'Karbi Anglong'),
(197, 22, 'Karimganj'),
(198, 22, 'Kokrajhar'),
(199, 22, 'Lakhimpur'),
(200, 22, 'Majuli'),
(201, 22, 'Morigaon'),
(202, 22, 'Nagaon'),
(203, 22, 'Nalbari'),
(204, 22, 'Sivasagar'),
(205, 22, 'Sonitpur'),
(206, 22, 'South Salmara-Mankachar'),
(207, 22, 'Tinsukia'),
(208, 22, 'Udalguri'),
(209, 22, 'West Karbi Anglong'),
(210, 22, 'Bajali'),
(212, 22, 'Tamulpur'),
(213, 23, 'Araria'),
(214, 23, 'Arwal'),
(215, 23, 'Aurangabad'),
(216, 23, 'Banka'),
(217, 23, 'Begusarai'),
(218, 23, 'Bhagalpur'),
(219, 23, 'Bhojpur'),
(220, 23, 'Darbhanga'),
(221, 23, 'Gopalganj'),
(222, 23, 'Jamui'),
(223, 23, 'Jehanabad'),
(224, 23, 'Katihar'),
(225, 23, 'Khagaria'),
(226, 23, 'Kishanganj'),
(227, 23, 'Lakhisarai'),
(228, 23, 'Madhepura'),
(229, 23, 'Madhubani'),
(230, 23, 'Munger'),
(231, 23, 'Muzaffarpur'),
(232, 23, 'Nalanda'),
(233, 23, 'Nawada'),
(234, 23, 'Patna'),
(235, 23, 'Purnia'),
(236, 23, 'Rohtas'),
(237, 23, 'Saharsa'),
(238, 23, 'Samastipur'),
(239, 23, 'Saran (Chhapra)'),
(240, 23, 'Sheikhpura'),
(241, 23, 'Sheohar'),
(242, 23, 'Sitamarhi'),
(243, 23, 'Siwan'),
(244, 23, 'Supaul'),
(245, 23, 'Vaishali'),
(246, 24, 'Balod'),
(247, 24, 'Balrampur'),
(248, 24, 'Bastar'),
(249, 24, 'Bemetara'),
(250, 24, 'Bijapur'),
(251, 24, 'Bilaspur'),
(252, 24, 'Dantewada '),
(253, 24, 'Gariaband'),
(254, 24, 'Gaurela-Pendra-Marwahi'),
(255, 24, 'Janjgir-Champa'),
(256, 24, 'Jashpur'),
(257, 24, 'Kabirdham'),
(258, 24, 'Kanker (North Bastar)'),
(259, 24, 'Kondagaon'),
(260, 24, 'Mahasamund'),
(261, 24, 'Mungeli'),
(262, 24, 'Narayanpur'),
(263, 24, 'Raigarh'),
(264, 24, 'Raipur'),
(265, 24, 'Rajnandgaon'),
(266, 24, 'Sukma'),
(267, 24, 'Surajpur'),
(268, 24, 'Surguja'),
(269, 26, 'Vadodara'),
(270, 26, 'Bhavnagar'),
(271, 26, 'Jamnagar'),
(272, 26, 'Jamnagar'),
(273, 26, 'Junagadh'),
(274, 26, 'Kutch'),
(275, 26, 'Gandhinagar'),
(276, 26, 'Mehsana'),
(277, 27, 'Bhiwani'),
(278, 27, 'Charkhi Dadri'),
(279, 27, 'Hisar'),
(280, 27, 'Jhajjar'),
(281, 27, 'Jind'),
(282, 27, 'Kaithal'),
(283, 27, 'Karnal'),
(284, 27, 'Kurukshetra'),
(285, 27, 'Mahendragarh'),
(286, 27, 'Nuh'),
(287, 27, 'Palwal'),
(288, 27, 'Panchkula'),
(289, 27, 'Panipat'),
(290, 27, 'Rewari'),
(291, 27, 'Rohtak'),
(292, 27, 'Sirsa'),
(293, 27, 'Sonipat'),
(294, 27, 'Yamunanagar'),
(295, 28, 'Hamirpur'),
(296, 28, 'Kangra'),
(297, 28, 'Lahaul and Spiti'),
(298, 28, 'Mandi'),
(299, 28, 'Shimla'),
(300, 28, 'Sirmaur'),
(301, 28, 'Solan'),
(302, 28, 'Una'),
(303, 29, 'Deoghar'),
(304, 29, 'Dumka'),
(305, 29, 'East Singhbhum (Jamshedpur)'),
(306, 29, 'Garhwa'),
(307, 29, 'Giridih'),
(308, 29, 'Godda'),
(309, 29, 'Gumla'),
(310, 29, 'Hazaribagh'),
(311, 29, 'Jamtara'),
(312, 29, 'Khunti'),
(313, 29, 'Koderma'),
(314, 29, 'Latehar'),
(315, 29, 'Lohardaga'),
(316, 29, 'Pakur'),
(317, 29, 'Palamu'),
(318, 29, 'Ramgarh'),
(319, 29, 'Ranchi'),
(320, 29, 'Sahibganj'),
(321, 29, 'Seraikela-Kharsawan'),
(322, 29, 'Simdega'),
(323, 29, 'West Singhbhum'),
(324, 30, 'Bagalkot'),
(325, 30, 'Ballari '),
(326, 30, 'Bengaluru Rural'),
(327, 30, 'Bidar'),
(328, 30, 'Chamarajanagar'),
(329, 30, 'Chikkaballapur'),
(331, 30, 'Chikkamagaluru'),
(332, 30, 'Chitradurga'),
(333, 30, 'Dakshina Kannada'),
(334, 30, 'Davanagere'),
(335, 30, 'Dharwad'),
(336, 30, 'Gadag'),
(337, 30, 'Hassan'),
(338, 30, 'Haveri'),
(339, 30, 'Kalaburagi'),
(340, 30, 'Kodagu '),
(341, 30, 'Kolar'),
(342, 30, 'Koppal'),
(343, 30, 'Mandya'),
(344, 30, 'Mysuru '),
(345, 30, 'Raichur'),
(346, 30, 'Ramanagara'),
(347, 30, 'Shivamogga'),
(348, 30, 'Tumakuru '),
(349, 30, 'Udupi'),
(351, 30, 'Uttara Kannada '),
(352, 30, 'Vijayapura '),
(353, 30, 'Yadgir'),
(354, 31, 'Alappuzha '),
(355, 31, 'Idukki'),
(356, 31, 'Kannur '),
(357, 31, 'Kasaragod'),
(358, 31, 'Kottayam'),
(359, 31, 'Kozhikode '),
(360, 31, 'Malappuram'),
(361, 31, 'Pathanamthitta'),
(362, 31, 'Thrissur '),
(363, 31, 'Wayanad'),
(364, 32, 'Agar Malwa'),
(365, 32, 'Alirajpur'),
(366, 32, 'Anuppur'),
(367, 32, 'Bhind'),
(368, 32, 'Bhopal'),
(369, 32, 'Burhanpur'),
(370, 32, 'Chhatarpur'),
(371, 32, 'Chhindwara'),
(372, 32, 'Damoh'),
(373, 32, 'Datia'),
(374, 32, 'Dewas'),
(375, 32, 'Dhar'),
(376, 32, 'Dindori'),
(377, 32, 'Guna'),
(378, 32, 'Gwalior'),
(379, 32, 'Harda'),
(380, 32, 'Hoshangabad'),
(381, 32, 'Indore'),
(382, 32, 'Jabalpur'),
(383, 32, 'Jhabua'),
(384, 32, 'Katni'),
(385, 32, 'Khandwa'),
(386, 32, 'Khargone '),
(387, 32, 'Mandla'),
(388, 32, 'Mandsaur'),
(389, 32, 'Morena'),
(390, 32, 'Narsinghpur'),
(391, 32, 'Neemuch'),
(392, 32, 'Panna'),
(393, 32, 'Raisen'),
(394, 32, 'Rajgarh'),
(395, 32, 'Ratlam'),
(396, 32, 'Rewa'),
(397, 32, 'Sagar'),
(398, 32, 'Satna'),
(399, 32, 'Sehore'),
(400, 32, 'Seoni'),
(401, 32, 'Shahdol'),
(402, 32, 'Shajapur'),
(403, 32, 'Sheopur'),
(404, 32, 'Shivpuri'),
(405, 32, 'Sidhi'),
(406, 32, 'Singrauli'),
(407, 32, 'Tikamgarh'),
(408, 32, 'Ujjain'),
(409, 32, 'Umaria'),
(410, 32, 'Vidisha'),
(411, 32, 'Agarmalwa'),
(413, 33, 'Ahmednagar'),
(414, 33, 'Akola'),
(415, 33, 'Amravati'),
(416, 33, 'Aurangabad'),
(417, 33, 'Beed'),
(418, 33, 'Bhandara'),
(419, 33, 'Buldhana'),
(420, 33, 'Chandrapur'),
(421, 33, 'Dhule'),
(422, 32, 'Gadchiroli'),
(423, 33, 'Gondia'),
(424, 33, 'Hingoli'),
(425, 33, 'Jalgaon'),
(426, 33, 'Jalna'),
(427, 33, 'Kolhapur'),
(428, 33, 'Latur'),
(429, 33, 'Nagpur'),
(430, 33, 'Nanded'),
(431, 33, 'Nandurbar'),
(432, 33, 'Nashik'),
(433, 33, 'Osmanabad'),
(435, 33, 'Parbhani'),
(438, 33, 'Pune'),
(439, 33, 'Raigad'),
(440, 33, 'Ratnagiri'),
(441, 33, 'Sangli'),
(442, 33, 'Satara'),
(443, 33, 'Sindhudurg'),
(444, 33, 'Solapur'),
(445, 33, 'Wardha'),
(446, 33, 'Washim'),
(447, 33, 'Yavatmal'),
(448, 34, 'Chandel'),
(449, 34, 'Imphal East'),
(450, 34, 'Imphal West'),
(451, 34, 'Jiribam'),
(452, 34, 'Kakching'),
(453, 34, 'Kamjong'),
(454, 34, 'Kangpokpi'),
(455, 34, 'Noney'),
(456, 34, 'Pherzawl'),
(457, 34, 'Senapati'),
(458, 34, 'Thoubal'),
(459, 34, 'Ukhrul'),
(460, 35, 'East Garo Hills'),
(461, 35, 'East Jaintia Hills'),
(462, 35, 'East Khasi Hills'),
(463, 35, 'North Garo Hills'),
(464, 35, 'Ri-Bhoi'),
(465, 35, 'South Garo Hills'),
(466, 35, 'South West Garo Hills'),
(467, 35, 'South West Khasi Hills'),
(468, 35, 'West Garo Hills'),
(469, 35, 'West Jaintia Hills'),
(470, 35, 'West Khasi Hills'),
(471, 36, 'Kolasib'),
(472, 36, 'Lunglei'),
(473, 36, 'Mamit'),
(474, 36, 'Saiha'),
(475, 36, 'Serchhip'),
(476, 36, 'Khawzawl'),
(477, 36, 'Saitual'),
(478, 37, 'Longleng'),
(479, 37, 'Mon'),
(480, 37, 'Peren'),
(481, 37, 'Phek'),
(482, 37, 'Tuensang'),
(483, 37, 'Wokha'),
(484, 37, 'Zunheboto'),
(485, 38, 'Balangir'),
(486, 38, 'Balasore'),
(487, 38, 'Bargarh'),
(488, 38, 'Bhadrak'),
(489, 38, 'Cuttack'),
(490, 38, 'Deogarh'),
(491, 38, 'Dhenkanal'),
(492, 38, 'Ganjam'),
(493, 38, 'Jagatsinghpur'),
(494, 38, 'Jajpur'),
(495, 38, 'Jharsuguda'),
(496, 38, 'Kalahandi'),
(497, 38, 'Kandhamal'),
(498, 38, 'Kendrapara'),
(499, 38, 'Kendujhar '),
(500, 38, 'Koraput'),
(501, 38, 'Malkangiri'),
(502, 38, 'Mayurbhanj'),
(503, 38, 'Nabarangpur'),
(504, 38, 'Nayagarh'),
(505, 38, 'Nuapada'),
(506, 38, 'Puri'),
(507, 38, 'Rayagada'),
(508, 38, 'Sambalpur'),
(509, 38, 'Subarnapur '),
(510, 38, 'Sundargarh'),
(511, 39, 'Barnala'),
(512, 39, 'Bathinda'),
(513, 39, 'Faridkot'),
(514, 39, 'Fatehgarh Sahib'),
(515, 39, 'Fazilka'),
(516, 39, 'Gurdaspur'),
(517, 39, 'Hoshiarpur'),
(518, 39, 'Jalandhar'),
(519, 39, 'Kapurthala'),
(520, 39, 'Mansa'),
(521, 39, 'Moga'),
(522, 39, 'Muktsar'),
(523, 39, 'Pathankot'),
(524, 39, 'Patiala'),
(525, 39, 'Rupnagar '),
(526, 39, 'Sangrur'),
(527, 39, 'Shahid Bhagat Singh Nagar (Nawanshahr)'),
(528, 39, 'Tarn Taran'),
(529, 40, 'Alwar'),
(530, 40, 'Banswara'),
(531, 40, 'Baran'),
(532, 40, 'Barmer'),
(533, 40, 'Bharatpur'),
(534, 40, 'Bhilwara'),
(535, 40, 'Bikaner'),
(536, 40, 'Bundi'),
(537, 40, 'Chittorgarh'),
(538, 40, 'Churu'),
(539, 40, 'Dausa'),
(540, 40, 'Dholpur'),
(541, 40, 'Dungarpur'),
(542, 40, 'Hanumangarh'),
(543, 40, 'Jalore'),
(544, 40, 'Jhalawar'),
(545, 40, 'Jhunjhunu'),
(546, 40, 'Karauli'),
(547, 40, 'Kota'),
(548, 40, 'Nagaur'),
(549, 40, 'Pali'),
(550, 40, 'Pratapgarh'),
(551, 40, 'Rajsamand'),
(552, 40, 'Sawai Madhopur'),
(553, 40, 'Sikar'),
(554, 40, 'Sirohi'),
(555, 40, 'Sri Ganganagar'),
(556, 40, 'Tonk'),
(557, 40, 'Udaipur'),
(558, 41, 'South Sikkim'),
(559, 42, 'Ariyalur'),
(560, 42, 'Chengalpattu'),
(561, 42, 'Coimbatore'),
(562, 42, 'Cuddalore'),
(563, 42, 'Dindigul'),
(564, 42, 'Erode'),
(565, 42, 'Kallakurichi'),
(566, 42, 'Kanyakumari'),
(567, 42, 'Karur'),
(568, 42, 'Krishnagiri'),
(569, 42, 'Madurai'),
(570, 42, 'Nagapattinam'),
(571, 42, 'Nilgiris'),
(572, 42, 'Perambalur'),
(573, 42, 'Pudukkottai'),
(574, 42, 'Ramanathapuram'),
(575, 42, 'Ranipet'),
(576, 42, 'Salem'),
(577, 42, 'Sivaganga'),
(578, 42, 'Tenkasi'),
(579, 42, 'Thanjavur'),
(580, 42, 'Theni'),
(581, 42, 'Thoothukudi '),
(582, 42, 'Tiruchirappalli'),
(583, 42, 'Tirunelveli'),
(584, 42, 'Tirupathur'),
(585, 42, 'Tiruppur'),
(586, 42, 'Tiruvallur'),
(587, 42, 'Tiruvannamalai'),
(588, 42, 'Tiruvarur'),
(589, 42, 'Vellore'),
(590, 42, 'Viluppuram'),
(591, 42, 'Virudhunagar'),
(592, 42, 'Kallakurichi'),
(593, 43, 'Adilabad'),
(594, 43, 'Bhadradri Kothagudem'),
(595, 43, 'Hyderabad'),
(596, 43, 'Jagtial'),
(597, 43, 'Jangaon'),
(598, 43, 'Jayashankar Bhupalapally'),
(599, 43, 'Jogulamba Gadwal'),
(600, 43, 'Kamareddy'),
(601, 43, 'Karimnagar'),
(602, 43, 'Khammam'),
(603, 43, 'Kumuram Bheem'),
(604, 43, 'Mahabubabad'),
(605, 43, 'Mahabubnagar'),
(606, 43, 'Mancherial'),
(607, 43, 'Medak'),
(608, 43, 'Medchal–Malkajgiri'),
(609, 43, 'Nagarkurnool'),
(610, 43, 'Nalgonda'),
(611, 43, 'Nirmal'),
(612, 43, 'Nizamabad'),
(613, 43, 'Peddapalli'),
(614, 43, 'Rajanna Sircilla'),
(615, 43, 'Rangareddy'),
(616, 43, 'Sangareddy'),
(617, 43, 'Siddipet'),
(618, 43, 'Suryapet'),
(619, 43, 'Vikarabad'),
(620, 43, 'Wanaparthy'),
(621, 43, 'Warangal Rural'),
(622, 43, 'Warangal Urban'),
(623, 43, 'Yadadri Bhuvanagiri'),
(624, 43, 'Mulugu'),
(625, 43, 'Narayanpet'),
(626, 44, 'Dhalai'),
(627, 44, 'Khowai'),
(628, 44, 'Sepahijala'),
(629, 44, 'West Tripura'),
(630, 45, 'Aligarh'),
(631, 45, 'Allahabad '),
(632, 45, 'Ambedkar Nagar'),
(633, 45, 'Amroha '),
(634, 45, 'Auraiya'),
(635, 45, 'Ayodhya '),
(636, 45, 'Azamgarh'),
(637, 45, 'Baghpat'),
(638, 45, 'Bahraich'),
(639, 45, 'Ballia'),
(640, 45, 'Balrampur'),
(641, 45, 'Banda'),
(642, 45, 'Barabanki'),
(643, 45, 'Bareilly'),
(644, 45, 'Basti'),
(645, 45, 'Bhadohi'),
(646, 45, 'Bijnor'),
(647, 45, 'Budaun'),
(648, 45, 'Bulandshahr'),
(649, 45, 'Chitrakoot'),
(650, 45, 'Deoria'),
(651, 45, 'Etah'),
(652, 45, 'Etawah'),
(653, 45, 'Farrukhabad'),
(654, 45, 'Fatehpur'),
(655, 45, 'Firozabad'),
(656, 45, 'Gautam Buddha Nagar'),
(657, 45, 'Ghaziabad'),
(658, 45, 'Ghazipur'),
(659, 45, 'Gonda'),
(660, 45, 'Gorakhpur'),
(661, 45, 'Hamirpur'),
(662, 45, 'Hapur '),
(663, 45, 'Hardoi'),
(664, 45, 'Hathras'),
(665, 45, 'Jalaun'),
(666, 45, 'Jaunpur'),
(667, 45, 'Jhansi'),
(668, 45, 'Kannauj'),
(669, 45, 'Kanpur'),
(670, 45, 'Kasganj'),
(671, 45, 'Kaushambi'),
(672, 45, 'Kushinagar'),
(673, 45, 'Lakhimpur Kheri'),
(674, 45, 'Lalitpur'),
(675, 45, 'Lucknow'),
(676, 45, 'Maharajganj'),
(677, 45, 'Mahoba'),
(678, 45, 'Mainpuri'),
(679, 45, 'Mathura'),
(680, 45, 'Mau'),
(681, 45, 'Meerut'),
(682, 45, 'Mirzapur'),
(683, 45, 'Moradabad'),
(684, 45, 'Muzaffarnagar'),
(685, 45, 'Pilibhit'),
(686, 45, 'Pratapgarh'),
(687, 45, 'Rae Bareli'),
(688, 45, 'Rampur'),
(689, 45, 'Saharanpur'),
(690, 45, 'Sambhal'),
(691, 45, 'Sant Kabir Nagar'),
(692, 45, 'Shahjahanpur'),
(693, 45, 'Shamli '),
(694, 45, 'Shravasti'),
(695, 45, 'Siddharthnagar'),
(696, 45, 'Siddharthnagar'),
(697, 45, 'Sonbhadra'),
(698, 45, 'Sultanpur'),
(699, 45, 'Unnao'),
(700, 46, 'Bageshwar'),
(701, 46, 'Champawat'),
(702, 46, 'Dehradun'),
(703, 46, 'Haridwar'),
(704, 46, 'Pauri Garhwal'),
(705, 46, 'Pithoragarh'),
(706, 46, 'Rudraprayag'),
(707, 46, 'Tehri Garhwal'),
(708, 46, 'Uttarkashi'),
(709, 47, 'Alipurduar'),
(710, 47, 'Bankura'),
(711, 47, 'Birbhum'),
(712, 47, 'Cooch Behar'),
(713, 47, 'Dakshin Dinajpur'),
(714, 47, 'Darjeeling'),
(715, 47, 'Jalpaiguri'),
(716, 47, 'Jhargram'),
(717, 47, 'Kalimpong'),
(718, 47, 'Murshidabad'),
(719, 47, 'Nadia'),
(720, 47, 'North 24 Parganas'),
(721, 47, 'Paschim Bardhaman (West Bardhaman)'),
(722, 47, 'Paschim Medinipur (West Medinipur)'),
(723, 47, 'Purba Bardhaman (East Bardhaman)'),
(724, 47, 'Purba Medinipur (East Medinipur)'),
(725, 47, 'Purulia'),
(726, 47, 'South 24 Parganas'),
(727, 47, 'Uttar Dinajpur');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(5, 'gallery1.png'),
(6, 'gallery2.png'),
(7, 'gallery3.png'),
(8, 'gallery4.png'),
(9, 'gallery5.png'),
(10, 'gallery7.png'),
(11, 'gallery8.png'),
(12, 'team1.png'),
(13, 'blog5.png'),
(14, 'project3.png');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `amount`, `name`, `email`, `phone`, `date`, `state`, `district`, `city`, `payment_status`, `service`) VALUES
(22, 'ORDER-619', '400', 'Harsh', 'hs360863@gmail.com', '8090939338', '2024-07-31', 'Arunachal Pradesh', 'Tawang', 'Lumla', 'success', 'Operation '),
(34, 'ORDER-557', '400', 'Amit', 'Amit@gmail.com', '8009026423', '2024-07-23', 'Chhattisgarh', 'Korba', 'Kartala', 'Pending', ' Liver operation'),
(35, 'ORDER-169', '400', 'testing dev', 'gudduchuphal57@gmail.com', '01234567890', '2024-07-26', 'Chhattisgarh', 'Dhamtari', 'Ghaziabad', 'Pending', ' Nightfall'),
(36, 'ORDER-569', '400', 'Harsh Sharma', 'hs360863@gmail.com', '7068235968', '2024-07-25', 'Andhra Pradesh', 'Eluru', 'chandauli', 'Pending', ' Kidney stones'),
(37, 'ORDER-669', '400', '', '', '', '', 'Goa', 'Nourth Goa', 'Heuejdjdj', 'Pending', ' Infertility'),
(38, 'ORDER-384', '400', 'Harsh Sharma', 'jite@gmail.com', '8009026426', '2024-08-03', 'Assam', 'Biswanath', 'Magna accusantium al', 'Pending', ' Nightfall'),
(39, 'ORDER-493', '400', 'testing dev', 'gudduchuphal57@gmail.com', '0753595981', '2024-07-23', 'Andhra Pradesh', 'Kakinada', 'noida', 'Pending', ' Nightfall'),
(40, 'ORDER-511', '400', 'testing dev', 'gudduchuphal57@gmail.com', '07535959813', '2024-07-29', 'Assam', 'Biswanath', 'noida', 'Pending', ' Low sperm Count'),
(41, 'ORDER-618', '400', 'Rakehs', 'sumi@gmail.com', '8009026423', '2024-08-09', '', '', '', 'Pending', ' '),
(42, 'ORDER-618', '400', 'Rakehs', 'sumi@gmail.com', '8009026423', '2024-08-09', '', '', '', 'Pending', ' '),
(43, '', '400', '', '', '', '', '', '', '', 'success', ''),
(44, 'ORDER-484', '400', 'Prabhat', 'prabhat@cssfounder.com', '7838490044', '2024-08-23', 'Arunachal Pradesh', 'Lohit', 'delhi', 'Pending', ' Premature Ejaculation'),
(45, 'ORDER-764', '400', 'Prabhat', 'prabhat@cssfounder.com', '7838490044', '2024-08-23', 'Arunachal Pradesh', 'Lohit', 'delhi', 'Pending', ' Infertility'),
(46, 'ORDER-596', '400', 'Prabhat', 'prabhat@cssfounder.com', '7838490044', '2024-08-23', 'Bihar', 'Begusarai', 'Noida', 'success', ' Ovarian cysts'),
(47, 'ORDER-130', '400', 'Rachit kumar', 'rachitkumar3185@gmail.com', '9058173153', '2024-09-04', 'Andhra Pradesh', 'Konaseema', 'Noida', 'Pending', ' Ovarian cysts'),
(48, 'ORDER-606', '400', '', '', '', '', 'Manipur', 'Thoubal', 'Rajeev Chauk', 'Pending', ' Piles'),
(49, 'ORDER-606', '400', '', '', '', '', 'Manipur', 'Thoubal', 'Rajeev Chauk', 'Pending', ' Piles'),
(50, '', '400', '', '', '', '', '', '', '', 'success', ''),
(51, 'ORDER-878', '400', '', '', '', '', 'Arunachal Pradesh', 'West Siang', 'Rajeev Chauk', 'Pending', ' Piles'),
(52, 'ORDER-170', '40000', 'Jesse Beach', 'vixo@mailinator.com', '+1 (802) 316-4313', '2016-09-24', 'Assam', 'Dhubari', 'chandauli', 'Pending', ' Fatty Liver'),
(53, 'ORDER-808', '₹400', 'Harshsssss', 'wequ@mailinator.com', '+1 (184) 203-5575', '1999-02-24', 'Bihar', 'Gaya', 'Gaya', 'Pending', ' Other'),
(54, 'ORDER-819', '₹400', 'Harsh', 'hsdd3663@gmail.com', '8090282882', '2024-09-20', 'Arunachal Pradesh', 'Anjaw', 'chandauli', 'Pending', ' Ovarian cysts'),
(55, 'ORDER-210', '₹400', 'Frances Phillips', 'xure@mailinator.com', '+1 (883) 873-5404', '2021-12-29', 'Arunachal Pradesh', 'Anjaw', 'chandauli', 'Pending', ' Ovarian cysts'),
(56, 'ORDER-964', '₹400', 'Autumn Hall', 'fisipozi@mailinator.com', '+1 (274) 256-7831', '1993-10-12', 'Assam', 'Baksa', 'Et et aut molestiae ', 'Pending', ' Piles'),
(57, 'ORDER-479', '₹400', 'Jael Fry', 'ketyro@mailinator.com', '+1 (987) 384-1515', '2016-02-10', 'Assam', 'Jarhat', 'Gurgaon ', 'Pending', ' Ovarian cysts'),
(58, 'ORDER-148', '₹400', 'Mark Mayo', 'ximunyxaf@mailinator.com', '+1 (859) 804-7942', '1992-11-21', 'Assam', 'Jarhat', 'Gurgaon ', 'success', ' Ovarian cysts'),
(59, 'ORDER-369', '₹400', 'Harsh', 'Amit@gmail.com', '7068235968', '2024-09-20', 'Arunachal Pradesh', 'West Kameng', 'Gurgaon ', 'success', ' Ovarian cysts'),
(60, 'ORDER-732', '₹400', 'Sachin', 'sachin@gmail.com', '8090282882', '2024-09-20', 'Bihar', 'Gaya', 'Gaya', 'success', ' Nightfall'),
(61, 'ORDER-788', '₹400', 'Nagina', 'nagi@gmail.com', '7068235968', '2024-09-21', 'Uttar Pradesh', 'Chandauli', 'chandauli', 'Pending', ' Nightfall'),
(62, 'ORDER-552', '₹400', 'Shubham', 'shuham @gmail.com', '8090939338', '2024-09-20', 'Andhra Pradesh', 'Tirupati', 'chandauli', 'Pending', ' Kidney stones'),
(63, 'ORDER-218', '₹400', 'Aimee Trujillo', 'goqo@mailinator.com', '9874664646', '1980-06-12', 'Assam', 'Baksa', 'Aut voluptatum enim ', 'Pending', ' Piles'),
(64, 'ORDER-130', '₹400', 'Stone Reynolds', 'qucesu@mailinator.com', '+1 (641) 558-7537', '1983-05-22', 'Arunachal Pradesh', 'Lohit', 'Accusantium amet qu', 'Pending', ' Piles'),
(65, 'ORDER-629', '₹400', 'Sawyer Rojas', 'zegyf@mailinator.com', '+1 (487) 253-5115', '1988-11-08', 'Arunachal Pradesh', 'Lohit', 'Accusantium amet qu', 'Pending', ' Piles'),
(66, 'ORDER-223', '₹400', 'Carl Hooper', 'qecibar@mailinator.com', '+1 (377) 942-4105', '2005-10-09', 'Assam', 'Golaghat', 'Delhi', 'Pending', ' Fatty Liver'),
(67, 'ORDER-123', '₹400', 'Gwendolyn Dudley', 'bova@mailinator.com', '+1 (151) 347-5919', '2019-12-07', 'Chhattisgarh', 'Janjgir-Champa', 'Aut voluptatum enim ', 'success', ' Fatty Liver'),
(68, 'ORDER-304', '₹400', 'Harsh', 'harsh@gmail.com', '8989426334', '2024-10-18', 'Andhra Pradesh', 'Eluru', 'vfsv', 'Pending', ' Erectile Dysfunction'),
(69, 'ORDER-458', '₹400', 'Maite Price', 'zosazi@mailinator.com', '+1 (625) 789-6093', '2006-05-12', 'Assam', 'Dhubari', 'Gurgaon ', 'Pending', ' Piles');

-- --------------------------------------------------------

--
-- Table structure for table `payment_branch`
--

CREATE TABLE `payment_branch` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_branch`
--

INSERT INTO `payment_branch` (`id`, `order_id`, `amount`, `name`, `email`, `phone`, `services`, `date`, `payment_status`) VALUES
(5, 'ORDER-189', '400', 'Sachin', 'sachin@gmail.com', '7068235968', 'Kidney stones', '2024-07-24', 'success'),
(6, 'ORDER-546', '400', 'Amit', 'Amit@gmail.com', '8009026426', 'Fatty Liver', '2024-07-25', 'success'),
(8, 'ORDER-180', '400', 'Ravi', 'ram@gmail.com', '8090939338', 'Premature Ejaculation', '2024-07-21', 'pending'),
(9, 'ORDER-878', '400', 'Shubham', 'shuham @gmail.com', '8989426334', 'Ovarian cysts', '2024-07-30', 'success'),
(10, 'ORDER-805', '400', 'testing dev', 'gudduchuphal57@gmail.com', '07535959813', 'Ovarian cysts', '2024-07-26', 'pending'),
(11, 'ORDER-214', '400', 'testing dev', 'gudduchuphal57@gmail.com', '7535959813', 'Premature Ejaculation', '2024-08-02', 'pending'),
(12, 'ORDER-460', '400', 'testing dev', 'gudduchuphal57@gmail.com', '01234567890', 'Low sperm Count', '2024-08-01', 'pending'),
(13, 'ORDER-337', '400', 'testing dev', 'gudduchuphal57@gmail.com', '07535959813', '', '2024-07-31', 'pending'),
(14, 'ORDER-988', '400', 'Amit', 'sumi@gmail.com', '9876543210', 'Infertility', '2024-08-17', 'pending'),
(15, 'ORDER-512', '400', 'Test Test', 'jdytued@gmail.com', '08904567832', '', '2024-08-23', 'pending'),
(16, 'ORDER-799', '400', 'Sunil KB', 'pavib.12345@gmail.com', '09110433280', 'Ovarian cysts', '2024-08-31', 'pending'),
(17, 'ORDER-880', '400', '', '', '', '', '', 'pending'),
(18, 'ORDER-880', '400', '', '', '', '', '', 'pending'),
(19, 'ORDER-951', '400', 'asfasfas JWGRYUG', 'jasgdjagdyu@gmail.com', '08116711818', 'Low sperm Count', '2024-08-27', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `specialisation`
--

CREATE TABLE `specialisation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialisation`
--

INSERT INTO `specialisation` (`id`, `name`) VALUES
(6, 'Premature Ejaculation'),
(7, 'Low sperm Count'),
(8, 'Nightfall'),
(9, 'Infertility'),
(10, 'Kidney stones'),
(11, 'Brain Hemorrhag'),
(12, 'Fatty Liver'),
(13, 'Ovarian cysts'),
(14, 'Piles'),
(15, 'Erectile Dysfunction'),
(16, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`) VALUES
(20, 'Andhra Pradesh'),
(21, 'Arunachal Pradesh'),
(22, 'Assam'),
(23, 'Bihar'),
(24, 'Chhattisgarh'),
(25, 'Goa'),
(26, 'Gujarat'),
(27, 'Haryana'),
(28, 'Himachal Pradesh'),
(29, 'Jharkhand'),
(30, 'Karnataka'),
(31, 'Kerala'),
(32, 'Madhya Pradesh'),
(33, 'Maharashtra'),
(34, 'Manipur'),
(35, 'Meghalaya'),
(36, 'Mizoram'),
(37, 'Nagaland'),
(38, 'Odisha'),
(39, 'Panjab'),
(40, 'Rajasthan'),
(41, 'Sikkim'),
(42, 'Tamil Nadu'),
(43, 'Telangana'),
(44, 'Tripura'),
(45, 'Uttar Pradesh'),
(46, 'Uttarakhand'),
(47, 'West Bengal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_ibfk_1` (`district_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_ibfk_1` (`state_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_branch`
--
ALTER TABLE `payment_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialisation`
--
ALTER TABLE `specialisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `payment_branch`
--
ALTER TABLE `payment_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `specialisation`
--
ALTER TABLE `specialisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
