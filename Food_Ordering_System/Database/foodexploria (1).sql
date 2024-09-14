-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 07:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodexploria`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `first_name`, `middle_name`, `last_name`, `email`, `contact`, `address`, `password`) VALUES
('Cocosp', 'Coco', 'Rick', 'Spencer', 'coco.spencer@gmail.com', '1234567890', 'Pune', 'cocosp'),
('dikshita069', 'Dikshita', 'Rakesh', 'Patel', 'dikshitapatel99@hotmail.com', '5432895432', 'Mumbai', 'dikshita'),
('janice048', 'Janice', 'Prakash', 'Shah', 'janice.shah@soit.ac.in', '8932458762', 'Chennai', 'janice'),
('jsc2412', 'Jignasa', 'Shailesh', 'Chhatbar', 'jignasa.chhatbar76@gmail.com', '4567823456', 'Mumbai', '123vidhi'),
('nidha', 'trsss', 'rsdjd', 'Khan', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('niti050', 'Niti', 'Bhavesh', 'Shah', 'niti.shah@spit.ac.in', '4367894321', 'Mumbai', 'niti'),
('Rakesh79', 'Rajesh', 'Nakul', 'Shah', 'rakesh.nshah@gmail.com', '5478903215', 'Delhi', 'rakesh'),
('Ram200', 'Ram', 'Deepak', 'Khan', 'ram.khan@gmail.com', '1234567890', 'Hyderabad', 'ram200'),
('rb', 'riya', 'manish', 'bhagat', 'riya.bhagat@spit.ac.in', '123456789', 'd', 'guyft'),
('riya99', 'Riya', 'Manish', 'Bhagat', 'riya.bhagat@spit.ac.in', '2942111345', 'Mumbai', 'riya'),
('shailesh', 'shailesh', 'harkishan', 'chhatbar', 'shailesh.hc@rediffmail.com', '9870248304', 'malad', 'sha0909'),
('shailesh.hc', 'shailesh', 'harkishan', 'chhatbar', 'shailesh.hc@rediffmail.com', '9870248304', 'malad', 'shc0909'),
('vidhi001', 'Vidhi', 'Shailesh', 'Chhatbar', 'vidhi.chhatbar@gmail.com', '8124456577', 'Mumbai', 'vidhi'),
('vrinda002', 'Vrinda', 'Kanchan', 'Bhatu', 'vrindabhatu@gmail.com', '4576326824', 'Mumbai', 'vrinda'),
('xyzqwe', 'mdskld', 'cmasklcmas', 'casknasko', 'vidhi.chhatbar@spit.com', '1234567809', 'skcmasm', '12345'),
('yashvi010', 'Yashvi', 'Kunal', 'Desai', 'yashvi.desai@spit.ac.in', '8943245678', 'Pune', 'yashvi');

--
-- Triggers `customer`
--
DELIMITER $$
CREATE TRIGGER `tr` AFTER INSERT ON `customer` FOR EACH ROW BEGIN
  DECLARE username varchar(30);
  SELECT c.email into username from customer c where c.email=new.email;
 
    IF (new.email!=username)
    THEN
    DELETE FROM customer WHERE customer.email=new.email;
    END IF;
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_no` int(11) NOT NULL,
  `ddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_no`, `ddate`) VALUES
(2, '2019-04-14'),
(3, '2019-04-14'),
(4, '2019-04-14'),
(5, '2019-04-14'),
(6, '2019-04-14'),
(7, '2019-04-14'),
(8, '2019-04-14'),
(9, '2019-04-14'),
(10, '2019-04-14'),
(11, '2019-04-14'),
(12, '2019-04-14'),
(13, '2019-04-14'),
(14, '2019-04-14'),
(15, '2019-04-14'),
(16, '2019-04-14'),
(17, '2019-04-14'),
(18, '2019-04-14'),
(19, '2019-04-16'),
(20, '2019-04-16'),
(21, '2019-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `offer_price` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `offer_price`, `description`, `R_ID`, `images_path`) VALUES
(58, 'Juicy Masala Paneer Kathi Roll', 40, 40, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/Masala_Paneer_Kathi_Roll.jpg'),
(59, 'Meurig Fish', 60, 60, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/Meurig.jpg'),
(60, 'Chocolate', 210, 200, 'chocolate.....loving..yummmyyyyyyyyyyyyyyyy....healthyyyyyy have it once and fall in love with it', 3, 'images/Chocolate_Hazelnut_Truffle.jpg'),
(61, 'Happy Happy Choco Chip Shake', 80, 60, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg'),
(62, 'Spring Rolls', 65, 60, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg'),
(86, 'Baahubali Thali', 200, 170, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan');

-- --------------------------------------------------------

--
-- Stand-in structure for view `orderdetails`
-- (See below for the actual view)
--
CREATE TABLE `orderdetails` (
`order_ID` int(30)
,`F_ID` int(30)
,`foodname` varchar(30)
,`offer_price` int(30)
,`quantity` int(30)
,`order_date` date
,`username` varchar(30)
,`R_ID` int(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `offer_price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `offer_price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 60, 'Chocolate Hazelnut Truffle', 200, 1, '2019-03-30', 'Cocosp', 3),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-30', 'Cocosp', 1),
(3, 60, 'Chocolate Hazelnut Truffle', 200, 1, '2019-03-30', 'Cocosp', 3),
(4, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-30', 'Cocosp', 1),
(5, 59, 'Meurig Fish', 900, 1, '2019-04-02', 'Cocosp', 2),
(6, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-02', 'Cocosp', 1),
(7, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-09', 'Cocosp', 1),
(8, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(9, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(10, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(11, 59, 'Meurig Fish', 900, 1, '2019-04-09', 'Cocosp', 2),
(12, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(13, 59, 'Meurig Fish', 900, 1, '2019-04-09', 'Cocosp', 2),
(14, 59, 'Meurig Fish', 900, 1, '2019-04-09', 'Cocosp', 2),
(15, 59, 'Meurig Fish', 900, 1, '2019-04-09', 'nidha', 2),
(16, 62, 'Spring Rolls', 900, 1, '2019-04-09', 'Cocosp', 2),
(17, 59, 'Meurig Fish', 900, 1, '2019-04-09', 'nidha', 2),
(18, 62, 'Spring Rolls', 900, 1, '2019-04-09', 'nidha', 2),
(19, 62, 'Spring Rolls', 900, 1, '2019-04-09', 'Ram200', 2),
(20, 86, 'Baahubali Thali', 170, 1, '2019-04-09', 'Ram200', 3),
(21, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'jsc2412', 1),
(22, 60, 'Chocolate', 200, 1, '2019-04-12', 'jsc2412', 3),
(23, 62, 'Spring Rolls', 900, 1, '2019-04-12', 'shailesh', 2),
(24, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'Cocosp', 1),
(25, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'Cocosp', 1),
(26, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'Cocosp', 1),
(27, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(28, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-14', 'nidha', 1),
(29, 59, 'Meurig Fish', 900, 3, '2019-04-14', 'nidha', 2),
(30, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(31, 60, 'Chocolate', 200, 1, '2019-04-14', 'nidha', 3),
(32, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(33, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(34, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(35, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(36, 60, 'Chocolate', 200, 3, '2019-04-14', 'nidha', 3),
(37, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(38, 60, 'Chocolate', 200, 3, '2019-04-14', 'nidha', 3),
(39, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(40, 60, 'Chocolate', 200, 2, '2019-04-14', 'nidha', 3),
(41, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-14', 'nidha', 1),
(42, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(43, 60, 'Chocolate', 200, 1, '2019-04-14', 'nidha', 3),
(44, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-14', 'nidha', 1),
(45, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(46, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'riya99', 2),
(47, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'nidha', 2),
(48, 60, 'Chocolate', 200, 1, '2019-04-14', 'riya99', 3),
(49, 60, 'Chocolate', 200, 1, '2019-04-14', 'riya99', 3),
(50, 62, 'Spring Rolls', 900, 1, '2019-04-14', 'riya99', 2),
(51, 62, 'Spring Rolls', 900, 1, '2019-04-14', 'riya99', 2),
(52, 62, 'Spring Rolls', 900, 1, '2019-04-14', 'riya99', 2),
(53, 60, 'Chocolate', 200, 1, '2019-04-14', 'riya99', 3),
(54, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'riya99', 2),
(55, 62, 'Spring Rolls', 900, 1, '2019-04-14', 'riya99', 2),
(56, 59, 'Meurig Fish', 900, 1, '2019-04-14', 'riya99', 2),
(57, 86, 'Baahubali Thali', 170, 2, '2019-04-14', 'nidha', 3),
(58, 61, 'Happy Happy Choco Chip Shake', 60, 4, '2019-04-14', 'riya99', 1),
(59, 62, 'Spring Rolls', 900, 1, '2019-04-16', 'riya99', 2),
(60, 62, 'Spring Rolls', 900, 1, '2019-04-16', 'riya99', 2),
(61, 60, 'Chocolate', 200, 1, '2019-04-16', 'riya99', 3),
(62, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-16', 'Cocosp', 1),
(63, 60, 'Chocolate', 200, 1, '2019-04-16', 'nidha', 3),
(64, 59, 'Meurig Fish', 60, 1, '2019-04-16', 'nidha', 2),
(65, 60, 'Chocolate', 200, 1, '2019-04-16', 'nidha', 3),
(66, 59, 'Meurig Fish', 60, 1, '2019-04-16', 'nidha', 2),
(67, 59, 'Meurig Fish', 60, 1, '2019-04-16', 'nidha', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_no` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `pdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_no`, `type`, `total`, `pdate`) VALUES
(1, 'onlinepay', 340, '2019-04-14'),
(2, 'cod', 240, '2019-04-14'),
(3, 'cod', 40, '2019-04-16'),
(4, 'onlinepay', 260, '2019-04-16'),
(5, 'cod', 60, '2019-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068');

-- --------------------------------------------------------

--
-- Structure for view `orderdetails`
--
DROP TABLE IF EXISTS `orderdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderdetails`  AS  select `orders`.`order_ID` AS `order_ID`,`orders`.`F_ID` AS `F_ID`,`orders`.`foodname` AS `foodname`,`orders`.`offer_price` AS `offer_price`,`orders`.`quantity` AS `quantity`,`orders`.`order_date` AS `order_date`,`orders`.`username` AS `username`,`orders`.`R_ID` AS `R_ID` from `orders` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_no`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_no`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
