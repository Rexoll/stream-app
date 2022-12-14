-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 12:02 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stream_app_db`
--

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_11_08_104822_create_movies_table', 1),
(4, '2022_11_08_111221_create_packages_table', 1),
(5, '2022_11_08_111621_create_transactions_table', 1),
(6, '2022_11_08_112152_create_user_premiums_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `casts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `large_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_about` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `trailer`, `movie`, `casts`, `categories`, `small_thumbnail`, `large_thumbnail`, `release_date`, `about`, `short_about`, `duration`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'avatar123', 'https://www.youtube.com/watch?v=SXHapd0oSyM', 'https://www.youtube.com/watch?v=enBNEQ9g5SI', 'kevin', 'action,scifi', 'fNwyH2syzjfilm1.jpg', 'O0Y1l9BQbLfilm5.jpg', '2022-11-02', 'Avatar 2 adalah sebuah film fiksi ilmiah epik Amerika Serikat yang disutradarai, produksi, dan ditulis oleh James Cameron. Film tersebut adalah film pertama dari empat sekuel yang direncanakan untuk filmnya Avatar.', 'film mantap', '1h29m', 0, NULL, '2022-11-10 20:19:06', '2022-11-12 23:01:32'),
(5, 'spidermen', 'https://www.youtube.com/watch?v=6iVwbJMSU9o', 'https://www.youtube.com/watch?v=qUpAgI8vKx4', 'kevin', 'scifi', '69TgEgizB4film3.jpg', 'tzBH4pFPytfilm4.jpg', '2022-11-09', 'Avatar 2 adalah sebuah film fiksi ilmiah epik Amerika Serikat yang disutradarai, produksi, dan ditulis oleh James Cameron. Film tersebut adalah film pertama dari empat sekuel yang direncanakan untuk filmnya Avatar.', 'film mantap', '1h20m', 1, NULL, '2022-11-11 18:59:22', '2022-11-11 18:59:22'),
(6, 'guardian galaxy', 'https://www.youtube.com/watch?v=gCCvz7ecqNs', 'https://www.youtube.com/watch?v=enBNEQ9g5SI', 'rokli', 'scifi', 'fGzzCl8PwIfilm4.jpg', 'dOw7NwrsAJfilm5.jpg', '2022-11-11', 'Avatar 2 adalah sebuah film fiksi ilmiah epik Amerika Serikat yang disutradarai, produksi, dan ditulis oleh James Cameron. Film tersebut adalah film pertama dari empat sekuel yang direncanakan untuk filmnya Avatar.', 'film mantap', '1h20m', 1, NULL, '2022-11-11 20:33:43', '2022-11-11 20:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `max_days` int(11) NOT NULL,
  `max_users` int(11) NOT NULL,
  `is_download` tinyint(1) NOT NULL,
  `is_4k` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `max_days`, `max_users`, `is_download`, `is_4k`, `created_at`, `updated_at`) VALUES
(1, 'standard', 380000.00, 30, 2, 1, 1, '2022-11-08 04:49:53', '2022-11-08 04:49:53'),
(2, 'gold', 699000.00, 60, 7, 1, 1, '2022-11-08 04:49:53', '2022-11-08 04:49:53');

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `transaction_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `package_id`, `user_id`, `amount`, `transaction_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 15000.00, 'qwerty', 'sukses', '2022-11-13 06:21:54', '2022-11-13 06:21:54'),
(2, 1, 1, 15000.00, 'qwerty123212', 'sukses', '2022-11-13 06:21:54', '2022-11-13 06:21:54'),
(3, 2, 2, 699000.00, 'LHIIWPKG2F', 'pending', '2022-11-30 21:21:05', '2022-11-30 21:21:05'),
(4, 2, 2, 699000.00, 'EJMAY2FTEU', 'pending', '2022-11-30 21:22:02', '2022-11-30 21:22:02'),
(5, 2, 2, 699000.00, 'EAHPHI1MJP', 'pending', '2022-11-30 21:22:28', '2022-11-30 21:22:28'),
(6, 2, 2, 699000.00, '9BNIULG1DD', 'pending', '2022-11-30 21:23:14', '2022-11-30 21:23:14'),
(7, 2, 2, 699000.00, 'MLDNVZEQQ2', 'pending', '2022-11-30 21:28:21', '2022-11-30 21:28:21'),
(8, 1, 2, 380000.00, 'MUZAN7M5UX', 'success', '2022-12-01 11:38:31', '2022-12-02 05:16:13'),
(9, 1, 2, 380000.00, 'V57UPZDYAK', 'pending', '2022-12-02 07:04:51', '2022-12-02 07:04:51'),
(10, 1, 2, 380000.00, 'SBYHLGYYWQ', 'pending', '2022-12-02 07:09:56', '2022-12-02 07:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','member') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone_number`, `avatar`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@bisnisinformatika.com', '$2y$10$Z7U1JdthlG9TsDwhAFcspeQE/Di8fAc6Vb72vxziWSmG3C5GMHMMG', '08557829371', '', 'admin', '2022-11-08 04:49:53', '2022-11-08 04:49:53'),
(2, 'kevin azela', 'kevin.azela@gmail.com', '$2y$10$JIwAiDBEanz0YRLEgiFHieyfECiPYc2HW5hlnvDnglK4h2EOWutcq', '08557829371', NULL, 'member', '2022-11-16 02:56:48', '2022-11-16 02:56:48'),
(3, 'adrian napitupulu', 'adrian@gmail.com', '$2y$10$LAKSeN4j4r9X40TmP9BODegBrIFnKK/MTCIl1l7x6u.RDMBXiDIKe', '08131645785', NULL, 'member', '2022-12-03 07:25:53', '2022-12-03 07:25:53'),
(4, 'belva', 'belva@gmail.com', '$2y$10$fpfXK7G4yYhaiyt3oWb9GuqeINaElLFx3IvhGN7AMpcELn1Q9k3fO', '0855976715', NULL, 'member', '2022-12-03 07:26:22', '2022-12-03 07:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_premiums`
--

CREATE TABLE `user_premiums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `end_of_subscription` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_premiums`
--

INSERT INTO `user_premiums` (`id`, `package_id`, `user_id`, `end_of_subscription`, `created_at`, `updated_at`) VALUES
(4, 2, 3, '2023-01-06', '2022-12-03 14:37:04', '2022-12-03 14:37:04'),
(5, 1, 4, '2023-01-07', '2022-12-03 14:37:34', '2022-12-03 14:37:34'),
(6, 2, 2, '2023-01-06', '2022-12-03 14:38:04', '2022-12-03 14:38:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_package_id_foreign` (`package_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_premiums`
--
ALTER TABLE `user_premiums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_premiums_package_id_foreign` (`package_id`),
  ADD KEY `user_premiums_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_premiums`
--
ALTER TABLE `user_premiums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_premiums`
--
ALTER TABLE `user_premiums`
  ADD CONSTRAINT `user_premiums_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `user_premiums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
