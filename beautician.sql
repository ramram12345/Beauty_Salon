-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2019 at 06:19 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beautician`
--

-- --------------------------------------------------------

--
-- Table structure for table `beautician`
--

CREATE TABLE `beautician` (
  `beautician_id` int(10) NOT NULL,
  `beautician_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `beautician_card_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `beautician_birth` date NOT NULL,
  `beautician_sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `beautician_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `beautician_phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beautician`
--

INSERT INTO `beautician` (`beautician_id`, `beautician_name`, `beautician_card_id`, `beautician_birth`, `beautician_sex`, `beautician_address`, `beautician_phone`) VALUES
(29, 'สุกัญญา  รอดชีวา', '1235142345654', '2019-07-01', 'ชาย', '11 หมู่ 5 ต.พะงาด อ.ขามสะแกแสง จ.นครราชสีมา 30290 ', '0987896543'),
(37, 'ทิพวรรณ  บุญเพิ่มพูล12', '1305465432234', '2019-07-23', 'หญิง', '123 ม.5 ต.เมือง', '0986545567'),
(36, 'ทิพวรรณ  บุญเพิ่มพูล', '1305465432234', '1996-05-04', 'หญิง', '123 ม.5 ต.เมือง', '0986545567'),
(53, 'ทิพวรรณ  บุญเพิ่มพูล', '1305465432234', '0000-00-00', 'หญิง', '123 ม.5 ต.เมือง', '0986545567');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_amount` int(10) NOT NULL,
  `product_type_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_amount`, `product_type_id`) VALUES
(35, 'สบู่รัก', 260, 30, 11),
(34, 'ครีมบำลุงผม', 0, 0, 3),
(33, 'ครีมบำลุงผม', 0, 0, 3),
(32, 'ครีมบำลุงผม', 0, 0, 3),
(37, 'แปรงขัดเล็บ', 50, 20, 11),
(26, 'สบ', 260, 3, 0),
(27, 'ยาสระผม', 260, 1, 0),
(29, 'ครีมบำรุงผม', 150, 20, 3),
(36, 'น้ำยาทาเล็บ', 100, 20, 11);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `Product_Detail_id` int(10) NOT NULL,
  `Product_Detail_Price` float NOT NULL,
  `Product_Detail_Amount` int(10) NOT NULL,
  `Product_Detail_Total` int(10) NOT NULL,
  `Product_id` int(10) NOT NULL,
  `beautician_id` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `product_type_id` int(10) NOT NULL,
  `product_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `product_type_name`) VALUES
(3, 'ประเภทบำรุงเส้นผม'),
(13, 'ประเภทบำรุงเส้นผม1'),
(12, 'ประเภทบำรุงใบหน้า'),
(11, 'ประเภทเท้า'),
(15, 'ประเภทบำรุงเส้นผม1'),
(16, 'ประเภทบำรุงเส้นผม1'),
(20, 'ประเภทผิวกาย');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` int(10) NOT NULL,
  `services_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `services_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `services_name`, `services_price`) VALUES
(1, 'สระ/ไดร์', 150),
(2, 'ตัด/ซอย', 200),
(4, 'ดัด', 180),
(7, 'ทาเล็บ', 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Username`, `Password`, `Name`, `Status`) VALUES
(1, 'admin', '1234', 'ศรราม หวังใจกลาง', 'ADMIN'),
(2, 'user', '1234', 'USER', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beautician`
--
ALTER TABLE `beautician`
  ADD PRIMARY KEY (`beautician_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`Product_Detail_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beautician`
--
ALTER TABLE `beautician`
  MODIFY `beautician_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `Product_Detail_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `product_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `services_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
