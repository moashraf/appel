-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 10:22 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohamed_ashraf`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) UNSIGNED NOT NULL,
  `Tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `Tel`, `Address`, `Name`, `Email`, `created_at`, `updated_at`) VALUES
(30, '27953429', 'Maybell Connelly', 'Prof. Roger Cummings IV', '560691589figoashrafe@femto15.com', '2018-11-05 17:14:33', '2018-11-05 17:14:33'),
(31, '18591840', 'Narciso Flatley', 'Miss Antonetta Bauch', '537299631figoashrafe@femto15.com', '2018-11-05 17:14:33', '2018-11-05 17:14:33'),
(32, '14374442', 'Donald Smith', 'Herminia Kohler', '432100735figoashrafe@femto15.com', '2018-11-05 17:14:33', '2018-11-05 17:14:33'),
(33, '11384146', 'Dr. Karson Braun DVM', 'Felicita Rodriguez', '380740350figoashrafe@femto15.com', '2018-11-05 17:14:33', '2018-11-05 17:14:33'),
(34, '12208167', 'Heloise Rosenbaum', 'Margarita Beahan', '374793169figoashrafe@femto15.com', '2018-11-05 17:14:33', '2018-11-05 17:14:33'),
(35, '25376524', 'Soledad McCullough', 'Elton Parker', '758034358figoashrafe@femto15.com', '2018-11-05 17:14:34', '2018-11-05 17:14:34'),
(36, '22037430', 'Dolly Glover', 'Katherine Bauch V', '650213410figoashrafe@femto15.com', '2018-11-05 17:14:34', '2018-11-05 17:14:34'),
(37, '44444444444444444444', 'Finn McKenzie V', 'Alvera Bailey Sr.', '408223637figoashrafe@femto15.com', '2018-11-05 17:14:34', '2018-11-05 17:18:38'),
(38, '16452120', 'Rosa Ledner Jr.', 'Jimmy Murphy Sr.', '734078884figoashrafe@femto15.com', '2018-11-05 17:14:34', '2018-11-05 17:14:34'),
(39, '25916170', 'Prof. Tyrel Larkin DVM', 'Hadley Satterfield', '88563821figoashrafe@femto15.com', '2018-11-05 17:14:34', '2018-11-05 17:14:34'),
(40, '18839893', 'Euna Bernhard PhD', 'Remington Pfannerstill Jr.', '282269481figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(41, '12804829', 'Roxanne Kohler', 'Ms. Ashtyn Leuschke', '469234880figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(42, '27522470', 'Mr. Franz VonRueden DVM', 'Katharina Gaylord PhD', '353415558figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(43, '28587868', 'Mr. Norbert Zboncak', 'Kailey Hessel', '62711818figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(44, '17450335', 'Prof. Bettie Hackett', 'Prof. Reba Becker', '50296625figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(45, '29455223', 'Harrison Nienow', 'Preston Gulgowski', '118318036figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(46, '10499281', 'Hollie Tremblay V', 'Mr. Louisa Collier', '525469986figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(47, '20001747', 'Mr. Corbin Carter', 'Clovis Green', '829386590figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(48, '20643686', 'Bernard Hamill', 'Caterina Collier IV', '637266610figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(49, '22879432', 'Darrin Corwin', 'Kamille Cassin', '505902965figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `Company_id` int(191) DEFAULT NULL,
  `Phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Company_id`, `Phone`, `password`, `Name`, `email`, `created_at`, `updated_at`) VALUES
(86, 1, '20201277', '$2y$10$E6bbauREPPy4ZoEC1ogVs.9v0nHRyib8rhAcWXCGybVvj/4NOx9Ru', 'Dayna Cummerata', '6690346figoashrafe@femto15.com', '2018-11-05 17:14:29', '2018-11-05 17:14:29'),
(87, 1, '13612130', '$2y$10$6qvHyR/BbPgsQmLaNLlnlOXJIG5a5chP6Aigsx97LaXwhUZ11OWiK', 'Raegan O\'Connell', '5359156figoashrafe@femto15.com', '2018-11-05 17:14:29', '2018-11-05 17:14:29'),
(88, 1, '20004156', '$2y$10$Cq4sJS9DhFt7K5rVlDw/zu2vG6NIpPZ84V3AU5SujP6x8rLg5bkmq', 'Bobbie Brakus', '5124420figoashrafe@femto15.com', '2018-11-05 17:14:30', '2018-11-05 17:14:30'),
(89, 1, '18491992', '$2y$10$3mCZ7epoUyEkZMWAgTJ9u.g0hCI82ETdEOHfQqgT9HpYHmGru8BDO', 'Vaughn Johnson', '6397160figoashrafe@femto15.com', '2018-11-05 17:14:30', '2018-11-05 17:14:30'),
(90, 1, '13607316', '$2y$10$jWGRnxNXRNQLNf9tw3V2lufDrQcqayVfRiqq6LSm4r9F/SJ2okl86', 'Samara Mante DDS', '8063003figoashrafe@femto15.com', '2018-11-05 17:14:31', '2018-11-05 17:14:31'),
(91, 1, '17517893', '$2y$10$fgrVKghAzQE4Iy.Eg7XfmubddsWmwUDPd/aEVBqDwDIO4ITfV3BeK', 'Vallie Tillman', '2208426figoashrafe@femto15.com', '2018-11-05 17:14:31', '2018-11-05 17:14:31'),
(92, 1, '11509663', '$2y$10$0oF2HsXYvkx0AJ5RT.IzIOlL0t9tmi/EgsQhkwiaPwt0lVX/HzK7u', 'Ms. Geraldine Runte', '6563098figoashrafe@femto15.com', '2018-11-05 17:14:31', '2018-11-05 17:14:31'),
(93, 1, '18745878', '$2y$10$b5s0EM9DhHXlMCfFfB8jEu.j6vnJ/d4V7MuJRFqRoy99gVqnGPDlK', 'Ms. Loren Schinner', '8487492figoashrafe@femto15.com', '2018-11-05 17:14:32', '2018-11-05 17:14:32'),
(94, 1, '14200371', '$2y$10$4UYUaEvZW7Htl4fQ1KZHWewm2uSMogIGTzB7Nylr84K/rEFxc38u6', 'Susie Nader', '1020930figoashrafe@femto15.com', '2018-11-05 17:14:32', '2018-11-05 17:14:32'),
(95, 1, '21439339', '$2y$10$pz0RNOSZ.UublSbgI751veoNz1l.TJ7PktjTIDoH0aXhQ1CL1poUC', 'Isaac Little', '3595481figoashrafe@femto15.com', '2018-11-05 17:14:33', '2018-11-05 17:14:33'),
(96, 1, '29041557', '$2y$10$l43q8yB7N630zoIC.rMBF.922EstiDsWqbFUdD0RywvBnglKJddWe', 'Ima Leannon', '3884653figoashrafe@femto15.com', '2018-11-05 17:15:07', '2018-11-05 17:15:07'),
(97, 1, '27327110', '$2y$10$lLgkeWnkv.Qd7Gsb79ZUkeiQJz7taLZ3d0VhW0kixRsObcS4P06nC', 'Efren Simonis', '2757626figoashrafe@femto15.com', '2018-11-05 17:15:08', '2018-11-05 17:15:08'),
(98, 1, '12242649', '$2y$10$gsMyj9FdTVJ6nHkBrfOV7e0x2LVYEr.oUJ4KlLtrqVSst9RzOlyNC', 'Dr. Cristian Emard DDS', '4840942figoashrafe@femto15.com', '2018-11-05 17:15:08', '2018-11-05 17:15:08'),
(99, 1, '12496578', '$2y$10$UF2atcqCmiIp6nkf2iKGAeXsIWIWoK7sltT5rbK.52RUDJrCW5UnG', 'Carlee Hirthe', '3241741figoashrafe@femto15.com', '2018-11-05 17:15:09', '2018-11-05 17:15:09'),
(100, 1, '18490769', '$2y$10$0FyPCdnzmoBeVh1J9smcW.LUBgQOkX7htwpga2TfNA3vVk.wON2/C', 'Dr. Luna Jakubowski', '8731221figoashrafe@femto15.com', '2018-11-05 17:15:09', '2018-11-05 17:15:09'),
(101, 1, '25198902', '$2y$10$D4bP39dDU4LalzNkHLrEPOwl4j0mbh2yNPQcJHpvfwbFNeuAOnoP.', 'Mariane Halvorson', '8816677figoashrafe@femto15.com', '2018-11-05 17:15:09', '2018-11-05 17:15:09'),
(102, 1, '29767722', '$2y$10$zyt2FRs7Es2gf7lzXN5PgeO5fEfH8sU0/oTsq8PvNEHlnibnvFTTe', 'Ron Kutch', '7708788figoashrafe@femto15.com', '2018-11-05 17:15:10', '2018-11-05 17:15:10'),
(103, 1, '23047967', '$2y$10$bQq.Fc6Hk4zX3uqLvMHeDO5GmPJ1.QXpni0gyoc3Q.jjkh6UKctY.', 'Alisha McDermott I', '1526435figoashrafe@femto15.com', '2018-11-05 17:15:10', '2018-11-05 17:15:10'),
(104, 1, '26805224', '$2y$10$EiySqr/A2Vgc4aQkHU5kjeo5bPevhiF9EdthPWXrxiqu56x.xtFea', 'Dr. Cameron Gaylord DVM', '6594569figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(105, 1, '28143068', '$2y$10$nRg27IfmKFgXXlu1IEFUQu2HpNCO8evM9geCFMbVWqNFbBUTLX.Tu', 'Leanna McGlynn', '2411141figoashrafe@femto15.com', '2018-11-05 17:15:11', '2018-11-05 17:15:11'),
(106, 41, '1091357842', '$2y$10$2jgKb0UtXJDRlEYQDqGhiept4TGZoTlckeE2aNNDCrVbDf8XhrMDC', 'figoashraf figoashraf', 'figo_cvhv00fh735@femto15.com', '2018-11-05 17:18:07', '2018-11-05 17:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_03_063021_create_companies_table', 1),
(4, '2018_11_03_063607_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'm8EVHiSgus', 'ashraf@femto15.com', NULL, '$2y$10$GWygMKgbKRhNmJjkNd4LfOiBkUH.giMspsh5Ty2h/TcmeakF2v4Iu', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`Email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
