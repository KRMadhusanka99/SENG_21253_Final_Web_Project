-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2023 at 08:10 AM
-- Server version: 8.0.23
-- PHP Version: 7.4.26

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
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE IF NOT EXISTS `admin_table` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(2, 'Ramesh', 'ramesh@gmail.com', '$2y$10$.QOYmbWVyfmALh039NbFGOqqe5y7W2mwuIbAuu0rq9IWqZXMXOKPy'),
(3, 'Hashin', 'hashin@gmail.com', '$2y$10$0TqPMkGVHLNqLmZ/9QUBAeiigO4s8OQEI0kUeTNyhAEoA1/nxL832'),
(4, 'Vijitha', 'vijitha@gmail.com', '$2y$10$/pu4npTz4xf37/IlJh0RwuR5GmsZ3HNx7pPSTtcZk5jdQ3Fa23rLW');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_title` varchar(100) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Dell'),
(2, 'Asus'),
(3, 'Hp'),
(4, 'Lenovo'),
(5, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
CREATE TABLE IF NOT EXISTS `cart_details` (
  `product_id` int NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_title` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Laptop'),
(2, 'Desktop'),
(3, 'Keyboard'),
(4, 'Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

DROP TABLE IF EXISTS `orders_pending`;
CREATE TABLE IF NOT EXISTS `orders_pending` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `invoice_number` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `order_status` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(3, 5, 480268936, 2, 1, 'pending'),
(4, 5, 1435607297, 6, 1, 'pending'),
(5, 5, 149210411, 5, 1, 'pending'),
(6, 5, 744608480, 1, 1, 'pending'),
(7, 5, 1518386630, 1, 4, 'pending'),
(8, 5, 1690306197, 1, 1, 'pending'),
(9, 5, 35997529, 6, 1, 'pending'),
(10, 5, 1603562036, 6, 1, 'pending'),
(11, 5, 1291962108, 5, 1, 'pending'),
(12, 1, 1434539398, 4, 1, 'pending'),
(13, 1, 1424818669, 1, 2, 'pending'),
(14, 1, 619112947, 6, 1, 'pending'),
(15, 1, 1386787329, 1, 1, 'pending'),
(16, 1, 1201809878, 5, 1, 'pending'),
(17, 1, 1660711137, 3, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_price`, `date`, `status`) VALUES
(1, 'Asus Vivobook 15', 'VivoBook 15 features a dual-storage design to give you superfast data performance and exceptional storage capacity. The SSD offers superfast response and app ', 'vivobook, asus, laptop', 1, 2, 'asus vivo book 1.jpg', 'ausu vivobook 2.jfif', '1500000', '2023-01-17 20:27:00', 'true'),
(2, 'Dell Inspiron 5510 ', 'Product details of Dell Inspiron 5510 - i5 11th Gen/8GB Ram/512GB SSD NVME/15.6 FHD Display/ Win 10Home + Office Home', 'Dell, Inspiron, i5, 8Gen', 1, 1, 'dell inspiron 1.jfif', 'dell inspiron 2.jpg', '323500', '2023-01-08 07:57:01', 'true'),
(3, 'HP - 15ef1013dx 15.6 Inches', 'Product details of HP - 15ef1013dx 15.6 Inches FHD Touch Display ( AMD Ryzen 3 3250U ) 8GB DDR4 512GB SSD - Win 10 Home', 'HP, Laptop, SD, 5GB', 1, 3, 'hp 1.jfif', 'hp2.jpg', '207050', '2023-01-08 08:00:33', 'true'),
(4, 'Lenovo Lenovo V15 G2', 'Model – Lenovo V15 G2 Business Laptop  Processor – Intel® Core™ i5 11th Gen Processor  Memory – 8GB DDR4 Ram', 'Lenovo, v15, SSd', 1, 4, 'lenovo1.jfif', 'lenovo2.jfif', '240000', '2023-01-08 09:37:50', 'true'),
(5, 'Dell Branded Genuine USB Keyboard', 'SKU106700591_LK-1014616759ModelKB 216Warranty Policy EN1 Year Warranty', 'DELL, Keyboard, USB', 3, 1, 'dellkey1.jfif', 'dellkey2.jfif', '1900', '2023-01-08 14:49:35', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
CREATE TABLE IF NOT EXISTS `user_orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amount_due` int NOT NULL,
  `invoice_number` int NOT NULL,
  `total_products` int NOT NULL,
  `order_date` timestamp NOT NULL,
  `order_status` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(9, 5, 400970, 35997529, 1, '2023-01-18 16:22:00', 'Complete'),
(10, 5, 400970, 1603562036, 1, '2023-01-18 16:28:58', 'Complete'),
(11, 5, 1900, 1291962108, 1, '2023-01-18 16:33:10', 'pending'),
(12, 1, 240000, 1434539398, 1, '2023-01-19 04:52:03', 'Complete'),
(13, 1, 3000000, 1424818669, 1, '2023-01-19 04:55:26', 'Complete'),
(14, 1, 400970, 619112947, 1, '2023-01-19 04:57:23', 'Complete'),
(15, 1, 1500000, 1386787329, 1, '2023-01-19 05:05:11', 'pending'),
(16, 1, 1900, 1201809878, 1, '2023-01-19 05:14:23', 'Complete'),
(17, 1, 530550, 1660711137, 2, '2023-02-14 05:23:53', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

DROP TABLE IF EXISTS `user_payments`;
CREATE TABLE IF NOT EXISTS `user_payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `invoice_number` int NOT NULL,
  `amount` int NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(2, 3, 480268936, 323500, 'Paypal', '2023-01-17 15:53:36'),
(3, 4, 1435607297, 400970, 'Cash on Delivery', '2023-01-17 15:59:06'),
(4, 5, 149210411, 1900, 'Netbanking', '2023-01-17 15:59:28'),
(5, 6, 744608480, 1500000, 'Cash on Delivery', '2023-01-18 05:04:27'),
(6, 7, 1518386630, 6000000, 'Cash on Delivery', '2023-01-18 07:18:55'),
(7, 8, 1690306197, 1500000, 'Cash on Delivery', '2023-01-18 16:20:05'),
(8, 9, 35997529, 400970, 'Paypal', '2023-01-18 16:22:14'),
(10, 13, 1424818669, 3000000, 'Cash on Delivery', '2023-01-19 04:55:46'),
(11, 12, 1434539398, 240000, 'Cash on Delivery', '2023-01-19 04:56:36'),
(12, 14, 619112947, 400970, 'Cash on Delivery', '2023-01-19 04:57:49'),
(13, 16, 1201809878, 1900, 'Cash on Delivery', '2023-01-19 05:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
CREATE TABLE IF NOT EXISTS `user_table` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_name`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'Ramesh', 'ramesh@gmail.com', '$2y$10$x.TiYp3ABf1Zicz/0LRr.u.bIX0wJBluJOdRIXexY3r8njV9p9K/u', 'ramesh.jpg', '::1', 'Galle', '118'),
(4, 'Hashin', 'hashin@gmail.com', '$2y$10$cyUn596y7bNijQ6DYnOeeu7G6tyKmHnJBRtHXDHODDl.tRBlgSkDa', 'hashin.jpeg', '::1', 'Matale', '117');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
