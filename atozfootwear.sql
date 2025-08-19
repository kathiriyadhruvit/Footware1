-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2025 at 06:53 PM
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
-- Database: `atozfootwear`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(30) NOT NULL,
  `p_id` int(20) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `size` varchar(5) NOT NULL,
  `price` float(10,2) NOT NULL,
  `qty` int(3) NOT NULL,
  `total` float(20,2) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `p_id`, `images`, `title`, `size`, `price`, `qty`, `total`, `Name`) VALUES
(1, 102, 'kids_4.webp', 'pooma', 'S', 1200.00, 1, 1200.00, ''),
(2, 111, 'SM-852-BKGN-1.webp', '12', 'S', 1250.00, 1, 1250.00, ''),
(3, 111, 'SM-852-BKGN-1.webp', '12', 'S', 1250.00, 1, 1250.00, ''),
(4, 111, 'SM-852-BKGN-1.webp', '12', 'S', 1250.00, 1, 1250.00, ''),
(5, 111, 'SM-852-BKGN-1.webp', '12', 'S', 1250.00, 1, 1250.00, ''),
(6, 102, 'kids_4.webp', 'pooma', 'S', 1200.00, 1, 1200.00, ''),
(7, 111, 'SM-852-BKGN-1.webp', '12', 'S', 1250.00, 1, 1250.00, ''),
(8, 111, 'SD0844G-PWGB-1.webp', 'Welcome', 'S', 1250.00, 1, 1250.00, ''),
(9, 6, '6.jpeg', 'BAESD Kids', 'S', 1450.00, 1, 1450.00, ''),
(10, 4, '2.webp', 'Pine kids', 'S', 1450.00, 1, 1450.00, ''),
(11, 0, '2.jpg', 'Nike shoes', 'S', 1211.00, 1, 1211.00, ''),
(12, 0, '', '', '', 0.00, 0, 0.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `check_out`
--

CREATE TABLE `check_out` (
  `p_id` int(30) NOT NULL,
  `images` varchar(255) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `size` varchar(5) NOT NULL,
  `price` float(10,2) NOT NULL,
  `qty` int(3) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total` float(10,2) NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `check_out`
--

INSERT INTO `check_out` (`p_id`, `images`, `p_name`, `size`, `price`, `qty`, `address`, `total`, `payment_method`, `status`) VALUES
(1, 'women_1.webp', 'Treading', 'S', 1800.00, 1, 'Kalwa', 1800.00, 'Cash on Delivery', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(30) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile_No` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `Name`, `Email`, `Mobile_No`) VALUES
(1, 'Fenil Kathiriya', 'dhruvitkathiriya2005@gmail.com', '0926534483'),
(2, 'Dhruvit Kathiriya', 'dhruvitkathiriya2005@gmail.com', '9265344835'),
(3, 'kano', 'ka11@gmail.com', '1234567890'),
(4, 'Dhruvit Kathiriya', 'dhruvitkathiriya2005@gmail.com', '9265344835'),
(5, 'Dhruvit Kathiriya', 'dhruvitkathiriya2005@gmail.com', '9265344835');

-- --------------------------------------------------------

--
-- Table structure for table `female_product`
--

CREATE TABLE `female_product` (
  `p_id` int(30) NOT NULL,
  `title` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(60) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `female_product`
--

INSERT INTO `female_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(1, 'Redtape', 'female', 'Comfi-zone Lightweight woomen', 1290.00, 'women_3.webp'),
(2, 'Echor', 'female', 'Fabbmate Thick Heel Sports Shoes woomen color black', 1400.00, 'women_4.webp'),
(3, 'Fabbmate.', 'male', 'Fabbamate casual shoes woomen ', 890.00, 'women_2.webp'),
(4, 'qqq', 'Athleisure', 'good', 121.00, 'SC0322G-BKGY-1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `kids_product`
--

CREATE TABLE `kids_product` (
  `p_id` int(30) NOT NULL,
  `title` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kids_product`
--

INSERT INTO `kids_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(1, 'ADIDAS KID', 'kids', 'Adidas Kids School-Shoes', 1231.00, '3.webp'),
(2, 'Nike Kids ', 'Running', 'Pine Kids Sneaker with Lace up', 900.00, '1.jpg'),
(3, 'Pine kids', 'Running', 'Pine Kids Velcro Closure Casua', 1450.00, '2.webp'),
(4, 'Kids Shoes', 'Running', 'NEOBABY Unisex Kids gray Print', 890.00, '4.jpg'),
(5, 'BAESD Kids', 'Running', 'A pair of round toe teal textu', 1450.00, '6.jpeg'),
(6, 'Pine Kids', 'Running', 'Slip On Hike Shoes - Black', 1350.00, '7.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(6) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `Name`, `Password`, `Type`) VALUES
(1, 'Admin', '12345', 'Admin'),
(2, 'Dhruvit Kathiriya', '123456', 'client'),
(3, 'Dhruvit Kathiriya', '121212', 'client'),
(4, 'Dhruvit Kathiriya', '121212', 'client'),
(5, 'Dhruvit Kathiriya', '111111', 'client');

-- --------------------------------------------------------

--
-- Table structure for table `male_product`
--

CREATE TABLE `male_product` (
  `p_id` int(30) NOT NULL,
  `title` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `male_product`
--

INSERT INTO `male_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(1, 'Welcome', 'male', 'hello', 1250.00, 'SD0844G-PWGB-1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `review_data`
--

CREATE TABLE `review_data` (
  `id` int(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Mobile_No` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Message` varchar(50) NOT NULL,
  `Review` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_data`
--

INSERT INTO `review_data` (`id`, `Name`, `Mobile_No`, `Email`, `Message`, `Review`) VALUES
(1, 'Dhruvit kathiriya', 1234567890, 'f11@gmail.com', 'good', '2'),
(2, 'Dhruvit kathiriya', 1234567890, 'f11@gmail.com', 'good', '2'),
(3, 'Dhruvit kathiriya', 1234567890, 'f11@gmail.com', 'good', '2'),
(4, 'Dhruvit kathiriya', 1234567890, 'f11@gmail.com', 'good', '2'),
(5, 'kano kathiriya', 1234567890, 'a11@gmail.com', 'good', '1'),
(6, 'kano kathiriya', 1234567890, 'a11@gmail.com', 'good', '1'),
(7, 'kano kathiriya', 1234567890, 'a11@gmail.com', 'good', '5');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `user_id` int(30) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Password` varchar(6) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Mobile_No` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`user_id`, `Name`, `Password`, `Address`, `Mobile_No`, `Email`, `Gender`, `Type`) VALUES
(1, 'Dhruvit Kathiriya', '123456', 'Kalwa Choak Junagadh', '2147483647', '', 'male', 'user'),
(2, 'Dhruvit Kathiriya', '121212', 'Kalwa Choak Junagadh', '2147483647', '', 'male', 'user'),
(3, 'Dhruvit Kathiriya', '121212', 'Kalwa Choak Junagadh', '9265344835', '', 'male', 'user'),
(4, 'Dhruvit Kathiriya', '111111', 'Kalwa Choak Junagadh', '9265344835', '', 'male', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `treading_product`
--

CREATE TABLE `treading_product` (
  `p_id` int(30) NOT NULL,
  `title` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treading_product`
--

INSERT INTO `treading_product` (`p_id`, `title`, `category`, `description`, `price`, `images`) VALUES
(1, 'Nike shoes', 'Male', 'Galaxis Pro Men\'s Performance ', 1211.00, '2.jpg'),
(2, 'Nike Running', 'male', 'goods in imagess', 1200.00, 'SD0844G-PWGB-1.webp'),
(3, 'Treading', 'Female', 'This Product is Full Treanding', 1800.00, 'women_1.webp\r\n'),
(4, 'Treanding', 'Male', 'Footwear is Full Treandin', 1500.00, 'sandale_1.webp'),
(5, 'Kid\'s Nike Shoes ', 'male', 'Court Shatter Low Sneakers', 1230.00, '1.webp'),
(6, 'men\'s pooma ', 'male', 'Skyrocket Lite Men\'s Running S', 2750.00, 'lofer_1.png'),
(7, 'Meturo senja ', 'male', 'Softride Rift Swift Kicks Kids', 3000.00, '3.jpg'),
(8, 'Nike shoes kids', 'male', 'Softride Rift Swift Kicks Kids', 2000.00, '4.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `check_out`
--
ALTER TABLE `check_out`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `female_product`
--
ALTER TABLE `female_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `kids_product`
--
ALTER TABLE `kids_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `male_product`
--
ALTER TABLE `male_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `review_data`
--
ALTER TABLE `review_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `treading_product`
--
ALTER TABLE `treading_product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `check_out`
--
ALTER TABLE `check_out`
  MODIFY `p_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `female_product`
--
ALTER TABLE `female_product`
  MODIFY `p_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kids_product`
--
ALTER TABLE `kids_product`
  MODIFY `p_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `male_product`
--
ALTER TABLE `male_product`
  MODIFY `p_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_data`
--
ALTER TABLE `review_data`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `treading_product`
--
ALTER TABLE `treading_product`
  MODIFY `p_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
