-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 03, 2024 at 04:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Arong'),
(2, 'Swapno'),
(3, 'pran'),
(4, 'richman'),
(5, 'little angels'),
(6, 'Kitkat'),
(8, 'Rokomari'),
(9, 'BoiBazar'),
(10, 'Bata');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'fruits'),
(2, 'juices'),
(3, 'vegetables'),
(4, 'milk products'),
(5, 'Shirts'),
(6, 'Baby Products'),
(7, 'Chips'),
(8, 'Chocolates'),
(9, 'pants'),
(10, 'Books'),
(11, 'Shoes'),
(12, 'Sharee'),
(13, 'Panjabi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(1, 'shirt', 'Give yourself a perfect look', 'shirt,shirts', 5, 4, 'mens shirt.jpg', 'shirt_blue.jpg', 'shirt.jpg', '2000', '2023-04-07 17:37:19', 'true'),
(2, 'pants', 'Our quality will make you happy', 'pant, pants', 9, 4, 'black_pant.jpg', 'boot-cut-jeans-girls.jfif', 'jeans.jfif', '800', '2023-04-08 03:34:38', 'true'),
(5, 'Clips', 'Give your hair a new look', 'clip, clips', 6, 5, 'th (1).jpg', 'clips.jpg', 'clip.jpg', '100', '2023-04-08 03:46:02', 'true'),
(6, ' Mango Juice', 'Fresh mango juices from fresh mangoes', 'mango juice, juice', 2, 3, 'mango juice.jfif', 'mango_juices.jpg', 'juice_mango.jpg', '70', '2023-04-08 04:24:13', 'true'),
(7, 'fresh milk', 'Celebrate the goodness of milk', 'milk, fresh milk', 4, 1, 'pure milk.jpg', 'milk...jfif', 'aarong_milk.jpg', '50', '2023-04-08 04:32:53', 'true'),
(8, 'Vegetable', 'Garden fresh vegetables', 'vegetables, vegetable, fresh vegetable', 3, 2, 'fresh vegetables.jpg', 'vagetables.jfif', 'vege.jpg', '150', '2023-04-08 04:43:07', 'true'),
(9, 'Fresh mango', 'You will find our quality best', 'mango, green, green mango, mangoes, fresh mango, fruit, fruits', 1, 2, 'fresh mango.jfif', 'mango.jfif', 'mangoo.jpg', '150', '2023-05-18 03:50:11', 'true'),
(10, 'apple', 'Fresh apples that makes your heart happy', 'fresh apple, apple, apples, fruit, fruits ', 1, 2, 'apple.jfif', 'green apple.jpg', 'apple_.jpg', '250', '2023-05-18 03:50:38', 'true'),
(11, 'Frock', 'Collect the best outfit for your baby', 'frocks, frock', 6, 5, 'blue frock.jfif', 'baby frock.jfif', 'casual frock.jfif', '500', '2023-04-08 04:50:06', 'true'),
(13, 'Bangla Books', 'Find your best friends', 'book, books, bangla books', 10, 8, 'amar_ache_jol.jpg', 'shes_bikeler_meye.jpg', 'chokher bali.jpg', '180', '2023-04-09 15:04:00', 'true'),
(14, 'English Book', ' One of the biggest bookshops in the country', 'book, books, english book', 10, 9, 'and_the_mountains_echoed.jpg', 'leaving time.jpg', 'the_kite_runner.jpg', '250', '2023-04-09 15:12:38', 'true'),
(15, 'Capsicum', 'We will give you best products', 'capsicum, vegetables', 3, 2, 'capsicum.jfif', 'red capsicum.jfif', 'green capsicum.jpg', '80', '2023-04-09 15:16:17', 'true'),
(16, 'Chocolate', 'Snuggle up this Valentine’s Day and exchange chocolate treats.', 'chocolate, kitkat', 8, 6, 'kitkatt.jpg', 'kitkat.jpg', 'kitkat green.jpg', '300', '2023-04-09 16:06:48', 'true'),
(17, 'Chips', 'A wide range of PRAN chips & crackers taste delicious in exciting packages at reasonable prices.', 'chips', 7, 3, 'chipsss.jpeg', 'chips.jpg', 'chipss.jpg', '25', '2023-04-09 17:09:49', 'true'),
(18, 'Shoes', 'Love for your feet', 'shoes', 11, 10, 'black_shoes.jpg', 'pink_shoes.jpg', 'shoes.jpg', '700', '2023-04-09 17:34:37', 'true'),
(19, 'Baby Shoes', 'Love for your feet', 'baby shoes, shoes', 6, 5, 'baby_shoes_.jpg', 'personalised-baby-shoes---pink_a.jpg', 'vintage baby shoes 7.jpg', '500', '2023-04-10 11:07:04', 'true'),
(20, 'Watermelon Juice', 'Best food, best life', 'juice, watermelon, watermelon juice', 2, 3, 'watermelon juice.jpg', 'juice.jpg', 'watermelon.jpg', '70', '2023-04-10 11:11:47', 'true'),
(21, 'Smoothie', 'Smoothie bowls make a delicious and nutritious breakfast lunch or snack', 'smoothie, smoothies, juice, juices', 2, 1, 'dark.jpg', 'smoothie.jpg', 'smoothies-07.jpg', '120', '2023-04-10 11:17:11', 'true'),
(22, 'Sun glasses', 'Best quality', 'glass, glasses, sun glasses', 6, 5, 'sunglass1.jpg', 'glass.jpg', 'sun glass.jpg', '150', '2023-05-18 03:54:41', 'true'),
(23, 'Sharee', 'Best quality', 'sharee, shari, sari, saree', 12, 1, 'sharee panjabi.jpg', 'sharee g.jpg', 'ssss.jpg', '8000', '2023-05-18 06:19:59', 'true'),
(24, 'Panjabi', 'Best clothes beautiful life', 'panjabee, panjabi', 13, 1, 'panjabi.jpg', 'th (2).jpg', 'th.jpg', '700', '2023-05-18 06:24:36', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'aysha', 'aysha@gmail.com', '$2y$10$6flLLBgke9BE/MlJjOM73eA16YFMhkIg5P9Uw54a1cAa5D7dlN60q', 'th (1).jpg', '::1', 'uttara', '01744'),
(2, 'maysha', 'm@gmail.com', '$2y$10$ZNZpXC13X5ohfrDhM3AFWOrLD1mfNOVWFPdDm/Uefu2yZIMNtL.tC', 'th (1).jpg', '::1', 'mirpur', '87637263');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
