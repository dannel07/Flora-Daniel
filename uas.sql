-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 11:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'daniel', 'sinambela@gmail.com', 'admin', '$2a$12$LGFIUyDjofkT7AB0pHCIru6maFjhlKn1xsSNvrfaEOPNa4dhBoNt6', NULL, NULL, NULL);

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
-- Table structure for table `lapangans`
--

CREATE TABLE `lapangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lapangan_id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `harga_siang` varchar(255) NOT NULL,
  `harga_malam` varchar(255) NOT NULL,
  `foto1` varchar(255) NOT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lapangans`
--

INSERT INTO `lapangans` (`id`, `lapangan_id`, `nama`, `keterangan`, `harga_siang`, `harga_malam`, `foto1`, `foto2`, `foto3`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LP0001', 'Lapangan A', 'Parpniel', '55000', '70000', 'lapangan/LP0001_664c6da815bb7.png', 'lapangan/LP0001_664c6da816f86.png', 'lapangan/LP0001_664c6da81755c.png', '2024-05-21 09:47:20', '2024-05-21 09:47:20', NULL),
(2, 'LP0002', 'Lapangan b', 'Parpniel', '45000', '77000', 'lapangan/LP0002_664da7fa36115.png', 'lapangan/LP0002_664da7fa3650d.jpg', 'lapangan/LP0002_664da7fa36ae2.jpg', '2024-05-22 08:08:26', '2024-05-22 08:08:26', NULL),
(3, 'LP0003', 'Lapangan C', 'Parpniel', '57000', '80000', 'lapangan/LP0003_664db053f2384.jpg', 'lapangan/LP0003_664db053f27af.jpg', 'lapangan/LP0003_664db053f2aac.png', '2024-05-22 08:44:03', '2024-05-22 08:44:03', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_05_123830_create_lapangans_table', 1),
(6, '2021_07_06_025621_create_admins_table', 1),
(7, '2021_07_06_030123_create_user__bookings_table', 1),
(8, '2021_07_06_030554_create_user__bayars_table', 1),
(9, '2021_07_09_165859_create_rekenings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekenings`
--

CREATE TABLE `rekenings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomer_rekening` varchar(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekenings`
--

INSERT INTO `rekenings` (`id`, `nomer_rekening`, `nama_rekening`, `created_at`, `updated_at`) VALUES
(1, '5389 0101 7008 531', 'BRI/ Daniel Sinambela', '2024-05-21 09:52:12', '2024-05-21 13:15:09'),
(2, '081263167246', 'Dana/ Daniel Sinambela', '2024-05-21 13:15:26', '2024-05-21 13:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `no_hp`, `jk`, `username`, `email`, `email_verified_at`, `alamat`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GSF0001', 'Daniel Sinambela', '081263167246', 'Laki-Laki', 'daniel', 'danielsinambela707@gmail.com', NULL, 'Sinambela', '$2y$10$AuLeBXx8OJJlN.xtJ/Axp.8PQYITmEvTUrpKCz7J8Gqn0/mCCgoPq', NULL, NULL, NULL, '2024-05-21 09:43:24', '2024-05-21 09:43:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user__bayars`
--

CREATE TABLE `user__bayars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `bukti_tf` varchar(255) NOT NULL,
  `tanggal_upload` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user__bayars`
--

INSERT INTO `user__bayars` (`id`, `booking_id`, `user_id`, `tanggal`, `bukti_tf`, `tanggal_upload`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BF0001', 'GSF0001', '22 May 2024, ', 'pembayaran/BF0001_664c6f5825576.png', '21 May 2024, 16:54:32 PM', 'Sudah Bayar', '2024-05-21 09:54:32', '2024-05-21 10:00:02', NULL),
(2, 'BF0002', 'GSF0001', '24 May 2024, ', 'pembayaran/BF0002_664c9e918a250.png', '21 May 2024, 20:16:01 PM', 'Sudah Bayar', '2024-05-21 13:16:01', '2024-05-21 13:16:31', NULL),
(3, 'BF0003', 'GSF0001', '22 Jun 2024, ', 'pembayaran/BF0003_664da89d249f9.jpg', '22 May 2024, 15:11:09 PM', 'Pending', '2024-05-22 08:11:09', '2024-05-22 08:11:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user__bookings`
--

CREATE TABLE `user__bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `lapangan_id` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `lama_mulai` varchar(255) NOT NULL,
  `jam_mulai` varchar(255) NOT NULL,
  `jam_habis` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `harga_lapangan` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user__bookings`
--

INSERT INTO `user__bookings` (`id`, `booking_id`, `user_id`, `lapangan_id`, `tanggal`, `lama_mulai`, `jam_mulai`, `jam_habis`, `jenis`, `harga_lapangan`, `total`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BF0001', 'GSF0001', 'LP0001', '2024-05-22', '2 Jam', '13:50', '15:50', 'Siang', '55000', '110000', 'Sudah Bayar', '2024-05-21 09:51:32', '2024-05-21 10:00:02', NULL),
(2, 'BF0002', 'GSF0001', 'LP0001', '2024-05-24', '4 Jam', '13:00', '17:00', 'Siang', '55000', '220000', 'Sudah Bayar', '2024-05-21 13:14:05', '2024-05-21 13:16:31', NULL),
(3, 'BF0003', 'GSF0001', 'LP0002', '2024-06-22', '3 Jam', '14:00', '17:00', 'Siang', '45000', '135000', 'Pending', '2024-05-22 08:10:41', '2024-05-22 08:11:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lapangans`
--
ALTER TABLE `lapangans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lapangans_lapangan_id_unique` (`lapangan_id`);

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
-- Indexes for table `rekenings`
--
ALTER TABLE `rekenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user__bayars`
--
ALTER TABLE `user__bayars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user__bayars_user_id_foreign` (`user_id`),
  ADD KEY `user__bayars_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `user__bookings`
--
ALTER TABLE `user__bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user__bookings_booking_id_unique` (`booking_id`),
  ADD KEY `user__bookings_user_id_foreign` (`user_id`),
  ADD KEY `user__bookings_lapangan_id_foreign` (`lapangan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lapangans`
--
ALTER TABLE `lapangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rekenings`
--
ALTER TABLE `rekenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user__bayars`
--
ALTER TABLE `user__bayars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user__bookings`
--
ALTER TABLE `user__bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user__bayars`
--
ALTER TABLE `user__bayars`
  ADD CONSTRAINT `user__bayars_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `user__bookings` (`booking_id`),
  ADD CONSTRAINT `user__bayars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user__bookings`
--
ALTER TABLE `user__bookings`
  ADD CONSTRAINT `user__bookings_lapangan_id_foreign` FOREIGN KEY (`lapangan_id`) REFERENCES `lapangans` (`lapangan_id`),
  ADD CONSTRAINT `user__bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
