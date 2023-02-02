-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2023 at 11:20 PM
-- Server version: 10.5.17-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebazar_ecomerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(6, 'Mens Item', 'upload/category/category1669182245.jpg', '2022-11-23 04:44:05', '2022-11-23 05:00:15'),
(7, 'Womens Item', 'upload/category/category1669182356.jpg', '2022-11-23 04:45:56', '2022-11-23 05:00:23'),
(8, 'Kids item', 'upload/category/category1669183054.webp', '2022-11-23 04:57:34', '2022-11-23 04:59:52'),
(9, 'Exclusive', 'upload/category/category1669183151.png', '2022-11-23 04:59:11', '2022-11-23 04:59:11'),
(10, 'Toys', 'upload/category/category1669183329.webp', '2022-11-23 05:02:09', '2022-11-23 05:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`) VALUES
(1, 'eBazar11', 'fixed', '0.00', '0.00', '2022-12-13 06:46:03', '2022-12-20 12:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Polash', '01737115041', 'Dhaka', '2022-12-06 00:06:36', '2022-12-06 00:06:36'),
(2, 'Polash', '01737115041', 'Kurigram', '2022-12-06 00:07:27', '2022-12-06 00:07:27'),
(3, 'Asad', '111', 'Dhaka', '2022-12-06 00:26:53', '2022-12-06 00:26:53'),
(4, 'Prince', '222', 'Dhaka', '2022-12-06 00:29:37', '2022-12-06 00:29:37'),
(5, 'Ali', '333', 'gajipur', '2022-12-06 00:30:35', '2022-12-06 00:30:35'),
(6, 'Atiq', '444', 'ulipur', '2022-12-06 00:35:58', '2022-12-06 00:35:58'),
(7, 'tareq', '555', 'khulna', '2022-12-06 00:55:07', '2022-12-06 00:55:07'),
(8, 'sonjoy', '666', 'borisal', '2022-12-06 00:58:18', '2022-12-06 00:58:18'),
(9, 'Ashik', '777', 'lalmonihat', '2022-12-06 01:36:35', '2022-12-06 01:36:35'),
(10, 'tusar', '888', 'rajarhat', '2022-12-06 01:37:24', '2022-12-06 01:37:24'),
(11, 'Tuhin', '999', 'Roumari', '2022-12-06 01:37:56', '2022-12-06 01:37:56'),
(12, 'TEST', '01737115041', 'Dhanmondi', '2022-12-06 06:46:28', '2022-12-06 06:46:28'),
(13, 'Mohammad Shuvo', '01750637286', 'shakharia, dokkhin para', '2022-12-06 09:36:35', '2022-12-06 09:36:35'),
(14, 'Rashedul Alam', '01581525352', 'test', '2022-12-07 03:24:46', '2022-12-07 03:24:46'),
(15, 'Rahim', '09696158761', 'Dhaka', '2022-12-07 10:30:39', '2022-12-07 10:30:39'),
(16, 'Rony', '01710000000', 'Barishal', '2022-12-08 08:35:43', '2022-12-08 08:35:43'),
(17, 'MD ASRAFUL', '01911298304', 'ডেমরা  ঢাকা\r\n\r\n\r\n01911298304\r\n\r\n\r\n\r\n\r\n\r\n ডেমরা  আমোলিয়া ঢাকা', '2022-12-08 17:35:40', '2022-12-08 17:35:40'),
(18, 'Test Polash', '01737115041', 'Dhaka', '2022-12-11 05:05:40', '2022-12-11 05:05:40'),
(19, 'Polash Test', '01737115041', 'Pixel it', '2022-12-13 04:59:21', '2022-12-13 04:59:21'),
(20, 'Tulona', '01874606431', 'Pixelt it limited', '2022-12-13 05:53:49', '2022-12-13 05:53:49'),
(21, 'Polash', '00000', 'dhaka', '2022-12-13 06:45:36', '2022-12-13 06:45:36'),
(22, 'md milon mondol', '01919433798', 'dinespur', '2022-12-14 05:14:22', '2022-12-14 05:14:22'),
(23, 'Test', '01737115041', 'Dhaka', '2022-12-17 04:52:47', '2022-12-17 04:52:47'),
(24, 'নাম-নাইমুল ইসলাম', '01861092355', 'ঠিকানা-জয়দেবপুর বাস-স্টেশন, গাজীপুর।', '2022-12-17 12:40:51', '2022-12-17 12:40:51'),
(25, 'নাম-নাইমুল ইসলাম', '01861092355', 'ঠিকানা-জয়দেবপুর বাস-স্টেশন, গাজীপুর।', '2022-12-18 09:41:57', '2022-12-18 09:41:57'),
(26, 'asdasd', '5465454654654', '46546546464', '2022-12-18 09:52:57', '2022-12-18 09:52:57'),
(27, 'Test', '21111', 'dhaka', '2022-12-18 09:53:46', '2022-12-18 09:53:46'),
(28, 'Rayhan', '01557125468', 'Jessore', '2022-12-19 10:57:11', '2022-12-19 10:57:11'),
(29, 'Rayhan', '01557125468', 'Jessore', '2022-12-19 11:54:10', '2022-12-19 11:54:10'),
(30, 'Naimul Islam', '01861092355', 'Joydebpur Bus Stand,Gazipur', '2022-12-20 04:49:02', '2022-12-20 04:49:02'),
(31, 'MASUM BILLAH', '01689684524', 'KADERABAD HOUSING, DHAKA-1207', '2022-12-21 05:39:10', '2022-12-21 05:39:10'),
(32, 'Pixelit', '99999', 'Dhaka', '2022-12-22 05:31:25', '2022-12-22 05:31:25'),
(33, 'Limon', '01558996276', 'Dhaka', '2022-12-26 07:41:17', '2022-12-26 07:41:17'),
(34, 'Tasnova Iqbal', '01790470086', 'House 13b/road 75/ flat 1b/ Gulshan 2/Dhaka1212', '2023-01-01 12:45:24', '2023-01-01 12:45:24'),
(35, 'Habinur Rahaman', '01827735753', 'Barua khali, Dhaka, Bangladesh', '2023-01-06 04:41:16', '2023-01-06 04:41:16'),
(36, 'Ashraful Islam', '01883155047', 'Chottogram, Bangladesh', '2023-01-07 04:57:25', '2023-01-07 04:57:25'),
(37, 'Nirjhor', '01814156677', 'Mirpur 1,bisf colony', '2023-01-08 18:38:22', '2023-01-08 18:38:22'),
(38, 'Tasnova Iqbal', '01790470086', 'House no. 13b, road 75, gulshan 2 flat 1b Dhaka', '2023-01-13 03:09:38', '2023-01-13 03:09:38'),
(39, 'Ashraful Islam', '01883155047', 'Jafarabad , chottogram', '2023-01-15 05:01:41', '2023-01-15 05:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_15_090653_create_sessions_table', 1),
(7, '2022_11_15_105913_create_categories_table', 2),
(10, '2022_11_16_063429_create_products_table', 3),
(11, '2022_11_19_072213_create_customers_table', 4),
(12, '2022_11_19_090159_create_orders_table', 5),
(13, '2022_11_20_085401_create_order_details_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` double(11,2) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `order_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `payment_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_discount_price` double(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `shipping_total`, `delivery_address`, `order_status`, `order_date`, `order_timestamp`, `payment_status`, `payment_method`, `payment_amount`, `payment_date`, `payment_timestamp`, `transaction_id`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `created_at`, `updated_at`, `coupon_discount_price`) VALUES
(23, 17, 60.00, 60, 'ডেমরা  ঢাকা\r\n\r\n\r\n01911298304\r\n\r\n\r\n\r\n\r\n\r\n ডেমরা  আমোলিয়া ঢাকা', 'Complete', '2022-12-08', '1670457600', 'Complete', '1', 60, '2022-12-19', '1671408000', NULL, 'Complete', '2022-12-19', '1671408000', '2022-12-08 17:35:40', '2022-12-19 11:42:59', NULL),
(27, 20, 875.00, 60, 'Pixelt it limited', 'Complete', '2022-12-13', '1670889600', 'Complete', '1', 875, '2022-12-14', '1670976000', NULL, 'Complete', '2022-12-14', '1670976000', '2022-12-13 05:53:49', '2022-12-14 07:37:54', NULL),
(30, 22, 790.00, 120, 'dinespur', 'Complete', '2022-12-14', '1670976000', 'Complete', '1', 790, '2022-12-18', '1671321600', NULL, 'Complete', '2022-12-18', '1671321600', '2022-12-14 05:14:22', '2022-12-18 09:38:07', NULL),
(36, 29, 400.00, 120, 'Jessore', 'Processing', '2022-12-19', '1671408000', 'Processing', '1', 0, NULL, NULL, NULL, 'Processing', NULL, NULL, '2022-12-19 11:54:10', '2022-12-20 04:59:04', NULL),
(37, 30, 400.00, 120, 'Joydebpur Bus Stand,Gazipur', 'Complete', '2022-12-20', '1671494400', 'Complete', '1', 400, '2022-12-20', '1671494400', NULL, 'Complete', '2022-12-20', '1671494400', '2022-12-20 04:49:02', '2022-12-20 04:58:23', NULL),
(40, 34, 1050.00, 60, 'House 13b/road 75/ flat 1b/ Gulshan 2/Dhaka1212', 'Pending', '2023-01-01', '1672531200', 'Pending', '1', 0, NULL, NULL, NULL, 'Pending', NULL, NULL, '2023-01-01 12:45:24', '2023-01-01 12:45:24', NULL),
(41, 38, 1050.00, 60, 'House no. 13b, road 75, gulshan 2 flat 1b Dhaka', 'Pending', '2023-01-13', '1673568000', 'Pending', '1', 0, NULL, NULL, NULL, 'Pending', NULL, NULL, '2023-01-13 03:09:38', '2023-01-13 03:09:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(15, 27, 24, 'Dancing Duck', 'upload/product/product1669209030.jpg', 875, 1, '2022-12-13 05:53:49', '2022-12-13 05:53:49'),
(20, 30, 18, 'Transformer Robot Car For Kids', 'upload/product/product1670235962.jpg', 790, 1, '2022-12-14 05:14:23', '2022-12-14 05:14:23'),
(26, 36, 66, 'Body Trimmer Stretching Belt', 'upload/product/product1671004029.jpg', 400, 1, '2022-12-19 11:54:10', '2022-12-19 11:54:10'),
(27, 37, 66, 'Body Trimmer Stretching Belt', 'upload/product/product1671004029.jpg', 400, 1, '2022-12-20 04:49:02', '2022-12-20 04:49:02'),
(30, 40, 22, 'Talking Cat With Sensor', 'upload/product/product1669208567.jpg', 1050, 1, '2023-01-01 12:45:24', '2023-01-01 12:45:24'),
(31, 41, 22, 'Talking Cat With Sensor', 'upload/product/product1669208567.jpg', 1050, 1, '2023-01-13 03:09:38', '2023-01-13 03:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'about-us', '<h2 style=\"text-align: center; \">ই-বাজারে আপনাকে স্বাগতম</h2><p style=\"\">ই-বাজার হলো একটি প্রফেশনাল ই-কমার্স প্ল্যাটফর্ম। এখানে আমরা আপনাকে শুধুমাত্র আকর্ষণীয় এবং কোয়ালিটি পণ্য সরবরাহ করব, যা হবে আপনার মনের মতো আপনার চাহিদা মাফিক । নির্ভরযোগ্য এবং সেরা পণ্যের উপর ফোকাস সহ আপনাকে সেরা ই-কমার্স সেবা প্রদান করতে আমরা নিবেদিত। আমরা আমাদের স্বপ্নকে একটি ক্রমবর্ধমান অনলাইন ই-কমার্স ওয়েবসাইটে পরিণত করার জন্য কাজ করছি। আমরা আশা করি আপনি আমাদের ই-কমার্সকে ততটা উপভোগ করবেন যতটা আমরা আপনাকে সেরা পণ্য এবং সেবা অফার করে যাবো ।</p><p style=\"\">আমরা আমাদের ওয়েবসাইটে আরও&nbsp;নিত্য নতুন পণ্য পোস্ট করতে থাকব। আপনার সমর্থন এবং ভালবাসা কামনা করি.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \"><b>আপনার দিনটি শুভ হোক!</b></p>', '2022-12-04 23:33:58', '2022-12-07 10:33:44'),
(7, 'Order and Returns', 'order-and-returns', '<h2 style=\"text-align: center;\">আমরা ই-বাজার এ বিক্রি হওয়া পণ্যের উপর ৭ দিনের রিপ্লেসমেন্ট গ্যারান্টি দিয়ে থাকি।</h2><p><br></p><p><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">রিপ্লেসমেন্ট শর্ত:</font></b></p><ul><li>রিপ্লেসমেন্টের অনুরোধ ডেলিভারি পাওয়ার 24 ঘন্টার মধ্যে করতে হবে।</li><li>পণ্যের পাকিং অবশ্যই ইন্ট্যাক্ট থাকতে হবে।&nbsp;</li></ul><p><br></p><p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><b>রিটার্নের শর্ত:</b></font></p><ul><li>পণ্যের চালান/রিসিট অবশ্যই থাকতে হবে</li><li>পণ্যটি অবশ্যই অব্যবহৃত, পরিধানহীন, ধোয়াহীন এবং কোনো ত্রুটি ছাড়াই হতে হবে।</li><li>পণ্যটিতে অবশ্যই প্রাইস ট্যাগ, ব্যবহারকারীর ম্যানুয়াল, ওয়ারেন্টি কার্ড, বিনামূল্যের জিনিসপত্র এবং আনুষাঙ্গিক অন্তর্ভুক্ত থাকতে হবে</li></ul><p><br></p><p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><b>একটি আইটেম ফেরত দেওয়ার বৈধ শর্ত এবং কারণ:</b></font></p><ul><li>ভুল পণ্য ডেলিভারি</li><li>ত্রুটিপূর্ণ পণ্যের ডেলিভারি</li><li>অনুপস্থিত যন্ত্রাংশ/অংশ সহ পণ্যের ডেলিভারি</li><li>ওয়েবসাইটে ভুল কন্টেন্ট</li></ul><p>যদি আপনার পণ্যটি ফেরতের জন্য যোগ্য হয়, আপনি আপনার পছন্দের অর্থ ফেরতের পদ্ধতি যেমন বিকাশ, রকেট বা ব্যাঙ্ক অ্যাকাউন্ট বেছে নিতে পারেন।</p><p><br></p><p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><b>রিফান্ড এর সময়কাল:</b></font><br></p><p>একটি ফেরত সম্পূর্ণ করার জন্য প্রয়োজনীয় সময় নির্ভর করে আপনি যে রিফান্ড পদ্ধতি বেছে নিয়েছেন তার উপর।</p><p>একবার আমরা আপনার পণ্যটি পেয়ে গেলে (২-৩ কার্যদিবস) এবং এটি একটি গুণমান নিয়ন্ত্রণ (১-২ কার্যদিবস) এর মধ্য দিয়ে যায়।</p><p>প্রত্যাশিত ফেরত প্রক্রিয়াকরণের সময় ৬-৭ ব্যবসায়িক দিন।</p>', '2022-12-05 12:08:08', '2022-12-12 07:27:40'),
(8, 'Contact Us', 'contact-us', '<h3 style=\"text-align: center;\">আমাদের সাথে যোগাযোগ করুন নিচে দেয়া&nbsp; তথ্যের মাধ্যমে:</h3><p style=\"text-align: left;\">ই বাজার বাংলাদেশের একটি সিলেক্টিভ পণ্যের ই কমার্স প্রতিষ্ঠান যেখানে আপনি শুধু মাত্র বেস্ট এবং ট্রেন্ডিং পণ্যগুলো পাবেন। ইবাজার আপনাকে পণ্য ক্যাশ অন ডেলিভারি দিবে (পণ্য হাতে পাওয়ার পর টাকা )।</p><p style=\"text-align: left;\"><br></p><p style=\"text-align: left;\">🏠5th floor, ADDL Tower, 67/B Shankar Bus stand,</p><p style=\"text-align: left;\">&nbsp; &nbsp; Dhanmondi-27, Dhaka,1209</p><p style=\"text-align: left;\">📧ebazarofficials@gmail.com,</p><p style=\"text-align: left;\">&nbsp; &nbsp; &nbsp; info@ebazar.com.bd</p><p style=\"text-align: left;\">&nbsp;📞 01409-367310</p>', '2022-12-05 12:08:25', '2022-12-07 10:45:35'),
(10, 'Privacy Policy', 'privacy-policy', '<p>এই নিরাপত্তা কৌশলটি নির্ধারণ করে যে কিভাবে ইবাজার সাইটটি ব্যবহার করার সময় এখানে দেওয়া যেকোনো সুরক্ষা করে।</p><p><br></p><p>আমরা আপনার সুরক্ষার নিরাপত্তাকে গুরুত্ব সহকারে দেখি। আমরা এখানে আপনার সুরক্ষার গ্যারান্টির উপর দৃষ্টি নিবদ্ধ করছি। আপনার ডেটা এই সুরক্ষা ঘোষণা অনুসারে আমরা আপনার সঠিক তথ্য আশা করছি যেকোনো পণ্য আপনার কাছে পৌঁছে দেয়ার জন্য।&nbsp;</p><p><br></p><p>eBazar এ যোগদান এবং অনুরোধ করার সময় আপনি একটি উল্লেখযোগ্য টেলিফোন নম্বর লিখবেন বলে আশা করা হবে। আমাদের সাথে আপনার টেলিফোন নম্বর নথিভুক্ত করার মাধ্যমে, আপনি যেকোন অনুরোধ বা পরিবহন সম্পর্কিত রিফ্রেশের ক্ষেত্রে কল এবং এসএমএসের মাধ্যমে আমাদের কাছ থেকে যেকোনো তথ্য জানতে পারবেন।</p><p><br></p><p>eBazar কোনো সীমিত সময়ের কল বা SMS শুরু করতে আপনার নিজস্ব ডেটা ব্যবহার করবে না। আমরা আপনার ডেটা পিসিতে সঞ্চয় এবং সাইকেল করি যা শারীরিক এবং সেইসাথে বুদ্ধিমান যান্ত্রিক নিরাপত্তা প্রচেষ্টা দ্বারা সুরক্ষিত।</p><p><br></p><p>eBazar এই পৃষ্ঠাটি রিফ্রেশ করে প্রয়োজনে এই সুরক্ষা কৌশলটি বারবার পরিবর্তন করতে পারে।</p>', '2022-12-07 10:19:20', '2022-12-07 10:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `pagetwos`
--

CREATE TABLE `pagetwos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetwos`
--

INSERT INTO `pagetwos` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Customer Reviews', 'customer-reviews', '<p><span style=\"font-size: 13px;\">Customer Reviews</span><span style=\"background-color: transparent; font-size: 13px;\">Customer Reviews</span><span style=\"background-color: transparent; font-size: 13px;\">Customer Reviews</span><br></p>', '2022-12-07 09:46:17', '2022-12-07 09:46:17'),
(6, 'Our Blog', 'our-blog', '<p><span style=\"font-size: 13px;\">Our Blog</span><span style=\"background-color: transparent; font-size: 13px;\">Our Blog</span><span style=\"background-color: transparent; font-size: 13px;\">Our Blog</span><br></p>', '2022-12-07 09:46:34', '2022-12-07 09:46:34'),
(7, 'FAQs', 'faqs', '<p><span style=\"font-size: 13px;\">FAQs</span><span style=\"background-color: transparent; font-size: 13px;\">FAQs</span><span style=\"background-color: transparent; font-size: 13px;\">FAQs</span><span style=\"background-color: transparent; font-size: 13px;\">FAQs</span><br></p>', '2022-12-07 09:46:54', '2022-12-07 09:46:54'),
(8, 'Delivery information', 'delivery-information', '<p><span style=\"font-size: 13px;\">Delivery information</span><span style=\"background-color: transparent; font-size: 13px;\">Delivery information</span><span style=\"background-color: transparent; font-size: 13px;\">Delivery information</span><br></p>', '2022-12-07 09:47:15', '2022-12-07 09:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regularprice` int(11) NOT NULL,
  `sellingprice` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchaseprice` int(11) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `stock_amount` int(11) DEFAULT NULL,
  `parcent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `regularprice`, `sellingprice`, `created_at`, `updated_at`, `purchaseprice`, `category_id`, `long_description`, `status`, `stock_amount`, `parcent`) VALUES
(16, 'Bubble Gun', 'upload/product/product1669554775.jpg', '<div>-Hundreds of bubbles in just one press!</div><div><br></div><div>-Birthday, Wedding, or even in picnic, It\'s the perfect gift item for entertainment.</div><div><br></div><div>-Not only kids. Even elders will have fun playing with it.</div><div><br></div><div>-Small Kids will be excited to make bubbles. Rather, You Can gift it to someone you love.</div><div><br></div>', 650, 450, '2022-11-22 12:05:25', '2022-12-11 05:13:15', 160, 10, '<p>বাচ্চারা ২,১ টা বাবল ফুলতে দেখলেই খুশিতে লাফাতে থাকে। আর ভাবুন তো এক চাপে যখন শত শত বাবল তৈরি হবে তখন তাদের খুশি কেমন হবে?</p><p>যে কোন জন্মদিন, বিবাহ এবং পিকনিক রিসোর্টে মজা করার জন্য গিফট করার পারফেক্ট একটি আইটেম হল এটি ।<br></p><p>শুধু ছোট বাচ্চা নয়, ছোট বড় সবাই এটি পেয়ে খুশি হবে । বাচ্চাদের মুখে হাসি ফুটবেই সাথে পছন্দের কাউকে উপহার হিসেবে দিতে পারবেন ।<br></p><p>&nbsp;আমাদের দেয়া লিকুইড শেষ হয়ে গেলে, আপনি শ্যাম্পু এবং পানি মিশিয়ে লিকুইড বানিয়ে ব্যবহার করতে পারবেন ।&nbsp;&nbsp;<br></p><p>&nbsp;বাবল গান এর নিচের দিকে রয়েছে সফট প্রেস বাটন । একবার গান প্রেস করলেই শত শত বাবল বের হয় যা দেখতে খুবই সুন্দর লাগে। ফ্যামিলি গেট টুগেদার, বা পার্টি ছাড়া যেকোনো ছোট বাচ্চাদের জন্য এই পণ্যটি আকর্ষণীয় হবে ।</p><p><br></p>', 1, 16, 30),
(17, 'Dancing Minion with Music and Flashing Lights', 'upload/product/product1669124272.jpg', '<div>-Item Type: Minions Doll</div><div>-Material: Plastic<br>-Built-in Music player</div><div>-RGB lighting</div><div><br></div>', 890, 690, '2022-11-22 12:37:52', '2022-12-06 05:30:32', 490, 10, '<p>~এটি দেখতে খুবই সুন্দর এবং আকর্ষনীয়, যা বাচ্চাদের কান্না থামানোর জন্য উপকারী একটা খেলনা!&nbsp; – তাছাড়া এই Minions টি আপনার বাসায়,অফিস কিংবা প্রিয়জনকে উপহার হিসেবেও দিতে পারেন ।</p><p>~এ ধরনের খেলনা বাসায় থাকলে বাচ্চারা অন্নেক বেশি হাসি-খুশি ও উৎফুল্ল থাকবে এবং খেলনাটি উপভোগ করবে ।<br></p><p>&nbsp;~এই খেলনাটি বাচ্চাদের খেলা উপযোগী ।<br></p>', 1, 20, 30),
(18, 'Transformer Robot Car For Kids', 'upload/product/product1670235962.jpg', '<div>-Automatic deformation, can switch between vehicle and robot</div><div>-Fall-proof. The body is made of environmentally friendly anti-fall materials, strong and resistant to fall, and can cope with all kinds of brutal children\'s operations.</div><div>-Two ways to play. The 2-in-1 car and robot can be used as a universal car or transformed into a freely controlled robot.</div>', 1480, 790, '2022-11-22 12:54:28', '2022-12-18 09:38:07', 420, 10, '<p>~অটোমেটিক সেন্সর সিস্টেম হওয়ায় এই গাড়িটি নিজেই গাড়ি থেকে রোবোর্ট এবং রোবোর্ট থেকে গাড়িতে পরিনত হওয়ায় দেখতে খুবই আকর্ষনীয় লাগে ।<br></p><p>~যে কোন বয়সের বাচ্চার জন্য এই গাড়িটি হবে, গিফট করার জন্য পারফেক্ট একটি আইটেম ।<br></p><p>~মিউজিক এবং লাইটিং সিস্টেমের কম্বিনেশনের কারনে গাড়িটি দেখতে আরো দুর্দান্ত লাগে যা, বাচ্চাদের মনোযোগ ধরে রাখতে সহায়তা করে ।<br></p><p>~একই সাথে রোবর্ট এবং গাড়ির কম্বিনেশন বাচ্চাদের করে তুলবে আরো আনন্দিত ।<br></p><p>~গাড়িটি দেখতে খুবই আকর্ষনীয় এবং প্রিমিয়াম হওয়ায় যে কারো পছন্দের শীর্ষে থাকবে Transformation Robot Car টি ।<br></p><p>~প্রিমিয়াম কোয়ালিটি হওয়ায় গাড়িটিতে স্ক্র্যাচ অথবা ভেঙ্গে যাওয়ার সম্ভাবনা খুবই কম ।<br></p><p>~পুরো বাংলাদেশ জুড়ে আমাদের রয়েছে Cash on Delivery সুবিধা অর্থাৎ, আপনি পণ্য হাতে পাবার পর চেক করে তারপর মুল্য পরিশোধ করতে পারবেন!!<br></p><p>~So, আপনারা যারা এই Transformation Robot Car Toy টি নিতে চাচ্ছেন, তারা এখনি অর্ডার করে ফেলুন&nbsp;<br></p>', 1, 18, 56),
(19, '360 Degree Rotating Police Car Toy', 'upload/product/product1669125692.jpg', '<p>Product details of 3D Light Toy Car</p><p>Colorful Music Cartoon Electric Rotating Car</p><p>The universal wheel is installed at the bottom</p><p>walks irregularly and obstacles will change the direction of advancement during the exercise</p>', 680, 460, '2022-11-22 13:01:32', '2022-12-07 09:50:44', 220, 10, '<p>কিউট এই Car টিতে পুলিশ সাইরেন সাউন্ডের পাশাপাশি এতে রয়েছে চমৎকার কালারফুল লাইটিং ।</p><p>এই কারটির দুই পাশে রয়েছে কালারফুল LED লাইটিং যা দেখে বাচ্চারা হাসবে খেলবে এবং উৎফুল্ল থাকবে ।</p><p>এই খেলনা Car টি চতুর্দিকে চলতে পারে এবং বাচ্চারা সহজেই কন্ট্রোল করতে পারবে।</p><p>এটি খুবই টেকসই এবং বাচ্চাদের জন্য নিরাপদ একটি খেলনা।</p>', 1, 19, 32),
(20, '8.5 Inch LCD Writing Tablet', 'upload/product/product1669125956.jpg', '<div>Panel:Flexible LCD panel</div><div><br></div><div>Material: LCD ;ABS</div><div><br></div><div>NW:169g(12Inch) / 93g(8.5Inch)</div><div><br></div><div>GW:260g(12Inch) / 180g(8.5Inch)</div><div><br></div><div>Panel:Flexible LCD panel</div>', 850, 450, '2022-11-22 13:05:56', '2022-12-05 10:44:31', 0, 10, '<p>লেখা ও ছবি আঁকা যায়।</p><p>কোনো কালির বা কাগজের প্রয়োজন হয় না ।<br></p><p>এটিতে কোনো চার্জের প্রয়োজন হয় না, একটি ব্যাটারী তে বছর পার।<br></p><p>লেখা বা আঁকা ছবি স্ট্যান্ডবাই মুডে ২ বছরের বেশি থাকবে।<br></p><p>বাসা বা অফিসের নোট রাখার জন্য খুবই উপযোগী।<br></p><p>লিখাগুলো সুস্পষ্ট বুঝা যায়।<br></p><p>এটার সাথে রয়েছে একটা পেন বা কলম।<br></p><p>লক বাটনে ক্লিক করে লক করে রাখা যায়।<br></p><p>খুব সহজেই লেখা ইরেজ (মুছা) যায়।<br></p><p>ব্যাটারী রিপ্লেসমেন্ট।</p><p>এটির বডি খুবই মজবুত।</p><p>সহজে বহনযোগ্য।</p><p>আমাদের কাছে ৮.৫ ইঞ্চি, ১০ ইঞ্চি ও ১২ ইঞ্চির ভ্যারিয়েন্টে এই ট্যাবলেটগুলো পাবেন।</p>', 1, 20, 47),
(22, 'Talking Cat With Sensor', 'upload/product/product1669208567.jpg', '<p>-Approx. 22x21cm/8.66x8.27inch</p><p>-Material: Plush + PP cotton</p><p>-realistic design</p><p>-High tech repeater sensor</p>', 1450, 1050, '2022-11-23 12:02:47', '2022-12-06 05:32:11', 800, 10, '<p>এই বিড়াল টি দেখতে একদম রিয়েল বিড়ালের মত ও এটি মেও মেও শব্দ করে এবং বাস্তব বিড়ালের মতন নাড়াছাড়া করে , যা দেখতে খুবই কিউট আর বড় - ছোট সকেলর অনেক পছন্দের।</p><p>এটি দেখতে খুবই সুন্দর এবং আকর্ষনীয়, যা বাচ্চাদের কান্না থামানোর জন্য উপকারী একটা খেলনা!&nbsp; – তাছাড়া এই বিড়াল টি আপনার বাসায়,অফিস কিংবা প্রিয়জনকে উপহার হিসেবেও দিতে পারেন ।</p><p>এ ধরনের খেলনা বাসায় থাকলে বাচ্চারা অন্নেক বেশি হাসি-খুশি ও উৎফুল্ল থাকবে এবং খেলনাটি উপভোগ করবে ।</p><p>এই বিড়ালটি অনেক সফট এবং বাচ্চাদের খেলা উপযোগী ।</p>', 1, 20, 27),
(23, 'Talking Spider Man', 'upload/product/product1669208804.jpg', '<p>~soft cotton material&nbsp;</p><p>~High tech sensors</p><p>~more than 50 pre-recorded song</p><p>~360 rotating &amp; dancing system</p>', 1250, 875, '2022-11-23 12:06:44', '2022-12-08 07:47:47', 480, 10, '<p>&nbsp;এটি দেখতে খুবই সুন্দর এবং আকর্ষনীয়, আপনি যা বলবেন, সেটাই interesting -ওয়েতে এটি Repeat করবে এবং পাশাপাশি এটি ৩৬০ ডিগ্রিতে নাচবে ও Coloring Lighting হবে - যা বাচ্চাদের কথা শিখানো ও কান্না থামানোর জন্য এটি হবে উপকারী একটা খেলনা!&nbsp; – তাছাড়া এই Dancing Talking Spiderman টি আপনার বাসায়,অফিস কিংবা প্রিয়জনকে উপহার হিসেবেও দিতে পারেন ।</p><p>এই Dancing &amp; Talking Spiderman Toy টি Rechargeable, অর্থাৎ এটির চার্জ শেষ হয়ে গেলে এটির সাথে থাকা USB cable দিয়ে আপনি পুনরায় - চার্জ করে নিতে পারবেন।<br></p><p>এই Dancing Talking Spiderman Toy!!টি তে রয়েছে ৫০ টিরও বেশি রেকর্ডেড গান, যে গুলো শুনতে পারবেন এবং এর পাশাপাশি এটি নাচবে ও সুন্দর Lighting হবে, এতে বাচ্চারা অন্নেক বেশি হাসি-খুশি ও উৎফুল্ল থাকবে এবং খেলনাটি উপভোগ করবে ।<br></p><p>এটি অনেক সফট হওয়ায়, বাচ্চাদের খেলা উপযোগী এবং এ ধরনের খেলনা বাসায় থাকলে বাচ্চারা থাকবে হাসি খুশি ও উৎফুল্ল ।<br></p>', 1, 20, 30),
(24, 'Dancing Duck', 'upload/product/product1669209030.jpg', '<div>-This electric duck toy can sing and dance, which is very attractive. It is a perfect fun toy and creative gift.</div><div><br></div><div>-Shape: duck</div><div><br></div><div>-Filling material: pp cotton</div><div><br></div><div>-Function: light recording speaking singing</div>', 1250, 875, '2022-11-23 12:10:30', '2022-12-14 07:37:54', 550, 10, '<p>এটি দেখতে খুবই সুন্দর এবং আকর্ষনীয়, আপনি যা বলবেন, সেটাই interesting -ওয়েতে এটি Repeat করবে এবং পাশাপাশি এটি নাচবে ও Coloring Lighting হবে - যা বাচ্চাদের কথা শিখানো ও কান্না থামানোর জন্য এটি হবে উপকারী একটা খেলনা!&nbsp; – তাছাড়া এই Dancing Talking Duck টি আপনার বাসায়,অফিস কিংবা প্রিয়জনকে উপহার হিসেবেও দিতে পারেন ।<br></p><p>এই Dancing &amp; Talking Duck Toy টি Rechargeable, অর্থাৎ এটির চার্জ শেষ হয়ে গেলে এটির সাথে থাকা USB cable দিয়ে আপনি পুনরায় - চার্জ করে নিতে পারবেন।<br></p><p>এই Dancing Talking Duck Toy!! টি তে রয়েছে ২০ টিরও বেশি রেকর্ডেড গান, যে গুলো শুনতে পারবেন এবং এর পাশাপাশি এটি নাচবে ও সুন্দর Lighting হবে, এতে বাচ্চারা অন্নেক বেশি হাসি-খুশি ও উৎফুল্ল থাকবে এবং খেলনাটি উপভোগ করবে ।<br></p><p>এটি অনেক সফট হওয়ায়, বাচ্চাদের খেলা উপযোগী এবং এ ধরনের খেলনা বাসায় থাকলে বাচ্চারা থাকবে হাসি খুশি ও উৎফুল্ল ।<br></p><p>এটি দেখতে খুবই সুন্দর এবং আকর্ষনীয়, আপনি যা বলবেন, সেটাই interesting -ওয়েতে এটি Repeat করবে এবং পাশাপাশি এটি নাচবে ও Coloring Lighting হবে - যা বাচ্চাদের কথা শিখানো ও কান্না থামানোর জন্য এটি হবে উপকারী একটা খেলনা!&nbsp; – তাছাড়া এই Dancing Talking Duck টি আপনার বাসায়,অফিস কিংবা প্রিয়জনকে উপহার হিসেবেও দিতে পারেন ।<br></p><p>এই Dancing &amp; Talking Duck Toy টি Rechargeable, অর্থাৎ এটির চার্জ শেষ হয়ে গেলে এটির সাথে থাকা USB cable দিয়ে আপনি পুনরায় - চার্জ করে নিতে পারবেন।<br></p><p>এই Dancing Talking Duck Toy!! টি তে রয়েছে ২০ টিরও বেশি রেকর্ডেড গান, যে গুলো শুনতে পারবেন এবং এর পাশাপাশি এটি নাচবে ও সুন্দর Lighting হবে, এতে বাচ্চারা অন্নেক বেশি হাসি-খুশি ও উৎফুল্ল থাকবে এবং খেলনাটি উপভোগ করবে ।<br></p><p>এটি অনেক সফট হওয়ায়, বাচ্চাদের খেলা উপযোগী এবং এ ধরনের খেলনা বাসায় থাকলে বাচ্চারা থাকবে হাসি খুশি ও উৎফুল্ল ।</p>', 1, 19, 30),
(25, 'Dancing Cactus', 'upload/product/product1670240548.jpg', '<div>This electric Cactus toy can sing and dance, which is very attractive. It is a perfect fun toy and creative gift.</div><div><br></div><div>Shape: Cactus</div><div><br></div><div>Filling material: pp cotton</div><div><br></div><div>Function: light recording speaking singing</div>', 1250, 875, '2022-11-23 12:12:52', '2022-12-06 05:18:10', 470, 8, '<p>এটি দেখতে খুবই সুন্দর এবং আকর্ষনীয়, আপনি যা বলবেন, সেটাই interesting -ওয়েতে এটি Repeat করবে এবং পাশাপাশি এটি নাচবে ও Coloring Lighting হবে - যা বাচ্চাদের কথা শিখানো ও কান্না থামানোর জন্য এটি হবে উপকারী একটা খেলনা!&nbsp; – তাছাড়া এই Dancing Talking Cactus টি আপনার বাসায়,অফিস কিংবা প্রিয়জনকে উপহার হিসেবেও দিতে পারেন ।</p><p>এই Dancing &amp; Talking Cactus Toy টি Rechargeable, অর্থাৎ এটির চার্জ শেষ হয়ে গেলে এটির সাথে থাকা USB cable দিয়ে আপনি পুনরায় - চার্জ করে নিতে পারবেন।<br></p><p>এই Dancing Talking Cactus Toy!!টি তে রয়েছে ৫০ টিরও বেশি রেকর্ডেড গান, যে গুলো শুনতে পারবেন এবং এর পাশাপাশি এটি নাচবে ও সুন্দর Lighting হবে, এতে বাচ্চারা অন্নেক বেশি হাসি-খুশি ও উৎফুল্ল থাকবে এবং খেলনাটি উপভোগ করবে ।<br></p><p>এটি অনেক সফট হওয়ায়, বাচ্চাদের খেলা উপযোগী এবং এ ধরনের খেলনা বাসায় থাকলে বাচ্চারা থাকবে হাসি খুশি ও উৎফুল্ল ।<br></p>', 1, 20, 30),
(26, 'Iron Man Dancing & Repeat Talking Rechargeable Toy', 'upload/product/product1669788040.jpg', '<div>-This electric Ironman toy can sing and dance, which is very attractive. It is a perfect fun toy and creative gift.</div><div><br></div><div>-Shape: Ironman</div><div><br></div><div>-Filling material: pp cotton</div><div><br></div><div>-Function: light recording speaking singing</div>', 1250, 875, '2022-11-23 12:26:58', '2022-12-06 10:31:16', 480, 10, '<p>এটি দেখতে খুবই সুন্দর এবং আকর্ষনীয়, আপনি যা বলবেন, সেটাই interesting -ওয়েতে এটি Repeat করবে এবং পাশাপাশি এটি নাচবে ও Coloring Lighting হবে - যা বাচ্চাদের কথা শিখানো ও কান্না থামানোর জন্য এটি হবে উপকারী একটা খেলনা!&nbsp; – তাছাড়া এই Dancing Talking Iron Man টি আপনার বাসায়,অফিস কিংবা প্রিয়জনকে উপহার হিসেবেও দিতে পারেন ।</p><p>এই Dancing &amp; Talking Iron Man Toy টি Rechargeable, অর্থাৎ এটির চার্জ শেষ হয়ে গেলে এটির সাথে থাকা USB Cable দিয়ে আপনি পুনরায় - চার্জ করে নিতে পারবেন।</p><p>এই Dancing Talking Iron Man Toy!! টিতে রয়েছে ২০ টিরও বেশি রেকর্ডেড গান, যে গুলো শুনতে পারবেন এবং এর পাশাপাশি এটি নাচবে ও সুন্দর Lighting হবে, এতে বাচ্চারা অন্নেক বেশি হাসি-খুশি ও উৎফুল্ল থাকবে এবং খেলনাটি উপভোগ করবে ।</p><p>এটি অনেক সফট হওয়ায়, বাচ্চাদের খেলা উপযোগী এবং এ ধরনের খেলনা বাসায় থাকলে বাচ্চারা থাকবে হাসি খুশি ও উৎফুল্ল ।</p><p>পুরো বাংলাদেশ জুড়ে আমাদের রয়েছে Cash On Delivery সুবিধা অর্থাৎ আপনি পণ্য হাতে পাবার পর চেক করে তারপর মুল্য পরিশোধ করতে পারবেন!!</p>', 1, -1, 30),
(38, 'Pink Reshmi Embroidered Net Saree', 'upload/product/product1670054224.jpg', '<p>Assembled with a net blouse with similar embroidered work in pink color which comes with satin lining under it.<br></p>', 12900, 8999, '2022-12-03 06:57:04', '2022-12-03 06:57:04', 7700, 7, '<p>Make a beautiful wedding look in this elegant salmon-pink color net saree. Enriched with detailed floral-themed Resham and zari embroidery embellished with stone adornments, creating distinctive scalloped borders as well as the pallu. Assembled with a net blouse with similar embroidered work in pink color which comes with satin lining under it. The unstitched blouse can be customized up to 42 inches. Do Note: All accessories shown are for styling purposes only. Slight color variation may occur due to photographic reasons.<br></p>', 1, 0, 32),
(39, 'Peach Bridesmaid Organza Embroidered Saree', 'upload/product/product1670055394.jpg', '<p>Splash your wedding wardrobe with this lavish peach color organza saree ornated with sequins and floral reshmi embroidery work enhancing the distinctive borders with cut work details.<br></p>', 11000, 7999, '2022-12-03 07:16:34', '2022-12-03 07:16:34', 6800, 7, '<p>Splash your wedding wardrobe with this lavish peach color organza saree ornated with sequins and floral reshmi embroidery work enhancing the distinctive borders with cut work details. Accompanied by a matching peach color blouse in organza with similar embroidered work all over. The unstitched blouse can be customized up to 42 inches. Do Note: All accessories shown are for styling purposes only. Slight color variation may occur due to photographic reasons.<br></p>', 1, 0, 26),
(40, 'Black Embroidered Saree With Blouse', 'upload/product/product1670055780.jpg', '<p>Look stunning in this black saree in net crafted with detailed Resham embroidery all over with stone embellishments.<br></p>', 18000, 14000, '2022-12-03 07:23:00', '2022-12-03 07:53:23', 11000, 7, '<p>Look stunning in this black saree in net crafted with detailed Resham embroidery all over with stone embellishments. Also comes with a matching color art silk and net cold shoulder blouse in similar work. The unstitched blouse can be customised up to 44 inches. Do Note: All accessories shown are for styling purpose only. Slight color variation may occur due to photographic reasons.<br></p>', 1, 0, 22),
(41, 'Red Embroidered Saree With Blouse', 'upload/product/product1670058043.jpg', '<p>Look stunning in this red saree in net crafted with detailed resham embroidery all over with stone embellismnets. Also comes with a matching color art silk and net bell sleeved blouse in similar work<br></p>', 18000, 14500, '2022-12-03 08:00:43', '2022-12-03 08:00:43', 11000, 7, '<p>Look stunning in this red saree in net crafted with detailed resham embroidery all over with stone embellismnets. Also comes with a matching color art silk and net bell sleeved blouse in similar work. The unstitched blouse can be customised up to 44 inches. Do Note: All accessories shown are for styling purpose only. Slight color variation may occur due to photographic reasons.<br></p>', 1, 0, 20),
(42, 'White Embroidered Saree With Blouse', 'upload/product/product1670058508.jpg', '<p>Look stunning in this white saree in net crafted with detailed resham embroidery all over with stone embellismnets. Also comes with a matching color art silk and net blouse in similar work<br></p>', 19000, 13000, '2022-12-03 08:08:28', '2022-12-03 08:08:28', 11000, 7, '<p>Look stunning in this white saree in net crafted with detailed resham embroidery all over with stone embellismnets. Also comes with a matching color art silk and net blouse in similar work. The unstitched blouse can be customised up to 44 inches. Do Note: All accessories shown are for styling purpose only. Slight color variation may occur due to photographic reasons.<br></p>', 1, 0, 31),
(43, 'Purple Art Silk Saree With Embroidered Blouse', 'upload/product/product1670059170.jpg', '<p>Showcasing a stunning purple color saree in art silk designed with rich resham and thread embroidery work around the borders enhanced by sequins and stone embellishments<br></p>', 13000, 9000, '2022-12-03 08:19:30', '2022-12-03 08:19:30', 7000, 7, '<p>Showcasing a stunning purple color saree in art silk designed with rich resham and thread embroidery work around the borders enhanced by sequins and stone embellishments. Accompanied by a similarly embroidered art silk and net blouse in purple color. The unstitched blouse can be customised up to 44 inches. Do Note: All accessories shown are for styling purpose only. Slight color variation may occur due to photography reasons.<br></p>', 1, 0, 34),
(44, 'Purple Sequin Embellished Georgette Saree', 'upload/product/product1670059532.jpg', '<p>This pretty elegant designer saree in purple colour paired with plain satin blouse. This saree are blended in georgette and blouse are satin banglori fabric<br></p>', 9000, 7000, '2022-12-03 08:25:32', '2022-12-03 08:25:32', 5000, 7, '<p>This pretty elegant designer saree in purple colour paired with plain satin blouse. This saree are blended in georgette and blouse are satin banglori fabric with a heavy sequinns work beautiful saree .The unstitched blouse can be customised up to 42 inches. Do Note: All the accessories shown are for styling purpose only. Slight color variation may occur due to photographic reasons.<br></p>', 1, 0, 22),
(46, 'Men\'s Pants & Trousers cargo trousers', 'upload/product/product1670061802.webp', '<p>Quality: 98% Cotton 2% Spandex</p><p>Buttery smooth chinos made with soft twill and washed to perfection</p><p>Stylish and Fashionable</p><p>Zip fly</p>', 1200, 649, '2022-12-03 09:03:22', '2022-12-03 09:05:44', 350, 6, '<p>Product Type: Twill Cargo</p><p>Main Material: Twill</p><p>Color: Same as Picture</p><p>Wash &amp; Care: Machine Wash</p><p>Waist: Mid-rise</p><p>Quality: 98% Cotton 2% Spandex</p><p>Buttery smooth chinos made with soft twill and washed to perfection</p><p>Stylish and Fashionable</p><p>Zip fly</p><p>Pocket: 2 Side pocket, 2 Back pocket</p><p>Gender: Men</p>', 1, 0, 47),
(47, 'Twill Cargo pant- Tan', 'upload/product/product1670063048.webp', '<p>Buttery smooth chinos made with soft twill and washed to perfection</p><p>Stylish and Fashionable</p><p>Zip fly</p><p>Pocket: 2 Side pocket, 2 Back pocket</p>', 1200, 800, '2022-12-03 09:24:08', '2022-12-03 09:24:08', 400, 6, '<p>Product Type: Twill Cargo</p><p>Main Material: Twill</p><p>Color: Same as Picture</p><p>Wash &amp; Care: Machine Wash</p><p>Waist: Mid-rise</p><p>Quality: 98% Cotton 2% Spandex</p><p>Buttery smooth chinos made with soft twill and washed to perfection</p><p>Stylish and Fashionable</p><p>Zip fly</p><p>Pocket: 2 Side pocket, 2 Back pocket</p><p>Gender: Men</p><p>100% Comfortable</p>', 1, 0, 33),
(48, 'Avengers Cosplay Premium Mask for kids', 'upload/product/product1670070872.webp', '<p>Non-Toxic Material</p><p>High-Quality PVC Material</p><p>Non-Toxic Coloring&nbsp;</p><p>Huge options from any super hero</p><p><br></p>', 350, 250, '2022-12-03 11:34:32', '2022-12-03 11:34:32', 150, 8, '<p>প্রত্যেক বাচ্চারাই ছোটবেলা থেকে তাদের প্রিয় সুপারহিরোদের মতো হতে চায় তাদেরকে অনুসরণ করে। তাই তাদেরকে সেই সুন্দর অনুভূতি দিতে ই-বাজার নিয়ে এসেছে হাই কোয়ালিটি সুপারহিরো মাস্ক।&nbsp;</p><p>আপনার বাচ্চাকে তাদের প্রিয় হিরোর অনুভূতি দিতে এখনই অর্ডার করে ফেলুন।</p>', 1, 0, 28),
(49, 'Spiderman Children\'s Watch', 'upload/product/product1670073300.webp', '<ul><li>PU Leather Wrist Belt</li><li>Quartz Clock Movement</li><li>Dial face embedded with glass</li><li>Stainless steel body</li></ul>', 415, 315, '2022-12-03 12:15:00', '2022-12-03 12:15:00', 215, 8, '<p>প্রত্যেক বাচ্চারাই ছোটবেলা থেকে তাদের প্রিয় সুপারহিরোদের মতো হতে চায় তাদেরকে অনুসরণ করে। তাই তাদেরকে সেই সুন্দর অনুভূতি দিতে ই-বাজার নিয়ে এসেছে হাই কোয়ালিটি সুপারহিরো রিস্ট ওয়াচ।&nbsp;</p><p><br></p><p>আপনার বাচ্চাকে তাদের প্রিয় হিরোর অনুভূতি দিতে এখনই অর্ডার করে ফেলুন।</p>', 1, 0, 24),
(50, 'Pokemon Pikachu Night Light Glowing Toy', 'upload/product/product1670074340.webp', '<ul><li>non-toxic, odorless, slightly soft, and has good elasticity</li><li>Beautifully packaged and well-made</li><li>Small and exquisite in shape, concave and convex, round and smooth surface treatment</li><li>The cute shape makes your heart flutter, and the material is so skin-friendly just for you to have a good feel<br></li></ul>', 512, 390, '2022-12-03 12:32:20', '2022-12-03 12:32:20', 286, 8, '<p>Pokemon Pikachu Night Light Glowing Children Toy Pokemon Pikachu Cute Bedside Lamp Children\'s Birthday Christmas Present</p><p>This product is a vinyl product, non-toxic, odorless, slightly soft, and has good elasticity. If the deformation is caused by a low probability of violent transport, it can be recovered after heating.</p><p>If you encounter problems, please contact us in time, and do not extract disputes and unnecessary comments, thank you very much</p><p>Beautifully packaged and well-made</p><p>Small and exquisite in shape, concave and convex, round and smooth surface treatment, comfortable hand feeling, it is not only a decoration but also a collection</p><p>Small and exquisite in shape, concave and convex, round and smooth surface treatment, comfortable hand feeling, it is not only a decoration but also a collection</p>', 1, 0, 22),
(51, 'Electric bubble gun with LED lights', 'upload/product/product1670075552.webp', '<ul><li>Colorful LED Light</li><li>Thousands of bubbles in just one click</li><li>1 pcs bubble mixed liquid</li><li>Air pocket Bowl&nbsp;</li></ul>', 700, 529, '2022-12-03 12:52:32', '2022-12-03 12:52:32', 420, 8, '<p>Bubble Machine + Air pocket Bowl +1pcs bubble concentrate</p><p>Central issues: 1. Controlled by 3 AA batteries: Fun leaf blower that delivers an explosion of air bubbles. With its practical plan and new tones, this toy bubble blower is exactly what you want. Just put in 3 AA batteries (excluded), tap the air pocket fluid, pull the trigger, and you\'ll be shooting lots of air pockets! 2. Arrangement containing bubble fluid: Because of strategies issues, bubble fluid might should be changed without anyone else, so your youngster\'s active capacity can be reinforced! 3. Extensive variety of utilization: Our air pocket machine is ideally suited for indoor and outside occasions, and can likewise be utilized as a party, birthday or commemoration present. Whether you\'re arranging a party for your children or commending their birthday, our air pocket weapons are the party feature.</p><p>notes:</p><p>Aspects might change somewhat because of manual estimations.</p><p>Varieties might change somewhat because of various screens and creations.</p>', 1, 0, 23),
(52, 'Deadpool Anime Doll', 'upload/product/product1670142341.webp', '<ul><li>Handy &amp; cute-looking doll</li><li>Best for interior design</li><li>Non-toxic PVC material</li><li>Dully realistic design</li></ul>', 200, 150, '2022-12-04 07:25:42', '2022-12-04 07:25:42', 90, 10, '<p>Handy &amp; cute-looking doll</p><p>Best for interior design</p><p>Non-toxic PVC material</p><p>Dully realistic design</p>', 1, 0, 24),
(53, 'Disney Star Wars 8cm Toy', 'upload/product/product1670143341.webp', '<ul><li>Handy &amp; cute-looking doll</li><li>Best for interior design</li><li>Non-toxic PVC material</li><li>Dully realistic design</li></ul>', 800, 588, '2022-12-04 07:42:21', '2022-12-04 07:42:21', 488, 10, '<p>Handy &amp; cute-looking doll</p><p>Best for interior design</p><p>Non-toxic PVC material</p><p>Dully realistic design</p>', 1, 0, 27),
(54, 'Rubber Soft Snake toys for kids', 'upload/product/product1670143851.webp', '<ul><li>High quality and brand new.<br></li><li>False rubber snake.</li><li>Ideal for any Halloween</li><li>High quality and eco-friendly material, safe to play with.</li></ul><p><br></p>', 250, 200, '2022-12-04 07:50:51', '2022-12-04 07:50:51', 100, 10, '<p>rade name: simulation snake</p><p>Commodity weight: about 18 g / piece</p><p>Features</p><p>High quality and brand new.</p><p>False rubber snake.</p><p>Ideal for any Halloween</p><p>1. A lifelike snake toy can be used to trick others.</p><p>2. High-quality and eco-friendly material, safe to play with.</p><p>3. You could hang them on the tree to help keep birds away.</p><p>Note:</p><p>Pictures are for illustrations only, and may not show the actual color of the item, please refer to the above color description to get the actual color.</p><p>Package included:</p><p>A snake toy</p>', 1, 0, 20),
(55, '1Pc Cartoon Poor Box Cat Kitty', 'upload/product/product1670144455.webp', '<ul><li>Handy &amp; cute-looking doll</li><li>Best for interior design</li><li>Non-toxic PVC material</li><li>Dully realistic design</li></ul>', 150, 120, '2022-12-04 08:00:55', '2022-12-04 08:00:55', 80, 10, '<p>Handy &amp; cute-looking doll</p><p>Best for interior design</p><p>Non-toxic PVC material</p><p>Dully realistic design</p>', 1, 0, 19),
(56, 'Talking & dancing Hamster', 'upload/product/product1670145591.webp', '<ul><li>Imitate you talking</li><li>Distinguish the level of sound</li><li>Change the tone through male and female voices</li><li>Make a nod action, super cute!</li></ul>', 1400, 900, '2022-12-04 08:19:51', '2022-12-04 08:19:51', 775, 10, '<p>15cm Cute Talking Hamster Mouse Stuffed Plush Animal Doll Sound Record Repeat Educational Toys Children Gifts</p><p>Feature:</p><p>Imitate you talking</p><p>Distinguish the level of sound</p><p>Change the tone through male and female voices</p><p>Make a nod action, super cute!</p><p><br></p><p>Specifications:&nbsp;</p><p>Color: Brown, Grey, Drak Brown</p><p>Size: 15cm/5.91in</p><p>Toy type: doll</p><p>Suitable age: 3 years old or older</p><p>External material: high quality fabric</p><p>Fill: PP cotton</p><p>Notes:</p><p>Please allow 1-3mm differs due to manual measurement.</p><p>Due to the different display and different light, the picture may not show the actual color of the item. Thanks for your understanding.</p>', 1, 0, 35),
(57, 'Superhero cute Figurine Collection Decoration Kids Toys', 'upload/product/product1670147459.webp', '<ul><li>Material: 100% Brand New</li><li> High-Quality PVC Material&nbsp;<br></li><li>Packing: OPP Bag&nbsp;</li><li>Size: 6-9CM</li></ul>', 300, 250, '2022-12-04 08:50:59', '2022-12-04 08:50:59', 160, 10, '<p>Description:&nbsp;</p><p>Material: 100% Brand New High Quality PVC Material&nbsp;</p><p>Packing: OPP Bag&nbsp;</p><p>Size: 6-9CM</p>', 1, 0, 17),
(58, 'Mini Action Figures Jurassic Dinosaur Toys', 'upload/product/product1670151711.webp', '<ul><li>Material: plastic</li><li>Size: 9*4*6.5cm</li><li>Applicable age: three years old +</li><li>Features: bite your finger</li></ul>', 500, 340, '2022-12-04 10:01:51', '2022-12-04 10:01:51', 240, 10, '<p>1. Collection value: Exquisite craftsmanship, advanced carving technology, strict control of the details of each place, bright colors and lifelike characters, environmental protection, and harmless to the human body. Has collection value for comic lovers.</p><p>2. Safe and durable: All products are made of plastic material, so we make sure that they are not only fun for our customers, but also safe. High-quality materials and a perfect appearance make this toy model more realistic and impressive.</p><p>3. Cool design: The action figure is the same as the miniature of the original game character. In addition, the bright colors of the toy figures and the fine-cutting process will not cause harm to the human body and can successfully pass the test of time. This character uses cool modeling techniques to show the coolest scene.</p><p>4. Perfect gift: They are very good decorations, worthy of model animation decoration series, bedroom, car, living room, etc. They can also be used as Valentine\'s Day, birthday gifts, and Christmas gifts.</p><p>5. Biting fingers: This cute little dinosaur, joints can move, and the mouth can open and bite on the fingers.</p><p><span style=\"background-color: transparent; font-size: 0.8125rem;\">Description:</span></p><p>If you are a collector and put the action character on the desktop, it will be a beautiful desktop action character to decorate Halloween, Thanksgiving, and Christmas.</p><p>Specifications:</p><p>Material: Plastic</p><p>Size: 9*4*6.5cm</p><p>Applicable age: three years old +</p><p>Features: bite your finger</p><p>Notes:</p><p>1. Please allow 0-1 inch error due to manual measurement. Thanks for your understanding.</p><p>2. Monitors are not calibrated the same, the item color displayed in photos may be showing slightly different from the real object.</p>', 1, 0, 32),
(59, 'Animal Finger Puppet Plush Toys', 'upload/product/product1670155612.jpg', '<ul><li>Conservative plan, you can wear them on your hand and move your e fingers.</li><li>You can utilize 5 fingers to control all aspects of the hand Pup pet and a lot of charming activities.</li><li>Splendid color, be alluring to kids. Getting a kid\'s attention is extremely simple.</li></ul><p><br></p><ul><li>You can utilize it whenever you need particularly when you recount a story or sing a tune for the children. This is the best instrument for early instruction.</li></ul>', 700, 528, '2022-12-04 11:06:52', '2022-12-04 11:06:52', 430, 10, '<p>New and top caliber</p><p>Minimized plan, you can wear them on your hand and move fingers.</p><p>You can utilize 5 fingers to control all aspects of the hand Puppet,and do a great deal of charming activities.</p><p>Brilliant color,be appealing to kids. Getting kids attention is exceptionally simple.</p><p>You can utilize it at whenever you need particularly when you recount a story or sing a tune for the children.</p><p>This is the best apparatus for early schooling.</p><p>Encourage your children imagination</p><p>Improve the articulation and parent-youngster cooperation.</p><p>This item is additionally extremely simple and safe for youngsters to play it without help from anyone else.</p><p>Material: Wool</p><p>Size :7.5*6cm approx</p><p>Particulars:</p><p>Minimized plan, you can wear them on your hand and move fingers.</p><p>You can utilize 5 fingers to control all aspects of the hand Puppet,and do a great deal of charming activities.</p><p>Splendid color,be appealing to kids. Getting kids attention is extremely simple.</p><p>You can utilize it at whenever you need particularly when you recount a story or sing a melody for the children.</p><p>This is the best instrument for early instruction.</p><p>Cultivate your children innovativeness</p><p>Upgrade the articulation and parent-kid association.</p><p>This item is likewise exceptionally simple and safe for youngsters to play it without help from anyone else</p><p>Bundle Included:</p><p>10*Finger Manikin</p>', 1, 0, 24),
(60, 'Lizards Mask Toy Frog Tongue-Sticking', 'upload/product/product1670737890.webp', '<ul><li>High-quality PVC material</li><li>Non-Toxic color</li><li>Safe for kids</li><li>free insect cards</li></ul>', 580, 480, '2022-12-11 04:51:30', '2022-12-11 04:51:30', 380, 10, '<p>High-quality PVC material</p><p>Non-Toxic color</p><p>Safe for kids</p><p>free insect cards</p>', 1, 0, 17),
(61, 'Cartoon Whistle', 'upload/product/product1670750319.webp', '<ul><li>The Whistles are plastic</li><li>Cartoon heads are made of pure wood</li><li>High-Quality material</li><li>Hanging rope design</li></ul>', 372, 275, '2022-12-11 08:18:39', '2022-12-11 08:18:39', 172, 10, '<p>The Whistles are plastic</p><p>Cartoon heads are made of pure wood</p><p>High Quality material</p><p>Hanging rope design</p>', 1, 0, 26),
(62, 'Soft Competition Gun', 'upload/product/product1670933641.jpg', '<ul><li>Space gun soft bullet children\'s toy</li><li>Uses high-grade plastic materials</li><li>Perfect for boys</li><li>No batteries required</li></ul>', 990, 810, '2022-12-13 11:14:01', '2022-12-13 11:14:01', 590, 10, '<p>Space gun soft bullet children\'s toy</p><p>1 gun</p><p>5 bullets’</p><p>3 Target point</p><p>100% Brand new item</p><p>Uses high-grade plastic materials</p><p>Perfect for boys</p><p>No batteries required</p>', 1, 100, 18),
(63, 'Sensor Helicopter', 'upload/product/product1670934368.jpg', '<ul><li>Battery: Built-in 75mAh li-ion Rechargeable Battery</li><li>Action Time: About 15 mins</li><li>Age Range: More than 3 years old</li><li>Charging Time: 15 mins</li><li>Control Channels: 2 channels</li><li>Material: Plastic</li><li>Motor: Brush motor</li><li>Power Source: Electric</li></ul>', 800, 450, '2022-12-13 11:26:08', '2022-12-13 11:26:08', 260, 10, '<p><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Functions:</font></b></p><p>Easy to use product startup 3 seconds automatic take off, induction flight press the remote control buttons, start/stop flying</p><p>Made of high-grade material, which is durable, wear-resisting, anti-corrosion, and eco-friendly.</p><p>It will cut off the power automatically when the fan blade is hindered, this will be safer.</p><p>The flashing light on the bottom of the helicopter, is cool and provides you with a special look.</p><p>USB charging makes it more convenient to use.</p><p>Easy to operate, with strong stability and good flying effect, suitable for indoor flight.</p><p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><b>Feature:</b></font></p><p>Item Type: Induction Helicopter</p><p>Material: ABS</p><p>Battery: 3.7V 75mAh Lithium Battery</p><p>Charging Time: 30 minutes</p><p>Flying Time: About 6-8 minutes</p><p>Suitable Age: over 8 years old</p><p>Size:17cm x 15cm x 10cm</p><p>Optional Colors: Red, Blue, Yellow</p><p><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">How to use it:</font></b></p><p>1, Turn on the helicopter bottom switch.</p><p>2, Keep the plane flying.</p><p>3, The plane must be flying at a certain height.</p><p>4, Place your hand under the sensor when the plane drops.</p><p>5, The sensor automatically rises again when it senses an obstacle and experiences flying pleasure from doing so.</p><p>6, When the experience is over the fattening turn off the bottom switch.</p><p>Package Included:</p><p>1 X Flying helicopter</p><p>1 X Charging cable</p><p>1 X Remote control(2 x AAA Battery is not included</p>', 1, 100, 43),
(64, 'Dancing Robot', 'upload/product/product1670936716.jpg', '<ul><li>MAKES AMUSIC &amp; FLASHLIGHTS</li><li>MUSIC AND FLASH LIGHTS</li><li>MAKES ALL SORTS OF DANCE MOVEMENTS</li><li>LONG-LASTING BATTERY</li><li>FIT FOR ALL KIDS<br></li></ul>', 980, 720, '2022-12-13 12:05:16', '2022-12-13 12:05:16', 430, 10, '<p>STURDY &amp; DURABLEL: The spectacular robot is made out of non-toxic long lasting high-quality abs plastic so that it can endure any playful abuse from your child without skipping a beat.</p><p>MUSIC AND FLASH LIGHTS: This fun electronic toy does not only dance, it plays music and has flashing lights too! The robot will dance to the beat and make a light show with the beautiful and colourful flashing lights that kids will love. The lights create a constant action to entertain kids and even pets can engage, colourful lights propeller.</p><p>MAKES ALL SORTS OF DANCE MOVEMENTS: Dancing action, arms and legs move with the song, 360 degree spinning action. This robotic toy is unique for its wide range of motion. Forget about the usual dancing robots that can barely move. This robot toy can do a full 360 degree spin, step to the side and lift up its legs and arms for many different dance routines. Moves and rotates with its legs and cool wheel and side steps to the beat rotates with its middle leg.</p><p>LONG LASTING BATTERY: This electronic toy is battery operated for maximum energy and convenience. It works with 3 AA batteries. The robot will dance for hours and give your kid the time of their life. The batteries are rechargeable and can be replaced after two years of continued use. The battery can last for 3 hours once fully recharged.</p><p>FIT FOR ALL KIDS: This spectacular dancing robot is the perfect toy for all children of any age, 3 and up. The funny dance moves of the electronic toy will give your little one endless hours of fun, laughter and dancing. It can be used by both girls and boys. Our robot is not only eye-catching but also educational, since it will help spark your child\'s curiosity about science fiction and mechanical science.</p>', 1, 100, 27),
(65, 'Transparent Car', 'upload/product/product1670937813.jpg', '<ul><li>Can view the gear inside</li><li>Gear driving effect</li><li>Made from heavy-duty plastic</li><li>RGB Lighting</li></ul>', 780, 630, '2022-12-13 12:23:33', '2022-12-13 12:23:33', 420, 10, '<p>Concept Racing Toys 360 Degree Rotating Transparent Concept Racing Car with 3D Flashing Led Light. Multifunctional, colorful lighting, clone gear mechanical system, awesome sound effects.</p><p>Transparent Design. Can view the gear inside, help the child to know mechanical concepts earlier.</p><p>Gear driving effect. Enhance Brain Development and build a Child’s Curiosity for New Things. Different Color helps children\'s cognitive ability.</p><p>Made from heavy-duty plastic, the toy has no small parts to it so that children can enjoy it. To operate a toy car you need to have 3 x AA batteries (Not Included).</p><p>This would be the best gift ever to give to little kids. They will enjoy watching the dancing car with all its delightful features. Great to give as a Birthday Gift, Holiday, or Christmas</p>', 1, 100, 19),
(66, 'Body Trimmer Stretching Belt', 'upload/product/product1671004029.jpg', '<ul><li>SAFE, COMFORTABLE, AND EASY TO USE</li><li>Made of environmental material and little storage space</li><li>Comfortable to use because of the full foam design</li><li>Easily to exercise your arms, legs, and stomach muscles</li><li>Material: Foam, Rubber</li><li>Size:50cm X 25cm</li><li>Heavy resistance, durable.</li></ul>', 700, 400, '2022-12-14 06:47:09', '2022-12-20 04:58:23', 300, 9, '<p>Brand new and high quality.</p><p>SAFE, COMFORTABLE, AND EASY TO USE:</p><p>Made of environmental material and little storage space</p><p>Comfortable to use because of the full foam design</p><p>Easily to exercise your arms, legs, and stomach muscles</p><p>Material: Foam, Rubber</p><p>Size:50cm X 25cm</p><p>Heavy resistance, durable.</p><p>4 Tubes make it more solid.</p><p>Great for home-based strength training.</p><p>Made from premium quality rubber latex and will not over-stretch.</p><p>Allows you to tone and sculpt every muscle group.</p><p>Both for men and women.</p><p>Suitable for travel and storage.</p><p>Our resistance tubing is made of professional quality natural rubber latex.</p><p>It is very effective and easy to use, consisting of a contoured foam-coated plastic handle and foam pedals to nicely fit into your hands and around your feet</p><p>Foam-wrapped handle, non-toxic no stimulation, safety, and environmental protection, to avoid movement due to climate change or cause excessive heat, moisture, slippage occurs, comfortable</p><p>Thick bold natural latex tube, high tensile strength, tens of thousands of times by tensile testing, safe, durable, easy to break</p><p>Ideal for toning &amp; strengthening the stomach, waist, and legs, arms, hips, and thighs and works on the tummy at the same time</p>', 1, 99, 43);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0qnklW8QHgoMDtaLUkxwCnDdgHDW0baNsz280Vt0', NULL, '27.147.176.50', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTJHTXBRUGhUMUhZN2N6Vkl4V3F4eHdCTFRMaW52UDMxOGZGTUZXNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWJhemFyLmNvbS5iZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673806880),
('19jWZfFo3tWLoNOsXvpL5UTAwJPWBEtbFNMcGn58', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWRkeEUwcmY2T2t6bG5kMUNVM0preHE4SDRScVpPRUlUaDhWSEZoWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788793),
('4oVvu57R97ScaMfQ1GL9OOhJYYq9ApgDkCi9dAgn', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHJ4eGhzZXE4Q1hLOWxSQU05aFlaTjJaUmlRUEhkRldJODBhbUFGdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzQ6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTUvMXBjLWNhcnRvb24tcG9vci1ib3gtY2F0LWtpdHR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788823),
('5EV8tZxHOC1rviMtvDs8r0b48bFWBsDL8NNrgeDS', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1I3SFgyNmk5a2tLNWNXZVR1SlhMZnc5bEE3MWRKazNUYUNBM2REMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788883),
('5kLyLAFoDoU7cSgGqnLo6xJHoqLpQWFJAEjK528R', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidncxTU5kaTFVQ1E1WnBQOWRTRnZXTXJFbWVpVktob0NkOXZ4N2ExNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvc2hvcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788891),
('5nN6PyNdy6fMimz7wsdG9AuDD5zFGb8omAJgfo7z', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWNkZFVRdFloN1hkRE5abWJsRUk0ZllQYUJ6a2hhNFd4MzBEckZVYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTQvcnViYmVyLXNvZnQtc25ha2UtdG95cy1mb3Ita2lkcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788817),
('5NQ43fcgV0HyT5Jq9n0wzjf0APzLOfOLtCozWECV', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1lxbDFIeDJsRlYwMmxSNFIyR0FYWG5DME5VV2NQNVhYN2RKN3NXaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY3VzdG9tZXItbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788728),
('5ZeBlUx9ckXHDcvMk2HXxQw65Qor3WUVt1Bcv6qC', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlB6M2t0OGV2TktkRWwwOHRnTU9adWZjU0VPSWhFa2dqNE5jMmxmOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY2F0ZWdvcnktcHJvZHVjdC83Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788712),
('6v2KXdd7V3yzzZN9FI0FEPAdY2dtB0YAxdtYfdTQ', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFpmZkR1WnNmRkM5cVZuSk9mbktJS0JiYzVwTkxuWG9aU25kWHhXNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzk6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTEvZWxlY3RyaWMtYnViYmxlLWd1bi13aXRoLWxlZC1saWdodHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788786),
('7AGWjT0io7IBz1sFleAFxb8pnupo2dK10rI6qszr', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXFyTm5Dek1MZkt1Q1RYSG04SU1MbnVseHJUSm8wYTNXS3RwOEh1VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjUvdHJhbnNwYXJlbnQtY2FyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788880),
('7EGHsiyzNircZrh2h6VpPfIfFgxttlUdRE1t1xow', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQW4xV3JST3VXUEV6WVB1UXNBT0FkWUc3RE9uTUxOZGFDeWFESVlEVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788826),
('7eLR8Ld9iTLSULMA7ujNT8l4RRaEMiFFqinbFwh5', NULL, '20.237.33.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazhMRWFiVld3VDlIRk0xM3NTc1NOamFtUjhEbmlCOVlnMU40Q2pFSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWJhemFyLmNvbS5iZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673784908),
('7HNSm5iKwoBp6CkBZdFGqWzAWSeNDvzSEpGTfSzs', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmlaUXAyeFVyd2RVeGZyZGc2aHNyQmJJMGV4Q3Z5Y25Gdm5JT2JQdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788814),
('7KquivAuFmVvlS4yuX3syH48wZnHmcYYT2TSkaZW', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDlpMWhKNVRsWm1EV0xtNGZ3a3c1TVJGOVlxOW42RWNlSkZ3anBOWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY3VzdG9tZXItcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788733),
('91KB4jocjbw5CmmNf8PLI1ELLB2hGY75ydbitZ4E', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjJDNVBWUGFmSUJDVEwxb1ZnTXlpUVlETkF0N0FtZTVTYkszckxaaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788837),
('a1jLOJApIepZ3VssObM3AN5Nd8LbQh35y9pN7DmL', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk9GVk9GMmFxbUJhdm04bHBnV2FwTU5vM3pCVkl4QjdtbXZScFFWVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZS1pdGVtLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788736),
('Ap3jbFO6VukyUqlO1PjqqPX7PNGGP8fX0KHjy0EC', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnBsU2c0SWZCZFhkRElpN3FQU09PM0Z6V2xNTnRYR2lvYjZva2xzOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZXR3by1pdGVtLzciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788764),
('AuWLNVtXclRRZ9IlKq2xyaFbjoEbNmS8KNzxu3rN', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickx6clpyZlJFcThXemtnNXp1bVcxU0JBR1NKaDVwdUtoTGtaRTF4USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZS1pdGVtLzEwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788739),
('bfDSOFFeWTPpi4c9w6eAzTWtMbeNrdcfsZRk0CJR', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDY1amRkVkVvdHFOa1dLV2pPUG9oNmlpeDZyeWpYV2ZtcUN0Z001eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788856),
('dfeAv4G4NaWWp4sV5nG0qglGIwsRYOUeuKR7UNzA', NULL, '149.28.35.63', 'Java/1.8.0_332', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV1VRc0lnTWJISklibjNpczZ3WnB0ekRFaE5wZFdZbmtPOFN3bzVTRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673800280),
('dlZHQvKCmUYNCNnY4k6DbuJebOGPfpyC8qYSdYSH', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3VHQ0xkOVFSQkl2UFNUdmFabTBncTVmS2QzNlZsbllYb2xnS1BvOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788878),
('eWRAHZTUOkfO4m0Zf0E8kGjjjIDEUyvAK04cewaC', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHplTDZIRXV5cWp3VXE1ZFk2WW9QV1UyajBhWGg0SDRqeHlBc0dsUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788868),
('FYbkG94OJHOd8sNLU3PsBbEYtO9qLYtCWKJjcq3U', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkpKYXNDc3ZRdzYyeTFRenkzeGJHSjlhRGFJOXc0aVB1NG50VnIwbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTMvZGlzbmV5LXN0YXItd2Fycy04Y20tdG95Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788811),
('gHk0PvtVU5Y13lcEBvu4Nt5jPRz2mChntUX5IrSO', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEd6T0p0SncybUx0UHZvSUZ3cThpaXhEQmcxa2VHaFVEUU55YTBYNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788723),
('GNdQA2PqxRvl7ByJYnd78GoyPT38EexGrcu8bQYT', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamhvdFI5OVhuWll0TWNwV3haTzVUQ1BsWEUwYjd1Z0doSUJJZkJOTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788849),
('GPIstz0v4jy9SOHNKeF4dVt2ItnRloaf5DLGNGkS', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlZjTU9jcHppNXBYTzNUNUoxZG9aZ09IbGN2M0RjS2RpZ0xjY1BkQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjQvZGFuY2luZy1yb2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788875),
('H29KrClURAmMbNwflboiuYOswBmV07NWbpu15vk0', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjJoT05PNm4wbjlNZEx3dnBOZmY3czdpTzFjUkFyZWtJMW1XMVlISiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788804),
('h4MGxXusZf6o5uPQiveNqRQXGRwswvNlnjlTPr1f', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjJvZGFCb3pjblcxSHRjVHMzNlQxVjBoMG1XNDV3OXpIc2F4ZGx2dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY2F0ZWdvcnktcHJvZHVjdC8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788701),
('HU58Ks1NgfVISjhEDbYft4GVWaDsISu0bn3moiGX', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTE5T2VQM1RFNkZPUWg2TEEyTlpnTUMwb1h4bDMwQWFCTlRid1puZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788863),
('I3eVLtdTQtNlMwC85CFW0tnkrWYuWfF0SdHfXoXh', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW44dTFHN0RkOXFnd1ZPMGJxb2JXZ3ExamhqSWZEV0NVSTNBSjFUcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZXR3by1pdGVtLzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788771),
('IoxXV86Z6XCHzIo9AdqF3WWZsOzRSX4IpZjZuMCL', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkw2a0xKb21VM2ltRFBGUnVvVUlhWlMyWG1TNnV1T05nb25xYUNyayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZXR3by1pdGVtLzUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788749),
('kzwExLak1I9OACAVEJK6DgpqrQ2bKKrJmJPyJ4QG', NULL, '40.77.167.80', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RXcTdaMU91TjIzVzN2YlZjWXJzRU93eGNMOHI3MFpWeUN6TnJ1UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673801483),
('LbAu0Iy8RRCuT0xccV7EKC8EI3ZidPI52rTz9fgq', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0QxUW9kaDRaYW1aZzdibXYzOVk5Q2M1R1VpdnhZQ1daWk92Y3FtQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY2F0ZWdvcnktcHJvZHVjdC85Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788721),
('ln9SiEWgRgvvAhQu7chgcxcUTAvNLjqKriiRtuiO', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUVyVXpBUWtCUk9NZkswUWN1bFV4aXRpODBZU29BNGtVR1JRTDM4biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTgvbWluaS1hY3Rpb24tZmlndXJlcy1qdXJhc3NpYy1kaW5vc2F1ci10b3lzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788840),
('M2NTO8WTHJAeXIUsmkc8ySlWeJr8soExETWMskw2', NULL, '37.111.194.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjVCWFFTR2RqdURKbmZnNVRrNGRjVWdFajFOamtmQlNIbU5NM2tGNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vZWJhemFyLmNvbS5iZC9wYWdlLWl0ZW0vMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673807362),
('mWsB6TGwaoUm1KBCMsZPBD4ij9v5jOEbcY8yMxAU', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDJJZlIzZTAyUXBYdEhEdTlpUDk5bHJ1ekY2VTU5U01mSFlXVEU2VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788873),
('N3txiiMCL1wPBid1Ey5gKF5TbvRnkKFM6285Qdx7', NULL, '103.15.42.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXFTenNWeVpmTFVsekJmcWlLenZIYTNkbzZTV0x1ZnFhRThiWWlQMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWJhemFyLmNvbS5iZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673807363),
('olOFBkCWUaNGKsPI3RjeaNfylvuRUcRZni0zsOdU', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0NkdWt0aHcxVXQ3ZWs2djZTTm1QMTFOTnRjVWVPdzhsU2ZQTTFhbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTYvdGFsa2luZy1kYW5jaW5nLWhhbXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788829),
('OttGQdDk8a6tq8HnG42VCtO03ZZvHwG2kw8uTbBI', NULL, '27.147.176.50', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.2; WOW64; Trident/7.0; .NET4.0C; .NET4.0E; InfoPath.2)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDBEd1ZuQ3djZ3lwSGJFdjg0RGNYMU1TanhkVUJqWWwwdHFwVnZrTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWJhemFyLmNvbS5iZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673806605),
('OyjzhRNJBzGGc9O8O5gmcTDUIzeHaJ8vv3FKzIRz', NULL, '123.253.96.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUdUUTRHdkx2RmdWN25DVnlIcHk5M0NBOVVYWE1jR0ZNU1RwNXhJZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788802),
('piEx3DOg7pHkmtr9PanvW2IsPBQcPrQt5KTwPiuB', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjdhTUJSeVBpUkFvc1NidVdsN2xWc2ZHQXFPc2ZKaGlRTWsyN0o5NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788779),
('PJaOLXnfRnh96NvymhLsuMXlZj2Ape5csB2fv9Or', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmM1a3lmMDJreWJ5Rk95Z1ZNWERRTjlKZUdDelV0c0NPczRGeDB2UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjAvbGl6YXJkcy1tYXNrLXRveS1mcm9nLXRvbmd1ZS1zdGlja2luZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788853),
('pUlBmFmEP2F8calEG45cUYZ7yyNZlM4xvKJ095Ws', NULL, '173.252.79.4', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibk9yS044R3lOdGg5ZFNPcm9scm50RGVKSVZWTlphQnpNS0dQS3k3cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673791108),
('q03TnD67n10TkxIdo5dK7gcrywfAfJt4GNKfOS1O', NULL, '51.222.253.2', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1h3WDZjNzNwYzhVZW9WOVNlV1czTUtjV252WWFkd1MybDRNeXRkMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673820080),
('Q53mZSC14DtQnQZSlaQG0JUwxywWDi4oGwKeTkrg', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEt0NlIxU1hjY0t6QTNOWGhyRnBrUGlpVXBQZmhUSHQxYUM4R3Q3USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY2F0ZWdvcnktcHJvZHVjdC84Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788716),
('QGron7o5oFlf9VxmdGBxdsI3hyozgK6YMO3EQNsD', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmV2TjZyNXQ1dVNMV2ZRTUtsZDh4cDBWdzYxRDNMQklDbm1Iek9NNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjIvc29mdC1jb21wZXRpdGlvbi1ndW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788866),
('qKzBpscli770feojRoDYIM37tF16wVBa7NnfEePI', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSml6MTkzY3d4VXh2Rkh6MGJBSmtXRWduWVFFYnZSSzJJVDh1Z3VoaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvc2hvcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788888),
('QM6rX5rxRBgO6FjgFW74S106uZKZb1dRXyKXQqec', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW9BOGFUbWM4dVZuWHJxdmFiNWtLcnB5cW83UkhLSnVDVldpT2l2TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZS1pdGVtLzciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788742),
('qmqYn3B2aqgitvjgCrZ5Nb85LTdOfxVQldeazkWU', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclVBdTFQWDFsaWZCOVZzM0pNSXJ5Z2ZVVDJsRFZsMm1LYlJmMFJtUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjEvY2FydG9vbi13aGlzdGxlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788858),
('rIZojQ9hIDf2UuBUP0T1JNZa6AnWV5Z2aecFyhyW', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3pkek0xdUNiaXc5OU1vbEVUWlBZSmNNb2xSVFpZSko5S3hhNlczYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZXR3by1pdGVtLzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788757),
('rJucPPBe3yKjSAr433Oq3550ysZZgSCaYjd5kEVm', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHJmNkpJa3FCMjdPRVQyTEtpWnpNVlV3U3kxcFVOZWRvUkpkOE5XYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTkvYW5pbWFsLWZpbmdlci1wdXBwZXQtcGx1c2gtdG95cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788846),
('rvon3Ppg9J15MVy7efHPlCY0KKOpmjGCaajPOH8Y', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEFkUHNYYUh4ZzF0ZkN4emFLcnF4QkhVNFNMaXJZQ1FhTWIzYTJ2SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788820),
('ScWxiMhR4owBEpersaP2ZboC5VC0hf0ehmyC5QVo', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGMxWEZKSHM5Qml4Wm9tMFdSNXNEVm8xVUpxNExrbkhRUHJwdXBBZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjYvYm9keS10cmltbWVyLXN0cmV0Y2hpbmctYmVsdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788886),
('spWgnSoFYTmDen6g9oUTdOKj3w9rrFkjKCOJY1zo', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkgwUDRBRE1vZHNlcXZjVVVLSlJtdGhBc294TWlyd2VLYzBCV0lPNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788832),
('SrzajYCdwZ8qyTTkNCbKP1RtaoppQSFBYxuNAJag', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialhEWHczRVFKTWp5NzR5YlRGZEJ1T09LUTVCSFBvMFlRbU1nbUV2bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTk6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTcvc3VwZXJoZXJvLWN1dGUtZmlndXJpbmUtY29sbGVjdGlvbi1kZWNvcmF0aW9uLWtpZHMtdG95cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788834),
('SvVkUOsdT4HtgVtD4dRhcueH1UyzhojKXXInagoS', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW53Q3ZKVzluQ0g0QjlhSHNnNFlUZXV0NThnOExpZ05lSHZXbGVXUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvY2F0ZWdvcnktcHJvZHVjdC82Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673788706),
('SYm7JtBHgBYPa4IgbePuAodRVZ6jz4tiF0F5Q0dM', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickhaUkt4UldLdU1Kb0Q4R0ZvMkEyaUdRR3F2WTBkWHFHeEFsUmN1byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjMvc2Vuc29yLWhlbGljb3B0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788871),
('Tmlls92R3Zz6By4Sm1yhpk1618OBSazRspSiaP2R', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXhES2pxOVZFcUdyMTdYWGtvRWJkemJrT0xzQmhud0g3bWJ3R2Z0TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcGFnZS1pdGVtLzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788746),
('vGbtghqM9g4XpMtc31NXDDjIFHYwwowysUIgzbS1', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWRRY0NEdldTMTNsWnVRRklXeGNzaHZBUGxaVGF0aEJ6QmNVZzhrcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTIvZGVhZHBvb2wtYW5pbWUtZG9sbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673788797),
('x9aSRrwogFqEFZBxOpHNrDvhBBhQ9t18mejCXJON', NULL, '173.252.79.21', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclREMTlIRFdrUzRwZjNES0gxUkdaUzJFUEtsajhKSUtXdTVqU09VcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWJhemFyLmNvbS5iZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673791108),
('XBC76ocBBzGFA8CHSMf54NuJ7wRqCRI71j1ippJx', NULL, '69.171.231.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkhOSlJ2eUxKem1TbWVJQmoyODJPcndCcWJYdWRZQnRDMU1vVkR1eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNjMvc2Vuc29yLWhlbGljb3B0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673784430),
('Yl4dfCpPo5WvYFWQ1F5izp1MWSbS6DFafxKaZGHu', NULL, '157.90.209.83', 'Mozilla/5.0 (compatible; BLEXBot/1.0; +http://webmeup-crawler.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzd3eEZoMmlnRWhDRU5yem1OUnhvWjNWQXd3dWxnUG5TRmxEMzZrRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vd3d3LmViYXphci5jb20uYmQvcHJvZHVjdC9kZXRhaWwvNTkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1673788843);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inside_dhaka` int(11) NOT NULL,
  `outside_dhaka` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `inside_dhaka`, `outside_dhaka`, `created_at`, `updated_at`) VALUES
(1, 60, 120, '2022-12-04 00:14:33', '2022-12-18 09:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_images`
--

INSERT INTO `sub_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(68, 22, 'product-sub-images/photo_1_2022-11-28_11-54-42.jpg', '2022-11-28 04:55:21', '2022-11-28 04:55:21'),
(69, 22, 'product-sub-images/photo_2_2022-11-28_11-54-42.jpg', '2022-11-28 04:55:21', '2022-11-28 04:55:21'),
(70, 22, 'product-sub-images/photo_3_2022-11-28_11-54-42.jpg', '2022-11-28 04:55:21', '2022-11-28 04:55:21'),
(71, 23, 'product-sub-images/photo_1_2022-11-28_12-05-53.jpg', '2022-11-28 05:06:24', '2022-11-28 05:06:24'),
(72, 23, 'product-sub-images/photo_2_2022-11-28_12-05-53.jpg', '2022-11-28 05:06:24', '2022-11-28 05:06:24'),
(73, 24, 'product-sub-images/photo_1_2022-11-28_12-12-26.jpg', '2022-11-28 05:13:03', '2022-11-28 05:13:03'),
(74, 24, 'product-sub-images/photo_2_2022-11-28_12-12-26.jpg', '2022-11-28 05:13:03', '2022-11-28 05:13:03'),
(79, 17, 'product-sub-images/photo_2022-11-28_14-46-22.jpg', '2022-11-28 07:46:53', '2022-11-28 07:46:53'),
(86, 37, 'product-sub-images/polash.jpg', '2022-11-30 16:14:13', '2022-11-30 16:14:13'),
(87, 37, 'product-sub-images/prothomalo-bangla_2021-07_a9481266-04e7-4259-8dfb-3950adfbc303_a10cb03f-0498-4462-8424-c176277928e1.webp', '2022-11-30 16:14:13', '2022-11-30 16:14:13'),
(88, 37, 'product-sub-images/Screenshot_2.jpg', '2022-11-30 16:14:13', '2022-11-30 16:14:13'),
(89, 37, 'product-sub-images/Screenshot_3.jpg', '2022-11-30 16:14:13', '2022-11-30 16:14:13'),
(91, 38, 'product-sub-images/4063sr05-1005.jpg', '2022-12-03 06:57:04', '2022-12-03 06:57:04'),
(92, 38, 'product-sub-images/4063sr05-1005-1.jpg', '2022-12-03 06:57:04', '2022-12-03 06:57:04'),
(93, 39, 'product-sub-images/3098sr03-7403.jpg', '2022-12-03 07:16:34', '2022-12-03 07:16:34'),
(94, 39, 'product-sub-images/3098sr03-7403-1.jpg', '2022-12-03 07:16:34', '2022-12-03 07:16:34'),
(95, 40, 'product-sub-images/2497sr03-463.jpg', '2022-12-03 07:23:00', '2022-12-03 07:23:00'),
(96, 40, 'product-sub-images/2497sr03-463-1.jpg', '2022-12-03 07:23:00', '2022-12-03 07:23:00'),
(97, 40, 'product-sub-images/2497sr03-463-2.jpg', '2022-12-03 07:23:00', '2022-12-03 07:23:00'),
(98, 40, 'product-sub-images/2497sr03-463-3.jpg', '2022-12-03 07:23:00', '2022-12-03 07:23:00'),
(99, 41, 'product-sub-images/2497sr07-467.jpg', '2022-12-03 08:00:43', '2022-12-03 08:00:43'),
(100, 41, 'product-sub-images/2497sr07-467-1.jpg', '2022-12-03 08:00:43', '2022-12-03 08:00:43'),
(101, 41, 'product-sub-images/2497sr07-467-2.jpg', '2022-12-03 08:00:43', '2022-12-03 08:00:43'),
(102, 41, 'product-sub-images/2497sr07-467-3.jpg', '2022-12-03 08:00:43', '2022-12-03 08:00:43'),
(103, 42, 'product-sub-images/2497sr01-461.jpg', '2022-12-03 08:08:28', '2022-12-03 08:08:28'),
(104, 42, 'product-sub-images/2497sr01-461-1.jpg', '2022-12-03 08:08:28', '2022-12-03 08:08:28'),
(105, 42, 'product-sub-images/2497sr01-461-2.jpg', '2022-12-03 08:08:28', '2022-12-03 08:08:28'),
(106, 42, 'product-sub-images/2497sr01-461-3.jpg', '2022-12-03 08:08:28', '2022-12-03 08:08:28'),
(107, 43, 'product-sub-images/2494sr21-sw607h.jpg', '2022-12-03 08:19:30', '2022-12-03 08:19:30'),
(108, 43, 'product-sub-images/2494sr21-sw607h-1.jpg', '2022-12-03 08:19:30', '2022-12-03 08:19:30'),
(109, 44, 'product-sub-images/4864sr04-4136.jpg', '2022-12-03 08:25:32', '2022-12-03 08:25:32'),
(110, 44, 'product-sub-images/4864sr04-4136-1.jpg', '2022-12-03 08:25:32', '2022-12-03 08:25:32'),
(111, 44, 'product-sub-images/4864sr04-4136-2.jpg', '2022-12-03 08:25:32', '2022-12-03 08:25:32'),
(116, 46, 'product-sub-images/H8c8c195e45594f62ae380523fab8e4c3q.jpg_250x250.webp', '2022-12-03 09:03:22', '2022-12-03 09:03:22'),
(117, 46, 'product-sub-images/H84b526540b94487e9dbf40e49fe7ee00C.jpg_250x250.webp', '2022-12-03 09:03:22', '2022-12-03 09:03:22'),
(118, 46, 'product-sub-images/H500b97216d0a42e8b7d5fdb367c46364q.jpg_250x250.webp', '2022-12-03 09:03:23', '2022-12-03 09:03:23'),
(119, 47, 'product-sub-images/Cargo-4.1_1024x1024@2x.webp', '2022-12-03 09:24:08', '2022-12-03 09:24:08'),
(120, 47, 'product-sub-images/Cargo-4.2_1024x1024@2x.webp', '2022-12-03 09:24:08', '2022-12-03 09:24:08'),
(121, 47, 'product-sub-images/Cargo-4.3_1024x1024@2x.webp', '2022-12-03 09:24:08', '2022-12-03 09:24:08'),
(122, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_640x640 (1).jpg', '2022-12-03 11:34:32', '2022-12-03 11:34:32'),
(123, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_640x640 (2).jpg', '2022-12-03 11:34:32', '2022-12-03 11:34:32'),
(124, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_640x640.jpg', '2022-12-03 11:34:32', '2022-12-03 11:34:32'),
(125, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_Q90.jpg_ (1).webp', '2022-12-03 11:34:32', '2022-12-03 11:34:32'),
(126, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_Q90.jpg_ (2).webp', '2022-12-03 11:34:32', '2022-12-03 11:34:32'),
(127, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_Q90.jpg_ (3).webp', '2022-12-03 11:34:33', '2022-12-03 11:34:33'),
(128, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_Q90.jpg_ (4).webp', '2022-12-03 11:34:33', '2022-12-03 11:34:33'),
(129, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_Q90.jpg_ (5).webp', '2022-12-03 11:34:33', '2022-12-03 11:34:33'),
(130, 48, 'product-sub-images/Anime-Figure-Marvel-Spiderman-Mask-Hulk-Cosplay-Party-Mask-Avengers-Iron-Man-Captain-America-Halloween-Pvc.jpg_Q90.jpg_.webp', '2022-12-03 11:34:33', '2022-12-03 11:34:33'),
(131, 49, 'product-sub-images/2022-Disney-Spiderman-Children-s-Watch-Anime-Figures-Student-Quartz-Watch-Marvel-Toys-Spiderman-Leather-Strap.jpg_Q90.jpg_ (1).webp', '2022-12-03 12:15:00', '2022-12-03 12:15:00'),
(132, 49, 'product-sub-images/2022-Disney-Spiderman-Children-s-Watch-Anime-Figures-Student-Quartz-Watch-Marvel-Toys-Spiderman-Leather-Strap.jpg_Q90.jpg_ (2).webp', '2022-12-03 12:15:00', '2022-12-03 12:15:00'),
(133, 49, 'product-sub-images/2022-Disney-Spiderman-Children-s-Watch-Anime-Figures-Student-Quartz-Watch-Marvel-Toys-Spiderman-Leather-Strap.jpg_Q90.jpg_ (3).webp', '2022-12-03 12:15:00', '2022-12-03 12:15:00'),
(134, 49, 'product-sub-images/2022-Disney-Spiderman-Children-s-Watch-Anime-Figures-Student-Quartz-Watch-Marvel-Toys-Spiderman-Leather-Strap.jpg_Q90.jpg_ (4).webp', '2022-12-03 12:15:00', '2022-12-03 12:15:00'),
(135, 49, 'product-sub-images/2022-Disney-Spiderman-Children-s-Watch-Anime-Figures-Student-Quartz-Watch-Marvel-Toys-SpidermanLeather-Strap.jpg_Q90.jpg_.webp', '2022-12-03 12:15:00', '2022-12-03 12:15:00'),
(136, 49, 'product-sub-images/2022-Disney-Spiderman-Children-s-Watch-Anime-Figures-Student-Quartz-Watch-Marvel-Toys-Spiderman-Leather-Strap.jpg_Q90.jpg_.webp', '2022-12-03 12:15:00', '2022-12-03 12:15:00'),
(137, 50, 'product-sub-images/Pokemon-Pikachu-Night-Light-Glowing-Children-Toy-Pokemon-Pikachu-Cute-Bedside-Lamp-Children-s-Birthday-Christmas.jpg_Q90.jpg_ (1).webp', '2022-12-03 12:32:20', '2022-12-03 12:32:20'),
(138, 50, 'product-sub-images/Pokemon-Pikachu-Night-Light-Glowing-Children-Toy-Pokemon-Pikachu-Cute-Bedside-Lamp-Children-s-Birthday-Christmas.jpg_Q90.jpg_ (2).webp', '2022-12-03 12:32:20', '2022-12-03 12:32:20'),
(139, 50, 'product-sub-images/Pokemon-Pikachu-Night-Light-Glowing-Children-Toy-Pokemon-Pikachu-Cute-Bedside-Lamp-Children-s-Birthday-Christmas.jpg_Q90.jpg_ (3).webp', '2022-12-03 12:32:20', '2022-12-03 12:32:20'),
(140, 50, 'product-sub-images/Pokemon-Pikachu-Night-Light-Glowing-Children-Toy-Pokemon-Pikachu-Cute-Bedside-Lamp-Children-s-Birthday-Christmas.jpg_Q90.jpg_ (4).webp', '2022-12-03 12:32:20', '2022-12-03 12:32:20'),
(141, 50, 'product-sub-images/Pokemon-Pikachu-Night-Light-Glowing-Children-Toy-Pokemon-Pikachu-Cute-Bedside-Lamp-Children-s-Birthday-Christmas.jpg_Q90.jpg_.webp', '2022-12-03 12:32:20', '2022-12-03 12:32:20'),
(142, 51, 'product-sub-images/Bubble-Gun-Electric-Automatic-Soap-Rocket-Bubbles-Machine-Kids-Portable-Outdoor-Party-Toy-LED-Light-Blower.jpg_640x640 (1).webp', '2022-12-03 12:52:32', '2022-12-03 12:52:32'),
(143, 51, 'product-sub-images/Bubble-Gun-Electric-Automatic-Soap-Rocket-Bubbles-Machine-Kids-Portable-Outdoor-Party-Toy-LED-Light-Blower.jpg_640x640 (2).webp', '2022-12-03 12:52:32', '2022-12-03 12:52:32'),
(144, 51, 'product-sub-images/Bubble-Gun-Electric-Automatic-Soap-Rocket-Bubbles-Machine-Kids-Portable-Outdoor-Party-Toy-LED-Light-Blower.jpg_640x640 (3).webp', '2022-12-03 12:52:32', '2022-12-03 12:52:32'),
(145, 51, 'product-sub-images/Bubble-Gun-Electric-Automatic-Soap-Rocket-Bubbles-Machine-Kids-Portable-Outdoor-Party-Toy-LED-Light-Blower.jpg_640x640.webp', '2022-12-03 12:52:32', '2022-12-03 12:52:32'),
(146, 51, 'product-sub-images/Bubble-Gun-Electric-Automatic-Soap-Rocket-Bubbles-Machine-Kids-Portable-Outdoor-Party-Toy-LED-Light-Blower.jpg_Q90.jpg_.webp', '2022-12-03 12:52:32', '2022-12-03 12:52:32'),
(147, 52, 'product-sub-images/Disney-Deadpool-Anime-Figure-Car-Pendant-Ornaments-Deadpool-Hanging-Interior-Decoration-Fragrance-Accessories-Kids-Toy-Gifts.jpg_Q90.jpg_ (1).webp', '2022-12-04 07:25:42', '2022-12-04 07:25:42'),
(148, 52, 'product-sub-images/Disney-Deadpool-Anime-Figure-Car-Pendant-Ornaments-Deadpool-Hanging-Interior-Decoration-Fragrance-Accessories-Kids-Toy-Gifts.jpg_Q90.jpg_ (2).webp', '2022-12-04 07:25:42', '2022-12-04 07:25:42'),
(149, 52, 'product-sub-images/Disney-Deadpool-Anime-Figure-Car-Pendant-Ornaments-Deadpool-Hanging-Interior-Decoration-Fragrance-Accessories-Kids-Toy-Gifts.jpg_Q90.jpg_ (3).webp', '2022-12-04 07:25:42', '2022-12-04 07:25:42'),
(150, 52, 'product-sub-images/Disney-Deadpool-Anime-Figure-Car-Pendant-Ornaments-Deadpool-Hanging-Interior-Decoration-Fragrance-Accessories-Kids-Toy-Gifts.jpg_Q90.jpg_ (4).webp', '2022-12-04 07:25:42', '2022-12-04 07:25:42'),
(151, 52, 'product-sub-images/Disney-Deadpool-Anime-Figure-Car-Pendant-Ornaments-Deadpool-Hanging-Interior-Decoration-Fragrance-Accessories-Kids-Toy-Gifts.jpg_Q90.jpg_.webp', '2022-12-04 07:25:42', '2022-12-04 07:25:42'),
(152, 53, 'product-sub-images/Disney-Star-Wars-8cm-Toy-Master-Baby-Yoda-Darth-PVC-Action-Figure-Anime-Figures-Collection-Doll.jpg_Q90.jpg_ (1).webp', '2022-12-04 07:42:21', '2022-12-04 07:42:21'),
(153, 53, 'product-sub-images/Disney-Star-Wars-8cm-Toy-Master-Baby-Yoda-Darth-PVC-Action-Figure-Anime-Figures-Collection-Doll.jpg_Q90.jpg_ (2).webp', '2022-12-04 07:42:21', '2022-12-04 07:42:21'),
(154, 53, 'product-sub-images/Disney-Star-Wars-8cm-Toy-Master-Baby-Yoda-Darth-PVC-Action-Figure-Anime-Figures-Collection-Doll.jpg_Q90.jpg_ (3).webp', '2022-12-04 07:42:21', '2022-12-04 07:42:21'),
(155, 53, 'product-sub-images/Disney-Star-Wars-8cm-Toy-Master-Baby-Yoda-Darth-PVC-Action-Figure-Anime-Figures-Collection-Doll.jpg_Q90.jpg_ (4).webp', '2022-12-04 07:42:21', '2022-12-04 07:42:21'),
(156, 53, 'product-sub-images/Disney-Star-Wars-8cm-Toy-Master-Baby-Yoda-Darth-PVC-Action-Figure-Anime-Figures-Collection-Doll.jpg_Q90.jpg_.webp', '2022-12-04 07:42:21', '2022-12-04 07:42:21'),
(157, 54, 'product-sub-images/1pcs-Novelty-Halloween-Gift-Rubber-Soft-Snake-Prank-Joke-Funny-Toy-Garden-Props-Antistress-Horror-Fake.jpg_Q90.jpg_ (1).webp', '2022-12-04 07:50:51', '2022-12-04 07:50:51'),
(158, 54, 'product-sub-images/1pcs-Novelty-Halloween-Gift-Rubber-Soft-Snake-Prank-Joke-Funny-Toy-Garden-Props-Antistress-Horror-Fake.jpg_Q90.jpg_ (2).webp', '2022-12-04 07:50:51', '2022-12-04 07:50:51'),
(159, 54, 'product-sub-images/1pcs-Novelty-Halloween-Gift-Rubber-Soft-Snake-Prank-Joke-Funny-Toy-Garden-Props-Antistress-Horror-Fake.jpg_Q90.jpg_ (3).webp', '2022-12-04 07:50:51', '2022-12-04 07:50:51'),
(160, 54, 'product-sub-images/1pcs-Novelty-Halloween-Gift-Rubber-Soft-Snake-Prank-Joke-Funny-Toy-Garden-Props-Antistress-Horror-Fake.jpg_Q90.jpg_ (4).webp', '2022-12-04 07:50:51', '2022-12-04 07:50:51'),
(161, 54, 'product-sub-images/1pcs-Novelty-Halloween-Gift-Rubber-Soft-Snake-Prank-Joke-Funny-Toy-Garden-Props-Antistress-Horror-Fake.jpg_Q90.jpg_.webp', '2022-12-04 07:50:51', '2022-12-04 07:50:51'),
(162, 54, 'product-sub-images/1pcs-Novelty-Halloween-Gift-Rubber-Soft-Snake-Prank-Joke-Funny-Toy-Garden-Props-Antistress-Horror-Fake.png_.webp', '2022-12-04 07:50:51', '2022-12-04 07:50:51'),
(163, 55, 'product-sub-images/1Pc-Cartoon-Poor-Box-Cat-Kitty-Model-Small-Statue-Car-Figurine-Crafts-Garden-Figurine-Ornament-Kids.jpg_Q90.jpg_ (1).webp', '2022-12-04 08:00:55', '2022-12-04 08:00:55'),
(164, 55, 'product-sub-images/1Pc-Cartoon-Poor-Box-Cat-Kitty-Model-Small-Statue-Car-Figurine-Crafts-Garden-Figurine-Ornament-Kids.jpg_Q90.jpg_ (2).webp', '2022-12-04 08:00:55', '2022-12-04 08:00:55'),
(165, 55, 'product-sub-images/1Pc-Cartoon-Poor-Box-Cat-Kitty-Model-Small-Statue-Car-Figurine-Crafts-Garden-Figurine-Ornament-Kids.jpg_Q90.jpg_ (3).webp', '2022-12-04 08:00:55', '2022-12-04 08:00:55'),
(166, 55, 'product-sub-images/1Pc-Cartoon-Poor-Box-Cat-Kitty-Model-Small-Statue-Car-Figurine-Crafts-Garden-Figurine-Ornament-Kids.jpg_Q90.jpg_ (4).webp', '2022-12-04 08:00:55', '2022-12-04 08:00:55'),
(167, 55, 'product-sub-images/1Pc-Cartoon-Poor-Box-Cat-Kitty-Model-Small-Statue-Car-Figurine-Crafts-Garden-Figurine-Ornament-Kids.jpg_Q90.jpg_ (5).webp', '2022-12-04 08:00:55', '2022-12-04 08:00:55'),
(168, 55, 'product-sub-images/1Pc-Cartoon-Poor-Box-Cat-Kitty-Model-Small-Statue-Car-Figurine-Crafts-Garden-Figurine-Ornament-Kids.jpg_Q90.jpg_.webp', '2022-12-04 08:00:56', '2022-12-04 08:00:56'),
(169, 56, 'product-sub-images/Hot-Cute-Talking-Hamster-Plush-Animal-Doll-Baby-Kids-Sound-Record-Repeat-Educational-Toys-for-Children.jpg_640x640 (1).jpg', '2022-12-04 08:19:51', '2022-12-04 08:19:51'),
(170, 56, 'product-sub-images/Hot-Cute-Talking-Hamster-Plush-Animal-Doll-Baby-Kids-Sound-Record-Repeat-Educational-Toys-for-Children.jpg_640x640 (1).webp', '2022-12-04 08:19:51', '2022-12-04 08:19:51'),
(171, 56, 'product-sub-images/Hot-Cute-Talking-Hamster-Plush-Animal-Doll-Baby-Kids-Sound-Record-Repeat-Educational-Toys-for-Children.jpg_640x640 (2).webp', '2022-12-04 08:19:51', '2022-12-04 08:19:51'),
(172, 56, 'product-sub-images/Hot-Cute-Talking-Hamster-Plush-Animal-Doll-Baby-Kids-Sound-Record-Repeat-Educational-Toys-for-Children.jpg_640x640 (3).webp', '2022-12-04 08:19:51', '2022-12-04 08:19:51'),
(173, 56, 'product-sub-images/Hot-Cute-Talking-Hamster-Plush-Animal-Doll-Baby-Kids-Sound-Record-Repeat-Educational-Toys-for-Children.jpg_640x640.jpg', '2022-12-04 08:19:51', '2022-12-04 08:19:51'),
(174, 56, 'product-sub-images/Hot-Cute-Talking-Hamster-Plush-Animal-Doll-Baby-Kids-Sound-Record-Repeat-Educational-Toys-for-Children.jpg_640x640.webp', '2022-12-04 08:19:51', '2022-12-04 08:19:51'),
(175, 57, 'product-sub-images/Disney-Baymax-Marvel-Deadpool-Groot-Action-Figures-Movie-Guardians-Of-The-Galaxy-Figurine-Collection-Decoration-Kids.jpg_640x640 (1).webp', '2022-12-04 08:50:59', '2022-12-04 08:50:59'),
(176, 57, 'product-sub-images/Disney-Baymax-Marvel-Deadpool-Groot-Action-Figures-Movie-Guardians-Of-The-Galaxy-Figurine-Collection-Decoration-Kids.jpg_640x640.webp', '2022-12-04 08:50:59', '2022-12-04 08:50:59'),
(177, 57, 'product-sub-images/Disney-Baymax-Marvel-Deadpool-Groot-Action-Figures-Movie-Guardians-Of-The-Galaxy-Figurine-Collection-Decoration-Kids.jpg_Q90.jpg_ (1).webp', '2022-12-04 08:50:59', '2022-12-04 08:50:59'),
(178, 57, 'product-sub-images/Disney-Baymax-Marvel-Deadpool-Groot-Action-Figures-Movie-Guardians-Of-The-Galaxy-Figurine-Collection-Decoration-Kids.jpg_Q90.jpg_ (2).webp', '2022-12-04 08:50:59', '2022-12-04 08:50:59'),
(179, 57, 'product-sub-images/Disney-Baymax-Marvel-Deadpool-Groot-Action-Figures-Movie-Guardians-Of-The-Galaxy-Figurine-Collection-Decoration-Kids.jpg_Q90.jpg_.webp', '2022-12-04 08:50:59', '2022-12-04 08:50:59'),
(180, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_640x640 (1).webp', '2022-12-04 10:01:52', '2022-12-04 10:01:52'),
(181, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_640x640 (2).webp', '2022-12-04 10:01:52', '2022-12-04 10:01:52'),
(182, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_640x640 (3).webp', '2022-12-04 10:01:52', '2022-12-04 10:01:52'),
(183, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_640x640.webp', '2022-12-04 10:01:52', '2022-12-04 10:01:52'),
(184, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_Q90.jpg_ (1).webp', '2022-12-04 10:01:52', '2022-12-04 10:01:52'),
(185, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_Q90.jpg_ (2).webp', '2022-12-04 10:01:52', '2022-12-04 10:01:52'),
(186, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_Q90.jpg_ (3).webp', '2022-12-04 10:01:53', '2022-12-04 10:01:53'),
(187, 58, 'product-sub-images/Mini-Action-Figures-Finger-biting-Toys-Jurassic-Dinosaur-Park-Backpack-Pendant-Snap-Squad-T-rex-Dino.jpg_Q90.jpg_.webp', '2022-12-04 10:01:53', '2022-12-04 10:01:53'),
(188, 59, 'product-sub-images/5f9a82e8984d5a4bcbab964d55a657fc.jpg', '2022-12-04 11:06:52', '2022-12-04 11:06:52'),
(189, 59, 'product-sub-images/images.jpg', '2022-12-04 11:06:52', '2022-12-04 11:06:52'),
(190, 18, 'product-sub-images/317631871_868096041207616_2804756264726975465_n.jpg', '2022-12-05 09:26:03', '2022-12-05 09:26:03'),
(191, 18, 'product-sub-images/317826625_868096074540946_9080909411542584567_n.jpg', '2022-12-05 09:26:03', '2022-12-05 09:26:03'),
(192, 18, 'product-sub-images/317888888_868095997874287_4779506045041086482_n.jpg', '2022-12-05 09:26:03', '2022-12-05 09:26:03'),
(193, 18, 'product-sub-images/318296438_868095694540984_7590384136292890788_n.jpg', '2022-12-05 09:26:03', '2022-12-05 09:26:03'),
(196, 20, 'product-sub-images/photo_2022-12-05_14-02-40.jpg', '2022-12-05 10:47:18', '2022-12-05 10:47:18'),
(197, 20, 'product-sub-images/photo_2022-12-05_14-02-41.jpg', '2022-12-05 10:47:18', '2022-12-05 10:47:18'),
(198, 20, 'product-sub-images/photo_2022-12-05_14-02-56.jpg', '2022-12-05 10:47:18', '2022-12-05 10:47:18'),
(199, 26, 'product-sub-images/photo_2022-12-05_14-03-03.jpg', '2022-12-05 10:52:41', '2022-12-05 10:52:41'),
(200, 26, 'product-sub-images/photo_2022-12-05_14-03-05.jpg', '2022-12-05 10:52:41', '2022-12-05 10:52:41'),
(201, 16, 'product-sub-images/product1669554775.jpg', '2022-12-06 04:21:45', '2022-12-06 04:21:45'),
(202, 25, 'product-sub-images/photo_2022-12-06_12-16-22.jpg', '2022-12-06 05:18:10', '2022-12-06 05:18:10'),
(203, 25, 'product-sub-images/photo_2022-12-06_12-16-37.jpg', '2022-12-06 05:18:10', '2022-12-06 05:18:10'),
(204, 25, 'product-sub-images/photo_2022-12-06_12-16-56.jpg', '2022-12-06 05:18:10', '2022-12-06 05:18:10'),
(205, 25, 'product-sub-images/photo_2022-12-06_12-17-03.jpg', '2022-12-06 05:18:10', '2022-12-06 05:18:10'),
(206, 19, 'product-sub-images/photo_2022-12-06_16-03-43.jpg', '2022-12-06 10:20:48', '2022-12-06 10:20:48'),
(207, 19, 'product-sub-images/photo_2022-12-06_17-19-05.jpg', '2022-12-06 10:20:48', '2022-12-06 10:20:48'),
(208, 19, 'product-sub-images/photo_2022-12-06_17-19-18.jpg', '2022-12-06 10:20:48', '2022-12-06 10:20:48'),
(209, 19, 'product-sub-images/photo_2022-12-06_17-19-44.jpg', '2022-12-06 10:20:48', '2022-12-06 10:20:48'),
(210, 19, 'product-sub-images/photo_2022-12-06_17-19-53.jpg', '2022-12-06 10:20:48', '2022-12-06 10:20:48'),
(211, 60, 'product-sub-images/Lizards-Mask-Toy-Frog-Tongue-Sticking-TikTok-Same-Funny-Interactive-Desktop-Toy.jpg_Q90.jpg_ (1).webp', '2022-12-11 04:51:30', '2022-12-11 04:51:30'),
(212, 60, 'product-sub-images/Lizards-Mask-Toy-Frog-Tongue-Sticking-TikTok-Same-Funny-Interactive-Desktop-Toy.jpg_Q90.jpg_ (2).webp', '2022-12-11 04:51:30', '2022-12-11 04:51:30'),
(213, 60, 'product-sub-images/Lizards-Mask-Toy-Frog-Tongue-Sticking-TikTok-Same-Funny-Interactive-Desktop-Toy.jpg_Q90.jpg_ (3).webp', '2022-12-11 04:51:30', '2022-12-11 04:51:30'),
(214, 60, 'product-sub-images/Lizards-Mask-Toy-Frog-Tongue-Sticking-TikTok-Same-Funny-Interactive-Desktop-Toy.jpg_Q90.jpg_.webp', '2022-12-11 04:51:30', '2022-12-11 04:51:30'),
(215, 61, 'product-sub-images/Cartoon-Wooden-Whistle-with-Lanyard-Whistle-Children-s-Toy-Kindergarten-Gift.jpg_Q90.jpg_ (1).webp', '2022-12-11 08:18:39', '2022-12-11 08:18:39'),
(216, 61, 'product-sub-images/Cartoon-Wooden-Whistle-with-Lanyard-Whistle-Children-s-Toy-Kindergarten-Gift.jpg_Q90.jpg_ (2).webp', '2022-12-11 08:18:39', '2022-12-11 08:18:39'),
(217, 61, 'product-sub-images/Cartoon-Wooden-Whistle-with-Lanyard-Whistle-Children-s-Toy-Kindergarten-Gift.jpg_Q90.jpg_ (3).webp', '2022-12-11 08:18:39', '2022-12-11 08:18:39'),
(218, 61, 'product-sub-images/Cartoon-Wooden-Whistle-with-Lanyard-Whistle-Children-s-Toy-Kindergarten-Gift.jpg_Q90.jpg_.webp', '2022-12-11 08:18:39', '2022-12-11 08:18:39'),
(219, 61, 'product-sub-images/Lizards-Mask-Toy-Frog-Tongue-Sticking-TikTok-Same-Funny-Interactive-Desktop-Toy.jpg_Q90.jpg_.webp', '2022-12-11 08:18:39', '2022-12-11 08:18:39'),
(220, 62, 'product-sub-images/photo_2022-12-13_17-35-57.jpg', '2022-12-13 11:14:01', '2022-12-13 11:14:01'),
(221, 63, 'product-sub-images/photo_2022-12-13_15-41-59.jpg', '2022-12-13 11:26:08', '2022-12-13 11:26:08'),
(222, 63, 'product-sub-images/photo_2022-12-13_18-25-34.jpg', '2022-12-13 11:26:08', '2022-12-13 11:26:08'),
(223, 64, 'product-sub-images/photo_2022-12-13_15-42-35.jpg', '2022-12-13 12:05:16', '2022-12-13 12:05:16'),
(224, 64, 'product-sub-images/photo_2022-12-13_15-42-37.jpg', '2022-12-13 12:05:16', '2022-12-13 12:05:16'),
(225, 64, 'product-sub-images/photo_2022-12-13_15-42-38.jpg', '2022-12-13 12:05:16', '2022-12-13 12:05:16'),
(226, 65, 'product-sub-images/photo_2022-12-13_15-42-25.jpg', '2022-12-13 12:23:33', '2022-12-13 12:23:33'),
(227, 65, 'product-sub-images/photo_2022-12-13_15-42-26.jpg', '2022-12-13 12:23:33', '2022-12-13 12:23:33'),
(228, 65, 'product-sub-images/photo_2022-12-13_15-42-29.jpg', '2022-12-13 12:23:33', '2022-12-13 12:23:33'),
(229, 66, 'product-sub-images/photo_2022-12-14_13-36-02.jpg', '2022-12-14 06:47:09', '2022-12-14 06:47:09'),
(230, 66, 'product-sub-images/photo_2022-12-14_13-36-03.jpg', '2022-12-14 06:47:09', '2022-12-14 06:47:09'),
(231, 66, 'product-sub-images/photo_2022-12-14_13-36-04.jpg', '2022-12-14 06:47:09', '2022-12-14 06:47:09'),
(232, 66, 'product-sub-images/photo_2022-12-14_13-36-05.jpg', '2022-12-14 06:47:09', '2022-12-14 06:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`) VALUES
(2, 'Polash', 'polash@gmail.com', NULL, '$2y$10$0sb3k1thR1BP8d6SuxbS5ebPXyrU5VabODGM7A6sXoz5uajM/sWr6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-14 08:42:12', '2022-12-14 08:42:12', 0),
(4, 'Admin', 'admin@gmail.com', NULL, '$2y$10$uinyre4XhTfsm3X2r3ETaOxnDwBhjchS7AhTBMdQOlHA3ApTw8IXG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 08:34:47', '2022-12-20 08:34:47', 1),
(5, 'Tulona', 'tulona@gmail.com', NULL, '$2y$10$MqQQOqJZgUSM7a4KbrIXF.5/2sMyuM7X.S8y1urevgoOp2sVic146', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 08:42:28', '2022-12-20 08:42:28', 0),
(6, 'Mahadi Hasan Dipu', 'mahadi@gmail.com', NULL, '$2y$10$CviwPCuKdG.8zg7yBUjOyOGdhGeYQZBS00UAE1BZIug6vcyVWIFTW', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 10:28:09', '2022-12-20 10:28:09', 0),
(7, 'Tonmoy', 'tonmoy@gmail.com', NULL, '$2y$10$yd/gQMaAuzVwCYY8hmwRbujaRcZi9WHW4b0NY7E36bqYO0DKO3/Sm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 11:01:12', '2022-12-20 11:01:12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagetwos`
--
ALTER TABLE `pagetwos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_images`
--
ALTER TABLE `sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pagetwos`
--
ALTER TABLE `pagetwos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
