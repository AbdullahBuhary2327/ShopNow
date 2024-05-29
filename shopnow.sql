-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 08:21 AM
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
-- Database: `shopnow`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(7, 'Mobile Phones', '2024-01-23 22:11:16', '2024-01-23 22:11:16'),
(8, 'Laptops', '2024-01-23 22:11:22', '2024-01-23 22:11:22'),
(9, 'Shoes', '2024-01-23 22:11:28', '2024-01-23 22:11:28'),
(10, 'Shirts', '2024-01-23 22:11:34', '2024-01-23 22:11:34'),
(12, 'T-Shirts', '2024-01-23 22:35:59', '2024-01-23 22:35:59'),
(26, 'Toys', '2024-01-24 03:12:06', '2024-01-24 03:12:06'),
(27, 'Ladies Wear', '2024-01-24 21:03:47', '2024-01-24 21:03:47'),
(28, 'Denim Jeans', '2024-01-24 21:07:44', '2024-01-24 21:07:44'),
(29, 'Watches', '2024-01-24 21:08:10', '2024-01-24 21:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_22_042249_create_sessions_table', 1),
(7, '2024_01_23_145721_create_categories_table', 2),
(8, '2024_01_24_051824_create_products_table', 3),
(9, '2024_01_25_040841_create_carts_table', 4),
(10, '2024_01_25_072123_create_orders_table', 5),
(11, '2024_01_25_082554_create_orders_table', 6),
(12, '2024_01_30_034536_create_wishlists_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `title`, `quantity`, `price`, `image`, `product_id`, `user_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(5, 'User 2', 'user2@gmail.com', '0771111111', '129 Main Street , Kandy', 'Tag Heuer', '1', 1500000.00, '1706151756.jpg', 26, 3, 'Payment Received', 'Delivered', '2024-01-25 03:06:49', '2024-01-25 09:56:28'),
(6, 'User 2', 'user2@gmail.com', '0771111111', '129 Main Street , Kandy', 'Levi\'s Denim', '3', 43500.00, '1706150719.jpg', 22, 3, 'Payment Received', 'Delivered', '2024-01-25 03:06:49', '2024-01-25 09:58:02'),
(7, 'User 1', 'user1@gmail.com', '0777777777', '123/A kandy', 'Nike Air Force 1', '2', 68000.00, '1706112216.jpg', 9, 1, 'Payment Received', 'Delivered', '2024-01-25 03:07:59', '2024-01-25 10:01:03'),
(8, 'User 1', 'user1@gmail.com', '0777777777', '123/A kandy', 'Asus ROG Zephyrus G14', '1', 410000.00, '1706112098.jpg', 7, 1, 'Order Cancelled', 'Order Cancelled', '2024-01-25 03:07:59', '2024-01-26 08:58:38'),
(9, 'User 1', 'user1@gmail.com', '0777777777', '123/A kandy', 'Brooks Brothers', '3', 60000.00, '1706112242.jpg', 11, 1, 'Payment Received', 'Processing', '2024-01-25 07:58:11', '2024-01-25 07:58:11'),
(10, 'User 1', 'user1@gmail.com', '0777777777', '123/A kandy', 'Diesel Denim', '4', 20000.00, '1706150774.jpg', 23, 1, 'Payment Received', 'Processing', '2024-01-25 07:58:11', '2024-01-25 07:58:11'),
(11, 'User 1', 'user1@gmail.com', '0777777777', '123/A kandy', 'NaviForce', '1', 25000.00, '1706152132.jpg', 31, 1, 'Payment Received', 'Delivered', '2024-01-25 07:58:11', '2024-01-25 09:54:05'),
(12, 'User 1', 'user1@gmail.com', '0777777777', '123/A kandy', 'Tommy Hilfiger T Shirt', '10', 80000.00, '1706112286.jpg', 13, 1, 'Payment Received', 'Delivered', '2024-01-25 08:45:00', '2024-01-25 09:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(5, 'I Phone 11', '256 GB , 4GB RAM', '1706112079.jpg', 'Mobile Phones', '115', '180000', '170000', '2024-01-24 01:03:45', '2024-01-24 10:31:19'),
(6, 'Samsung S23 Ultra', '512 GB , 12 GB RAM', '1706112050.jpg', 'Mobile Phones', '109', '395000', NULL, '2024-01-24 01:10:07', '2024-01-24 23:35:20'),
(7, 'Asus ROG Zephyrus G14', 'AMD Ryzen 9 5900HS, NVIDIA GeForce RTX 3060 , 14-inch QHD (2560 x 1440) display', '1706112098.jpg', 'Laptops', '110', '410000', NULL, '2024-01-24 01:15:17', '2024-01-26 08:58:38'),
(8, 'Razer Blade 15', 'ntel Core i7-10750H or i7-10875H, NVIDIA GeForce RTX 2060 to RTX 3080', '1706112203.jpg', 'Laptops', '112', '1300000', NULL, '2024-01-24 01:19:31', '2024-01-24 10:33:23'),
(9, 'Nike Air Force 1', 'Classic basketball-inspired sneaker with a clean design', '1706112216.jpg', 'Shoes', '146', '35000', '34000', '2024-01-24 01:23:08', '2024-01-25 03:07:59'),
(10, 'Adidas Ultraboost', 'Known for its comfort and energy return.', '1706112230.jpg', 'Shoes', '135', '40000', '38950', '2024-01-24 01:27:30', '2024-01-24 10:33:50'),
(11, 'Brooks Brothers', 'Known for their classic and timeless designs.', '1706112242.jpg', 'Shirts', '157', '25000', '20000', '2024-01-24 01:30:32', '2024-01-25 07:58:11'),
(12, 'Polo Ralph Lauren Shirts', 'Luxury Brand', '1706112268.jpg', 'Shirts', '200', '12000', NULL, '2024-01-24 01:33:22', '2024-01-24 10:34:28'),
(13, 'Tommy Hilfiger T Shirt', 'Tommy Hilfiger is a classic American brand', '1706112286.jpg', 'T-Shirts', '190', '8000', NULL, '2024-01-24 01:36:15', '2024-01-25 08:45:00'),
(14, 'Under Armour', 'keeps you cool and dry', '1706112299.jpg', 'T-Shirts', '250', '20000', '19000', '2024-01-24 01:40:47', '2024-01-24 10:34:59'),
(18, 'Monopoly', 'Classic board games', '1706112314.jpg', 'Toys', '500', '17000', '16000', '2024-01-24 03:13:20', '2024-01-24 10:35:14'),
(19, 'Hot Wheels', 'Hot Wheel toy Cars', '1706112327.jpg', 'Toys', '500', '7000', '6500', '2024-01-24 03:14:47', '2024-01-24 10:35:27'),
(20, 'Women\'s Jeans', 'Casual pants made of denim fabric', '1706150107.jpg', 'Ladies Wear', '160', '8000', '7800', '2024-01-24 21:05:07', '2024-01-24 21:05:07'),
(21, 'Women\'s T-Shirt', 'A short-sleeved, casual top', '1706150229.jpg', 'Ladies Wear', '155', '7200', NULL, '2024-01-24 21:07:09', '2024-01-24 21:07:09'),
(22, 'Levi\'s Denim', 'Iconic and enduring, Levi\'s offers classic denim with timeless style and durability.', '1706150719.jpg', 'Denim Jeans', '119', '15000', '14500', '2024-01-24 21:15:19', '2024-01-25 03:06:49'),
(23, 'Diesel Denim', 'Edgy and contemporary, Diesel jeans make a bold statement with unique washes and cuts.', '1706150774.jpg', 'Denim Jeans', '141', '5000', NULL, '2024-01-24 21:16:14', '2024-01-25 07:58:11'),
(24, 'Rolex', 'Swiss luxury synonymous with elegance and precision', '1706151627.jpeg', 'Watches', '108', '3802738', NULL, '2024-01-24 21:30:27', '2024-01-24 21:30:27'),
(25, 'Omega', 'Innovative Swiss watches, celebrated for precision and durability.', '1706151687.png', 'Watches', '110', '2000000', NULL, '2024-01-24 21:31:27', '2024-01-24 21:31:27'),
(26, 'Tag Heuer', 'Avant-garde Swiss designs, known for sporty elegance and performance.', '1706151756.jpg', 'Watches', '112', '1500000', NULL, '2024-01-24 21:32:36', '2024-01-25 03:06:49'),
(27, 'Seiko', 'Japanese craftsmanship meets innovation, offering affordable luxury.', '1706151825.jpg', 'Watches', '112', '100000', '97950', '2024-01-24 21:33:45', '2024-01-24 21:33:45'),
(28, 'Citizen', 'Japanese brand known for Eco-Drive technology and stylish reliability', '1706151897.jpg', 'Watches', '125', '110000', '106000', '2024-01-24 21:34:57', '2024-01-24 21:34:57'),
(29, 'Tissot', 'Swiss brand combining tradition with innovation, accessible luxury', '1706151951.jpg', 'Watches', '135', '296000', NULL, '2024-01-24 21:35:51', '2024-01-24 21:35:51'),
(30, 'Rado', 'Swiss brand acclaimed for innovative use of materials, especially ceramic.', '1706152041.jpg', 'Watches', '140', '1600000', NULL, '2024-01-24 21:37:21', '2024-01-24 21:37:21'),
(31, 'NaviForce', 'Affordable, durable watches with a stylish edge for any occasion', '1706152132.jpg', 'Watches', '149', '25000', NULL, '2024-01-24 21:38:52', '2024-01-25 07:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('L8vpJ4k0lsFItgSueKOzao7zA4XggqUMZoTkci9g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXJaWGJ0Uk9DREd6OHFad0JqRnB3NEU0UEpkZFcxd1lZTkt5WU01MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1706599198);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'User 1', 'user1@gmail.com', '0', '0777777777', '123/A, 2nd Street, kandy', NULL, '$2y$12$HbM80/TqJFsqqocSBBulXO9M.AzXXGl0HJBr6bs6nhu9Pr0W.ragG', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 23:06:49', '2024-01-30 01:31:44'),
(2, 'Admin', 'admin@gmail.com', '1', '0771212121', '68/Z Colombo', NULL, '$2y$12$ou3aVy/oJatC2vfVxRh7w.xJQkSbUTb/1096x8Gp/tbQVpTwbpE7.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-21 23:09:40', '2024-01-21 23:09:40'),
(3, 'User 2', 'user2@gmail.com', '0', '0771111111', '129 Main Street , Kandy', NULL, '$2y$12$X9pAqfz/87A9vVqd0QN2COBxQ47ZaUv3BziiYoPbcodN1f4f7.ZkS', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 00:28:45', '2024-01-25 00:28:45'),
(4, 'User 3', 'user3@gmail.com', '0', '0776953258', '98 Messenger St Colombo', NULL, '$2y$12$IA0kom.0L6ZhEBK4s29Gn.U6gdocIeycVcKEjY3/pjNnoVHCSITDO', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-26 00:38:48', '2024-01-30 01:32:09'),
(5, 'User 4', 'user4@gmail.com', '0', '0778721369', '65/B Old Moor St, Colombo', NULL, '$2y$12$P7OvsPSGP4qnQP3M2pDebe/GRtDNE5EbucZgrrJ4kSf98PmIZH77W', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-26 00:40:12', '2024-01-26 00:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Asus ROG Zephyrus G14', 'AMD Ryzen 9 5900HS, NVIDIA GeForce RTX 3060 , 14-inch QHD (2560 x 1440) display', '1706112098.jpg', 'Laptops', '110', '410000', NULL, 7, 3, '2024-01-29 23:24:23', '2024-01-29 23:24:23'),
(4, 'Brooks Brothers', 'Known for their classic and timeless designs.', '1706112242.jpg', 'Shirts', '157', '25000', '20000', 11, 3, '2024-01-29 23:25:07', '2024-01-29 23:25:07'),
(5, 'Tommy Hilfiger T Shirt', 'Tommy Hilfiger is a classic American brand', '1706112286.jpg', 'T-Shirts', '190', '8000', NULL, 13, 3, '2024-01-29 23:25:15', '2024-01-29 23:25:15'),
(6, 'Nike Air Force 1', 'Classic basketball-inspired sneaker with a clean design', '1706112216.jpg', 'Shoes', '146', '35000', '34000', 9, 1, '2024-01-30 00:03:34', '2024-01-30 00:03:34'),
(7, 'Hot Wheels', 'Hot Wheel toy Cars', '1706112327.jpg', 'Toys', '500', '7000', '6500', 19, 1, '2024-01-30 00:03:46', '2024-01-30 00:03:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
