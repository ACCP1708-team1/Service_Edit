-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 06:06 AM
-- Server version: 10.1.34-MariaDB
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
-- Database: `db_project_sem4`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `status`, `create_date`) VALUES
(1, 'A - TEAM', 'A-Team professional decorators and property refurbishers\r\nWhites Decorating & Refurbishment is a family owned business and enjoys a tremendous reputation, doing work exactly the way you need it. We pride ourselves on increasing customer expectations with quality work, friendly services and economical pricing.\r\n\r\nOur customers would testify to the professionalism and reliability we exhibit and the high quality of our work. For 30 years, we’ve enjoyed delighting our customers and this inspires and drives us forward. Our team is made up of experienced and hard working tradesmen, who are always willing to work with you to give you faultless service.\r\n\r\nOur home improvements services include decorating, home refurbishment, kitchen refurbishment, property maintenance, decoration of the Restaurants, decorating the Offices, decoration of the “Community Halls” or “Function Halls” or “Banquet Halls” for Parties or get-togethers.', 1, '2019-09-01 07:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` int(20) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `id_account_role` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_account`, `username`, `password`, `fullname`, `email`, `phone`, `facebook`, `birthday`, `createdate`, `sex`, `avatar`, `address`, `status`, `id_account_role`) VALUES
(1, 'admin', '$2a$10$/29xNIhj54UkJoDg7aECK.8/okMpdU9eerNwjph6iN08gFh/91a7a', 'Phan huy ich', '', '', NULL, NULL, '2019-10-09 09:44:10', 0, '', '', 1, 1),
(2, 'phanich', '827CCB0EEA8A706C4C34A16891F84E7B', 'Phan huy ich', 'phanich95@gmail.com', '0231533333', NULL, NULL, '2019-10-20 16:32:39', 0, '', 'Viet nam', 1, 2),
(4, 'a', '$2a$10$dQmzm37AdKJnuSN6wNo/V.ZqtJcqqqDbZlcoG5y8uJC2AXJ1NJ8f6', 'aaa', 'phanich96@gmail.com', '0445353523', NULL, NULL, '2019-10-20 17:17:07', 0, '', 'Viet nam', 1, 1),
(5, 'bb', '12345', 'bbbbbbbbb', 'sdfsdfdsg', '123242342', NULL, '2019-10-08', '2019-10-20 00:00:00', 1, '', 'vcbncncv', 1, 2),
(6, 'phan', '$2a$10$/29xNIhj54UkJoDg7aECK.8/okMpdU9eerNwjph6iN08gFh/91a7a', 'Ho?ng Xu?n B?', 'asdas@email.com', '12342252', NULL, NULL, '2019-10-20 20:34:49', 0, '', 'trung cua', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_role`
--

CREATE TABLE `account_role` (
  `id_account_role` int(11) NOT NULL,
  `role_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_role`
--

INSERT INTO `account_role` (`id_account_role`, `role_name`, `status`) VALUES
(1, 'Admin', 1),
(2, 'Customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `title`, `status`, `avatar`, `description`) VALUES
(1, 'Decorating the House', 'Decorating the House', 1, 'category_home.jpg', 'Decorating and Furnishing with Furniture And Glass\r\nKitchen Design\r\nFlooring Layout\r\nLightning Effects\r\nWindow Coverings\r\nColour Schemes\r\nCurtain Designing\r\nArchitectural design\r\nPlanting\r\nSeating Ali'),
(2, 'Decorating the Offices', 'Decorating the Offices', 1, 'category_home2.jpg', 'Decorating and Furnishing with Furniture and Glass, etc.\r\nFlooring Layout\r\nLightning Effects\r\nWindow Coverings\r\nColour Schemes\r\nCurtain Designing\r\nArchitectural design\r\nPlanting\r\nSeating Alignment, etc.'),
(3, 'Orther', 'Orther', 1, 'category_home3.jpg', 'Decorating and Furnishing with Furniture and Glass, etc.\r\nWindow Coverings\r\nLightning Effects\r\nCurtain Designing\r\nArchitectural design\r\nPlanting\r\nSeating Alignment, etc.'),
(4, 'Decoration of the Restaurants', 'Decoration of the Restaurants', 1, 'category_home4.jpg', 'Decorating and Furnishing with Furniture And Glass\r\nKitchen Design\r\nFlooring Layout\r\nWindow Coverings\r\nLightning Effects\r\nColour Schemes\r\nCurtain Designing\r\nArchitectural design\r\nPlanting\r\nSeating Alignment, etc.');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fax` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `fax`, `phone`, `facebook`, `address`, `status`) VALUES
(1, 'A - TEAM', 'Ateam@hotmail.com.vn', '078535375867', '07806 6851', '', '330 Nguyen Kiem, Binh Thanh District, Ho Chi Minh City', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_report`
--

CREATE TABLE `customer_report` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_report`
--

INSERT INTO `customer_report` (`id`, `id_account`, `title`, `content`, `id_invoice`, `status`, `create_date`) VALUES
(1, 1, '', 'Hello adimn', 15, 1, '2019-10-19 10:19:50'),
(2, 1, '', 'Nononon', 15, 1, '2019-10-19 10:29:08'),
(3, 1, '', 'Hello adimn', 15, 1, '2019-10-19 22:56:39'),
(4, 1, '', 'ahahaha', 15, 1, '2019-10-19 22:57:05'),
(5, 6, '', 'Hello adimn', 28, 1, '2019-10-22 00:36:11'),
(6, 6, '', 'ahahaha', 28, 1, '2019-10-22 00:37:34'),
(7, 6, '', 'Sao khong tra loi', 28, 1, '2019-10-22 00:39:29'),
(8, 6, '', 'Hello adimn', 29, 1, '2019-10-22 08:36:20'),
(9, 6, '', 'abbsfafh ', 29, 1, '2019-10-22 08:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `anwers` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `anwers`, `status`, `create_date`) VALUES
(1, 'How to login into the application?', '', 0, '2019-09-01'),
(2, 'How to register with the site?', '', 0, '2019-09-01'),
(3, 'I am not a registered user? Will I be able to apply for the service?', 'No, only the registered users will be able to apply for the service.\r\nHow to apply for the Service?', 1, '2019-09-01'),
(4, 'I reside at a location ‘X’, will I be provided with the service?', 'First you must apply for the service mentioning the service and the domain interested in, and the address at which you want the service to be provided. Then we will get back to you whether we will provide the service at that location or not. \r\n(OR)\r\nYou can provide an answer stating that the service will be provided at so and so locations only.', 1, '2019-09-01'),
(5, 'What are the charges of the service?', '', 0, '2019-09-01'),
(6, 'Will I be provided in any other services apart from the services and domains displayed? And if yes, what will be the charges?', 'Well it will be dependant on the type of the service and the domain you requested. We will revert back to you once the service request is received by us. The charges will be based on the service and the domain you preferred. This will be communicated well in advance before accepting and going ahead with the service.', 1, '2019-09-01'),
(7, 'How will I know that whether you will provide the service or not? If yes, then when will the service provided?', 'Once the service request is received, we will get back to you like whether we provide the service or not, and if we provide service we will inform when the service will be started.', 1, '2019-09-01'),
(8, 'How long will it take to complete the service?', 'Well this will be dependant on the service and domain preferred. Also it will be dependant on the work or building or complex, etc. for which the services are preferred for.', 1, '2019-09-01'),
(9, 'How will I know about the total charges for the service preferred?', 'At the time of booking for a service itself, you can find the charges for the service provided.', 1, '2019-09-01'),
(10, 'On what factors will the charges for the service depend upon?', 'The charges will be dependant on the type of the domain, and type of the service, area on which the services are preferred.', 1, '2019-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `end_date` date NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `id_account`, `create_date`, `end_date`, `address`, `status`) VALUES
(1, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(2, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(3, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(4, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(5, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(6, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(7, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(8, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(9, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(10, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(11, 1, '2019-10-15', '2019-10-15', 'Viet nam', 1),
(12, 1, '2019-10-15', '2019-10-16', 'Ha noi', 1),
(13, 1, '2019-10-15', '2019-10-22', 'Ha noi', 1),
(14, 1, '2019-10-16', '2019-10-17', 'Nga tu so', 1),
(15, 1, '2019-10-16', '2019-10-22', 'Dem giay mo', 1),
(16, 6, '2019-10-21', '2019-10-30', 'Viet nam', 1),
(17, 6, '2019-10-21', '2019-10-29', 'trung cua', 1),
(18, 6, '2019-10-21', '2019-10-15', 'Dem giay mo', 1),
(19, 6, '2019-10-21', '2019-10-26', 'Ngay nay nam sau', 1),
(20, 6, '2019-10-21', '2019-10-30', 'Ngay nay nam sau', 1),
(21, 6, '2019-10-21', '2019-10-30', 'Dem giay mo', 1),
(22, 6, '2019-10-21', '2019-10-30', 'Dem giay mo', 1),
(23, 6, '2019-10-21', '2019-10-12', 'Dem giay mo', 1),
(24, 6, '2019-10-21', '2019-10-26', 'Viet nam', 1),
(25, 6, '2019-10-21', '2019-11-28', 'adasafafasf', 1),
(26, 6, '2019-10-21', '2019-10-31', 'adasafafasf', 1),
(27, 6, '2019-10-21', '2019-10-31', 'Ngay nay nam sau', 1),
(28, 6, '2019-10-21', '2019-10-29', 'Ngay nay nam sau dasdaf', 1),
(29, 6, '2019-10-22', '2019-10-26', 'Dem giay mo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `paid_money` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`id`, `id_invoice`, `id_service`, `paid_money`, `status`) VALUES
(2, 4, 1, 0, 1),
(3, 5, 1, 0, 1),
(4, 6, 1, 0, 1),
(5, 10, 1, 0, 1),
(6, 10, 2, 0, 1),
(7, 10, 4, 0, 1),
(8, 11, 1, 0, 1),
(9, 11, 8, 0, 1),
(10, 11, 10, 0, 1),
(11, 12, 1, 0, 1),
(12, 13, 1, 0, 1),
(13, 13, 2, 0, 1),
(14, 14, 1, 0, 1),
(15, 14, 2, 0, 1),
(16, 14, 4, 0, 1),
(17, 14, 3, 0, 1),
(18, 15, 1, 0, 1),
(19, 15, 2, 0, 1),
(20, 15, 5, 0, 1),
(21, 20, 1, 0, 1),
(22, 20, 2, 0, 1),
(23, 20, 3, 0, 1),
(24, 21, 1, 0, 1),
(25, 22, 1, 0, 1),
(26, 24, 1, 0, 1),
(27, 25, 1, 0, 1),
(28, 27, 11, 0, 1),
(29, 27, 12, 0, 1),
(30, 28, 34, 0, 1),
(31, 28, 35, 0, 1),
(32, 28, 41, 0, 1),
(33, 29, 1, 0, 1),
(34, 29, 2, 0, 1),
(35, 29, 3, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `b` tinyint(1) NOT NULL DEFAULT '0',
  `i` tinyint(1) NOT NULL DEFAULT '0',
  `u` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `money` decimal(10,0) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_status_project` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `start_date`, `end_date`, `title`, `id_status_project`, `status`, `description`, `avatar`) VALUES
(1, 'Saigon Opera House', '2018-12-09', '2020-03-28', 'Under construction at 03 Le Lai, District 1, Ho Chi Minh City', 1, 1, 'Implementation: Ateam and some corporations such as VNGroup, City Land, Nova Land, etc.', 'project3.jpg'),
(2, 'Garden of Eden', '2018-08-01', '2021-03-31', 'Under construction at 330 Nguyen Kiem, District Phu Nhuan, Ho Chi Minh City', 2, 1, 'Implementation: Ateam', 'project2.jpg'),
(3, 'Golden Villas', '2017-08-01', '2018-08-01', 'Under construction at 04 Nguyen Oanh, District Go Vap, Ho Chi Minh City', 3, 1, 'Implementation: Ateam and some corporations such as VNGroup, City Land, Nova Land, etc.\r\n\r\n', 'project1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_photo`
--

CREATE TABLE `project_photo` (
  `id` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_status`
--

CREATE TABLE `project_status` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_status`
--

INSERT INTO `project_status` (`id`, `name`, `description`, `status`, `avatar`) VALUES
(1, 'On going', 'List of projects being implemented by Ateam', 1, 'project_ongoing .jpg'),
(2, 'Up coming', 'List of upcoming projects made by Ateam', 1, 'project_Upcomming.jpg'),
(3, 'Accomplished', 'List of projects completed by Ateam', 1, 'project_Accomplished.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `servicer`
--

CREATE TABLE `servicer` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `servicer`
--

INSERT INTO `servicer` (`id`, `name`, `title`, `avatar`, `id_category`, `description`, `status`) VALUES
(1, 'Decorating and Furnishing with Furniture And Glass', 'Choose the right glasses for customers\' requirements.', 'Service_architectural_01.jpeg', 1, 'Interior design modern living room\r\nToday, there are many trends in interior design of different living rooms, depending on preferences and conditions that families can choose their own style of design for the family living room.\r\nAnd one of the trends that are very popular is the trend of modern living room interior design. Beautiful, comfortable and class are the shortest words can say about this trend.', 1),
(2, 'Kitchen Design\r\n', 'Building, renovating, renovating, designing and arranging for kitchens and kitchens', 'Service_kitchen_01.jpeg', 1, 'Design beautiful kitchen not only based on the elements of decoration, interior materials but it is important that you keep up with the trend, helping the kitchen become more lively.  Beautiful kitchen design, catching up with the trend is the concern of many families. However, to do this you need to consult the architect or consult many sources.', 1),
(3, 'Flooring Layout', 'Interior design beautiful kitchen\r\nInterior design luxury kitchen', 'Service_flooring_01.jpeg', 1, 'The floor is one of the housing components. The floor is a horizontal plane that divides the house space into different floors. In addition, the floor also has the task of bearing, sound insulation, heat insulation and waterproofing, decorating the space in your house!', 1),
(4, 'Lightning Effects', 'Lighting design is suitable for customer kitchen', 'Service_lighting_04.jpeg', 1, 'Light design is an important element in the interior design\'s elements. Because light affects not only your vision but also your feelings. A perfect lighting system will help decorate your home and create a comfortable feeling for your eyes.', 1),
(5, 'Window Coverings', 'Designing windows suitable for each large, medium and small space.', 'Service_Window_01.jpeg', 1, 'The position of the window design is very important because it affects the living space and has a direct effect on the air conditioner circulating in the room. It is wrong to choose a window position in anaerobic, dimly lit and overcast place, because it wastes living space and ignores the utility of the window.\r\n\r\nAdvice: choose a location to open the window in an open place, as airy as possible so that your view is not obstructed and gives the room fresh air.\r\n\r\nAccording to feng shui, opening windows in a well ventilated place also brings good air and good luck for the house.', 1),
(6, 'Colour Schemes', 'Choose colors and advice according to each customer requirements', 'Service_colour_01.jpeg', 1, ' Many people who receive a complete home use only what is \"available\". Some people also change and refurbish the house to suit their preferences and use needs. A few others change the whole structure of the house. The problem is, when you change, do you really know the principles of decoration, color scheme, and arrangement?', 1),
(7, 'Curtain Designing', 'Choose the optimal curtain and best fit for the interior.', 'Service_curtain_01.jpeg', 1, 'Curtains help you control the amount of light coming into the house, create a private space and make the room look more warm, so choosing the curtains is also important in bringing aesthetics.', 1),
(8, 'Architectural design', 'Design drawings based on customer ideas, material selection, price quotes for customers.', 'Service_architectural_01.jpeg', 1, 'In interior design, the law of balance is the symmetry, the balance of the elements of interior space from equilibrium in height, width of space, furniture decoration, interior space structure. Furniture ... .. In other words, the law of balance is expressed in all the elements arranged in a layout. There are two main types of balance in interior design: symmetry balance and asymmetric balance.', 1),
(9, 'Planting', 'Based on the customer\'s interior and ideas, choose the most appropriate tree model.', 'Service_Planting_01.jpg', 1, 'Green architecture is a trend of modern house design, bringing cool and comfortable living space for people. However, the selection of interior bonsai need to adhere to certain principles to ensure feng shui elements for the house.', 1),
(10, 'Seating Alignment in the Living Rooms', 'Reasonable seating arrangement creates space in accordance with customer requirements.', 'Service_architectural_01.jpeg', 1, 'The arrangement of seats in the living room is very important, to have a space that is both luxurious and cozy, creativity is essential, and the experience of the designer.', 1),
(11, 'Decorating the Offices', 'Design based on customers\' ideas, giving more necessary suggestions to help the office have the best harmony.', 'Service_architectural_02.jpg', 2, 'Science proves that the arrangement of offices, tables and chairs scientifically and aesthetically will cheer employees up, relax, reduce stress and especially increase labor productivity. The arrangement of the office for each non-scientific department will result in a lot of work and time for moving the workflow. This causes waste. In addition, the layout for the staff room will cause waste.', 1),
(12, 'Decorating and Furnishing with Furniture And Glass', 'Choose the right glasses for customers\' requirements.', 'Service_Living_02.jpg', 2, 'Interior design of office space is the most optimal arrangement for working space. Accordingly, the design is not simply to bring tables and chairs and equipment into the office, but also to determine the color, position and contrast between them.', 1),
(13, 'Flooring Layout', 'Choose the appropriate floor type for space.', 'Service_flooring_02.jpeg', 2, 'The floor is one of the housing components. The floor is a horizontal plane that divides the house space into different floors. In addition, the floor also has the task of bearing, sound insulation, heat insulation and waterproofing, decorating the space in your house!', 1),
(14, 'Lightning Effects', 'Arrange the lighting system and appropriate lighting place.', 'Service_lighting05.jpg', 2, 'An office that harmonizes performance, aesthetics and meets all technical standards is what every company wants, it represents the face of the company, the development and prosperity of the company. ty. Among the standards of office design, the standards of lighting in the office are most important.', 1),
(15, 'Window Coverings', 'Designing windows suitable for each large, medium and small space.', 'Service_Window_02.jpeg', 2, 'The position of the window design is very important because it affects the living space and has a direct effect on the air conditioner circulating in the room. It is wrong to choose a window position in anaerobic, dimly lit and overcast place, because it wastes living space and ignores the utility of the window.', 1),
(16, 'Colour Schemes', 'Choose colors and advice according to each customer requirements', 'Service_colour_04.jpeg', 2, 'The office needs focus on colors to improve work efficiency and to relax during breaks. So, if a combination of many strong colors will easily backfire. Each color brings different messages, so it depends on the nature of the job to choose the right and harmonious color.', 1),
(17, 'Curtain Designing', 'Choose the optimal curtain and best fit for the interior.', 'Service_curtain_05.jpg', 2, 'In offices with high-class office curtains, it will create a modern and comfortable living space, with sunshade and 100% shade protection, this roller blind product is an excellent choice for you. With enough colors for you to choose to match the colors in your interior design, the product is an opportunity for you to create a great resort space in your room, they create a feeling of prices cool in the summer and cozy in the winter.', 1),
(18, 'Architectural design', 'Design drawings based on customer ideas, material selection, price quotes for customers.', 'Service_office_01.jpg', 2, 'Designing office is a fusion of art, fine arts and science to turn everyday objects and everyday objects into a harmonious whole. Colors and design styles will have a major impact on how people perceive the interior.', 1),
(19, 'Planting', 'Based on the customer\'s interior and ideas, choose the most appropriate tree model.', 'Service_Planting_03.jpeg', 2, 'Green architecture is a trend of modern house design, bringing cool and comfortable living space for people. However, the selection of interior bonsai need to adhere to certain principles to ensure feng shui elements for the house.', 1),
(20, 'Seating Alignment', 'Reasonable seating arrangement creates space in accordance with customer requirements.', 'Service_Living_04.jpg', 2, 'All worktables must be against the wall or against each other, without any openings. The arrangement of offices working with tables and chairs should ensure four principles: spacious front, solid rear, tall on the left and ventilation on the right.', 1),
(21, 'Decorating and Furnishing with Furniture and Glass', 'Choose the right glasses for customers\' requirements.', 'Service_curtain_02.jpeg', 3, 'According to many people, designing a large hall with a capacity of 200 seats is not a simple job. With works like this, it is necessary to have careful, scientific and rational calculations for design and construction plans. Along with that, it must ensure the conformity of construction regulations. However, if you understand the basic principles of design, this is not too difficult task.', 1),
(22, 'Window Coverings', 'Designed according to the requirements of guests, the ideas given to the content guests need.', 'Service_curtain_02.jpeg', 3, 'The position of the window design is very important because it affects the living space and has a direct effect on the air conditioner circulating in the room. It is wrong to choose a window position in anaerobic, dimly lit and overcast place, because it wastes living space and ignores the utility of the window.\r\n\r\nAdvice: choose a location to open the window in an open place, as airy as possible so that your view is not obstructed and gives the room fresh air.\r\n\r\nAccording to feng shui, opening windows in a well ventilated place also brings good air and good luck for the house.', 1),
(23, 'Lightning Effects', 'Arrange the lighting system and appropriate lighting place.', 'Service_lighting_01.jpeg', 3, 'Different from the light in the audience area, the stage lighting is carefully installed and meticulously calculated in every detail. For the stages of halls for meetings and seminars, the light must be bright enough, not necessarily colored lights.\r\nWith hall stages for performing arts and entertainment, stage lighting is extremely focused in the design. This is an important factor to evaluate the professionalism and attractiveness of the stage. Stage lighting at this time is not simply for lighting, but also for the artistic element. The color lights, flashes, light changes dynamically in each scene with high entertainment elements.', 1),
(24, 'Curtain Designing', 'Choose the optimal curtain and best fit for the interior.', 'Service_curtain_02.jpeg', 3, 'Design the stage theater, the first thing is to choose the type of curtain appropriate to the nature of the ceremony. This is an indispensable piece of furniture for the auditorium stage. The stage backdrop contributes to the background that enhances the stately beauty of that space.\r\n\r\nTherefore, the backdrop of the theater stage should ensure the following factors:\r\n\r\nThe aesthetics are beautiful and solemn.\r\nThe colors match the hall space.\r\nMaterial ensures durable, strong, no wrinkled when long-term use.', 1),
(25, 'Architectural design', 'Design drawings based on customer ideas, material selection, price quotes for customers.', 'Service_lighting_03.jpeg', 3, 'When arranging seats in a conference, it is not possible to equate all the same positions but need a reasonable arrangement for each person. The selection of interior hall must also pay attention to the materials and designs suitable for each hall space.', 1),
(32, '', 'Planting', '', 3, '1', 1),
(33, '', 'Seating Alignment', '', 3, '1', 1),
(34, 'Decorating and Furnishing with Furniture And Glass', 'Decorating and Furnishing with Furniture And Glass', '', 4, '1', 1),
(35, 'Kitchen Design', 'Kitchen Design', '', 4, '1', 1),
(36, '', 'Flooring Layout', '', 4, '1', 1),
(37, '', 'Window Coverings', '', 4, '1', 1),
(38, '', 'Lightning Effects', '', 4, '1', 1),
(39, '', 'Colour Schemes', '', 4, '1', 1),
(40, '', 'Curtain Designing', '', 4, '1', 1),
(41, 'Architectural design', 'Architectural design', '', 4, '1', 1),
(42, 'Planting', 'Planting', '', 4, '1', 1),
(43, 'Seating Alignment', 'Seating Alignment', '', 4, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_photo`
--

CREATE TABLE `service_photo` (
  `id` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_account_role` (`id_account_role`);

--
-- Indexes for table `account_role`
--
ALTER TABLE `account_role`
  ADD PRIMARY KEY (`id_account_role`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_report`
--
ALTER TABLE `customer_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_account` (`id_account`),
  ADD KEY `id_invoice` (`id_invoice`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_account` (`id_account`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_invoce` (`id_invoice`),
  ADD KEY `id_service` (`id_service`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_invoice` (`id_invoice`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_status_project` (`id_status_project`);

--
-- Indexes for table `project_photo`
--
ALTER TABLE `project_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `project_status`
--
ALTER TABLE `project_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicer`
--
ALTER TABLE `servicer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `service_photo`
--
ALTER TABLE `service_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_serivce` (`id_service`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `account_role`
--
ALTER TABLE `account_role`
  MODIFY `id_account_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_report`
--
ALTER TABLE `customer_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_photo`
--
ALTER TABLE `project_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_status`
--
ALTER TABLE `project_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `servicer`
--
ALTER TABLE `servicer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `service_photo`
--
ALTER TABLE `service_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`id_account_role`) REFERENCES `account_role` (`id_account_role`);

--
-- Constraints for table `customer_report`
--
ALTER TABLE `customer_report`
  ADD CONSTRAINT `customer_report_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`),
  ADD CONSTRAINT `customer_report_ibfk_2` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`);

--
-- Constraints for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD CONSTRAINT `invoice_detail_ibfk_1` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `invoice_detail_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `servicer` (`id`);

--
-- Constraints for table `pay`
--
ALTER TABLE `pay`
  ADD CONSTRAINT `pay_ibfk_1` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`id_status_project`) REFERENCES `project_status` (`id`);

--
-- Constraints for table `project_photo`
--
ALTER TABLE `project_photo`
  ADD CONSTRAINT `project_photo_ibfk_1` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`);

--
-- Constraints for table `servicer`
--
ALTER TABLE `servicer`
  ADD CONSTRAINT `servicer_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);

--
-- Constraints for table `service_photo`
--
ALTER TABLE `service_photo`
  ADD CONSTRAINT `service_photo_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `servicer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
