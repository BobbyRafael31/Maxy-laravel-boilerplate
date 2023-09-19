-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2023 pada 04.32
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_purchase_order_tiga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2023_09_18_032033_create_products_table', 2),
(10, '2023_09_18_064641_create_purchase_order_lines_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Molestias sunt quibusdam voluptatum aut unde aut tenetur.', 'aspernatur', 7356270, '2010-02-27 19:58:23', '1970-01-01 02:40:05'),
(2, 'Quos perferendis rem id non tempora eos.', 'ipsam', 12003.2, '1985-08-23 06:50:35', '1984-08-13 10:41:58'),
(3, 'Dolores architecto vero reprehenderit autem quia beatae facere.', 'et', 10000, '2011-07-09 08:24:32', '1979-04-12 03:06:08'),
(4, 'Quia aut consequatur rerum qui.', 'est', 10000, '1973-11-29 16:03:10', '2014-02-23 18:54:12'),
(5, 'Provident sit eos et.', 'qui', 10000, '2013-10-02 13:09:42', '1989-05-03 16:03:46'),
(6, 'Voluptatem porro in sed dolorem sint voluptatibus.', 'eius', 10000, '1984-06-03 18:26:21', '2009-11-13 22:43:01'),
(7, 'Sint dolore ea recusandae blanditiis odit amet molestiae.', 'a', 10000, '1980-11-09 04:19:44', '2019-01-18 05:26:01'),
(8, 'At amet suscipit voluptatem voluptatem quae.', 'a', 10000, '1979-08-03 14:03:53', '2007-06-17 00:42:36'),
(9, 'At totam hic sed et.', 'alias', 12636400, '1984-12-25 20:23:37', '1990-03-15 15:16:36'),
(10, 'Neque quos aut minima hic optio voluptatem.', 'voluptatem', 10000, '2009-07-18 07:36:42', '2023-01-29 15:28:33'),
(11, 'Eaque nostrum tempora ipsam.', 'qui', 10000, '1971-07-01 02:33:14', '1993-10-25 18:57:12'),
(12, 'Unde repudiandae aspernatur provident odit perferendis debitis.', 'soluta', 413337, '2022-04-01 02:29:15', '2021-03-06 21:43:14'),
(13, 'Quia velit magni quo voluptatem repudiandae magnam ducimus.', 'sunt', 10000, '1995-09-22 13:57:33', '2006-07-23 23:31:31'),
(14, 'Pariatur illo sapiente exercitationem saepe distinctio et.', 'voluptatem', 22635900, '1989-06-29 21:36:45', '2002-07-08 17:16:40'),
(15, 'Nobis rerum rerum et officia minima est dolores.', 'quasi', 523797, '1981-11-25 19:44:11', '1979-01-14 21:46:05'),
(16, 'Ipsam veritatis sed qui et cupiditate.', 'at', 10000, '2005-02-10 07:08:13', '1993-08-12 12:27:48'),
(17, 'Et blanditiis ex unde quia qui est non ipsam.', 'aliquam', 11821900, '1987-09-18 13:32:01', '2017-11-27 09:29:38'),
(18, 'Consectetur quis exercitationem incidunt in assumenda voluptatem.', 'expedita', 10000, '1988-01-14 21:34:46', '1999-02-24 13:49:45'),
(19, 'Adipisci repellat eligendi et perspiciatis temporibus.', 'quisquam', 138741000, '2018-08-01 14:43:37', '1999-09-26 08:40:21'),
(20, 'Quia provident molestiae sit tempora possimus ullam in.', 'fugiat', 10000, '1991-07-24 14:31:54', '2013-09-07 04:01:51'),
(21, 'Adipisci sunt voluptatem facere ratione incidunt.', 'maiores', 10000, '1975-11-16 08:43:59', '1999-09-13 06:56:15'),
(22, 'Perspiciatis ea in assumenda ut nisi qui.', 'minima', 4164940, '1978-05-19 17:09:59', '2018-12-21 04:31:49'),
(23, 'Provident officiis itaque ipsum et.', 'expedita', 76005.1, '1992-12-06 11:28:03', '1978-09-15 22:48:57'),
(24, 'Id rerum ab in necessitatibus.', 'est', 10000, '1985-01-03 10:26:06', '1998-04-26 16:59:58'),
(25, 'Et reprehenderit ut ut a vel quibusdam.', 'numquam', 10000, '1988-04-24 05:31:27', '1989-06-30 08:27:36'),
(26, 'Ducimus aut inventore qui id.', 'dolor', 6269140, '1979-04-28 10:11:06', '2008-07-07 01:33:05'),
(27, 'Enim sunt sint adipisci illo facere.', 'repudiandae', 10000, '1991-02-19 13:22:22', '1992-06-25 14:56:01'),
(28, 'Dolores quo aut autem inventore ut soluta.', 'quae', 15340, '1981-08-04 18:57:45', '2020-08-02 15:43:40'),
(29, 'Autem saepe molestiae magnam nostrum aut.', 'laborum', 10000, '2020-11-07 07:55:23', '2001-11-25 15:18:44'),
(30, 'Assumenda quas rerum fugiat reiciendis ut quaerat atque.', 'itaque', 10000, '2004-03-06 03:25:35', '1985-01-23 12:14:46'),
(31, 'Quae natus praesentium incidunt expedita voluptatem atque.', 'ut', 710064, '2000-12-23 16:53:04', '2023-09-09 21:34:59'),
(32, 'Dolorum perspiciatis nulla minus qui in non et illo.', 'quae', 264486000, '1987-11-29 07:05:46', '1993-05-20 09:36:58'),
(33, 'Autem deleniti ut aperiam ducimus laudantium ea eum.', 'necessitatibus', 10000, '2007-08-24 23:56:40', '2013-11-29 22:43:07'),
(34, 'Dignissimos et eius ut.', 'quia', 10000, '2018-09-03 11:57:35', '2012-05-21 23:22:39'),
(35, 'Ut quis cupiditate quis consectetur.', 'voluptate', 10000, '1997-04-22 08:10:41', '1996-10-28 16:12:42'),
(36, 'Impedit officiis veritatis dolore dolore asperiores neque.', 'et', 1692390, '2011-02-13 14:30:11', '2004-05-09 05:25:52'),
(37, 'Consequuntur voluptate voluptate praesentium id non quisquam.', 'a', 18664.9, '1995-02-14 17:06:30', '1971-06-19 15:20:06'),
(38, 'Et error ea corporis omnis aliquam.', 'et', 29284, '1991-05-27 20:22:31', '2018-10-11 08:40:19'),
(39, 'Ea minus commodi recusandae doloremque.', 'quia', 3843520, '1991-06-27 03:35:10', '2022-09-19 06:05:26'),
(40, 'Quia est quo hic et.', 'dolorem', 19156.1, '1977-04-18 22:32:01', '2006-07-22 10:11:43'),
(41, 'Facere est explicabo aut et quia expedita in.', 'non', 10000, '1979-03-23 08:23:16', '2009-11-02 10:23:29'),
(42, 'Doloremque sit ea eveniet exercitationem.', 'distinctio', 12057.2, '1972-12-05 01:47:45', '2019-01-20 17:16:59'),
(43, 'Eius exercitationem blanditiis est sequi dolorem excepturi doloribus.', 'rerum', 10000, '2003-12-14 10:31:49', '2014-01-14 10:30:26'),
(44, 'Assumenda velit dolor minus cupiditate.', 'consequatur', 10000, '1987-01-03 21:29:00', '1987-04-20 04:29:09'),
(45, 'Quo nam esse sint ab culpa.', 'molestias', 10000, '2022-02-01 01:38:07', '1972-12-04 20:12:59'),
(46, 'Fugiat commodi sed sapiente reprehenderit.', 'hic', 28489100, '2016-02-14 12:10:33', '2019-12-16 04:51:09'),
(47, 'Dicta quam earum sint deleniti consectetur doloremque earum.', 'rerum', 10000, '1972-11-05 14:36:58', '2008-08-27 06:58:38'),
(48, 'Nostrum velit aut voluptatum fugiat assumenda.', 'atque', 364339, '2011-05-19 04:52:10', '1993-01-12 15:37:24'),
(49, 'Ut atque architecto doloremque aut magnam sunt.', 'quia', 10000, '2018-07-22 19:51:00', '1995-11-19 07:27:07'),
(50, 'Inventore voluptas et qui nesciunt qui.', 'reprehenderit', 961218, '2021-01-25 09:17:12', '1983-12-24 06:45:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `protection_shop_tokens`
--

INSERT INTO `protection_shop_tokens` (`id`, `user_id`, `number`, `expires`, `success_url`, `cancel_url`, `success_url_title`, `cancel_url_title`, `shop_url`) VALUES
(1, 3, '11d0725a-11c2-4e68-b9d6-1a7af6613f65', '2023-09-17 11:29:08', 'http://127.0.0.1:8080/membership/clear-cache?dest=http%3A%2F%2F127.0.0.1%3A8080%2Fmembership', 'http://127.0.0.1:8080', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=11d0725a-11c2-4e68-b9d6-1a7af6613f65');

-- --------------------------------------------------------

--
-- Struktur dari tabel `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `protection_validations`
--

INSERT INTO `protection_validations` (`id`, `user_id`, `ttl`, `validation_result`) VALUES
(1, 3, '2023-09-17 11:09:06', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":false,\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"RED\",\"licensingModel\":\"Subscription\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `purchase_order_lines`
--

INSERT INTO `purchase_order_lines` (`id`, `product_id`, `qty`, `price`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 2000, 50, 3000, '2023-09-18 03:17:01', '2023-09-18 03:17:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$hG.lxBxhtAkrUNA6qYDPMO.NmcL6QDKS/fENI.qjyGSXB.LPIrn3.', 1, '96bc20f2-e57d-42cb-9113-f7ed08a64e8b', 1, NULL, NULL, '2023-09-17 23:02:50', '2023-09-17 23:16:22', NULL, '2023-09-18 06:16:22'),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$/3ONIqDL0eNnQkuwKyXXMuP3SwmreTUF60RO0T/T0zf0qMuFx.7Iy', 1, '47b1a436-6f3e-4230-b398-5e926d992831', 1, NULL, NULL, '2023-09-17 23:02:50', '2023-09-17 23:02:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indeks untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indeks untuk tabel `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indeks untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
