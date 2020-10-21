-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 06:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lksn_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `choice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Payment', NULL, NULL),
(2, 'Procurement', NULL, NULL),
(3, 'IT', NULL, NULL),
(4, 'Finance', NULL, NULL),
(5, 'HR', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_21_015124_create_divisions_table', 1),
(5, '2020_10_21_015208_create_votes_table', 1),
(6, '2020_10_21_015326_create_polls_table', 1),
(7, '2020_10_21_015506_create_choices_table', 1),
(8, '2020_10_21_015642_relation_all', 1);

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
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `title`, `description`, `deadline`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'bumi bulat atau bumi datar ?', 'kamu tim mana ?', '2020-12-01 15:00:00', 19, '2020-10-20 20:43:04', '2020-10-20 20:43:04', NULL),
(2, 'bumi bulat atau bumi datar ?', 'kamu tim mana ?', '2020-12-01 15:00:00', 19, '2020-10-20 20:43:49', '2020-10-20 20:43:49', NULL),
(3, 'bumi bulat atau bumi datar ?', 'kamu tim mana ?', '2020-12-01 15:00:00', 19, '2020-10-20 20:44:15', '2020-10-20 20:44:15', NULL),
(4, 'bumi bulat atau bumi datar ?', 'kamu tim mana ?', '2020-12-01 15:00:00', 19, '2020-10-20 20:44:29', '2020-10-20 20:44:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`, `updated_at`, `division_id`) VALUES
(1, 'payment_1', '$2y$10$gRc1IqxpCDVglNeLWcGyte99FTyYvtcJV/9TxRfFAibAkme/0Yxfm', 'user', '2020-10-20 19:23:50', '2020-10-20 19:23:50', 1),
(2, 'payment_2', '$2y$10$RevVlWW4.xFoQhUbs25LnOGksxOnAVJOdwVkuxjQe/Ue1OovgY3gq', 'user', '2020-10-20 19:23:50', '2020-10-20 19:23:50', 1),
(3, 'payment_3', '$2y$10$L.EQP5LJUdF6WkXaNFiKv.WqdIzExDyg2A53Wv1vZnolgPKwAonL6', 'user', '2020-10-20 19:23:50', '2020-10-20 19:23:50', 1),
(4, 'payment_4', '$2y$10$oTca9JRAcheGfkd2sODrq.zcP.KJoHWAxDJkWE1NMap4PewZ3fv5i', 'user', '2020-10-20 19:23:50', '2020-10-20 19:23:50', 1),
(5, 'payment_5', '$2y$10$Unk03NmMNYllhse8SYan6.ThBvonPj5BMD2R6/vFwq4.WpVZ/Y68u', 'user', '2020-10-20 19:23:50', '2020-10-20 19:23:50', 1),
(6, 'procurement_1', '$2y$10$4r3KkKqifXVOKMUC3j.Yq.TZu8t1U0fQbfvRFW.rAINWnzruaaGEW', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 2),
(7, 'procurement_2', '$2y$10$5ONUZqnetOnC1.s5UxV.fevIJQNwnh9uyGzihJZXIRmRUo63Y3LIO', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 2),
(8, 'procurement_3', '$2y$10$MO6S5UKwN7kTkyhc63ZhiuvehOg2a5hFp0y3hHgP8ZGkXzLJP2NHq', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 2),
(9, 'it_1', '$2y$10$UNl/oKqkW0.TS2xWnkCweOJzTGlY41XiQhluCRNAjUh3uYSEenyfC', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 3),
(10, 'it_2', '$2y$10$UPrMaMfAiyHZ7H4b2mhIquWkP24mBujP1osIcAFTI.F1qtjyF3LAW', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 3),
(11, 'it_3', '$2y$10$wQ0RCvQfVdDkNKyJ.4pujOigWfRz0J/Ho7tJ7JaWdIq/P06klNk7i', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 3),
(12, 'it_4', '$2y$10$pmAPzk5aMGA2VJd8BvoXbulscKYZGtb5HEVWHNc8i.e/HX9DH9Y9G', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 3),
(13, 'it_5', '$2y$10$lHPWIUBUdpsVHa3MhPLNkOJIsi3McZsRefpIJmNK9Wz/p.YQd7ge2', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 3),
(14, 'it_6', '$2y$10$ALKlDI18u.Erv2yu/Q76JOuXjmMyOXT5Nj9BAZp5wlPe4rLz.GCb.', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 3),
(15, 'it_7', '$2y$10$4x8vJmnZuVXBE.O4FN2w5OOdWey5cjA2rRa1frE6Oktpd2d46WC5e', 'user', '2020-10-20 19:31:18', '2020-10-20 19:31:18', 3),
(16, 'finance_1', '$2y$10$Gn5GvYT0qAoT9mQ4J81h1u9NK5ezWVl/ohsBv15wwKxxf5zS.ocSi', 'user', '2020-10-20 19:31:19', '2020-10-20 19:31:19', 4),
(17, 'finance_2', '$2y$10$UbQjBPVqXVVVrfQSV1jCxezfmCMRm9rJ3g4n96VQoln/X49QlaBkW', 'user', '2020-10-20 19:31:19', '2020-10-20 19:31:19', 4),
(18, 'finance_3', '$2y$10$SEwORFrwYMgikSe5DFkUpe1RUm7td4KwS8Be1i4KKVMFfr7Cw4Q8y', 'user', '2020-10-20 19:31:19', '2020-10-20 19:31:19', 4),
(19, 'hr_1', '$2y$10$PbiJr04e8Y//SB4D3hvdfO5Vig0SoDHupoDYy4Pbz/dSCeKhE/5iq', 'admin', '2020-10-20 19:31:19', '2020-10-20 20:11:35', 5),
(20, 'hr_2', '$2y$10$RH1JBYE7/.vyYDBRCG.q.ObfsXnnPF/.FhF2Bw8EQsQKIpd.I9/ei', 'admin', '2020-10-20 19:31:19', '2020-10-20 19:31:19', 5),
(21, 'hr_3', '$2y$10$LKFK/AfZmj4J7rbNuvgKxO7FBtXfuoOIlEcV0JHJe.qNDbDmWkqRi', 'admin', '2020-10-20 19:31:19', '2020-10-20 19:31:19', 5);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `choice_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `choices_poll_id_foreign` (`poll_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polls_created_by_foreign` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_division_id_foreign` (`division_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_choice_id_foreign` (`choice_id`),
  ADD KEY `votes_user_id_foreign` (`user_id`),
  ADD KEY `votes_poll_id_foreign` (`poll_id`),
  ADD KEY `votes_division_id_foreign` (`division_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `choices_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_choice_id_foreign` FOREIGN KEY (`choice_id`) REFERENCES `choices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
