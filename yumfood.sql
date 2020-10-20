-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2020 pada 04.15
-- Versi server: 10.1.21-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yumfood`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_20_062632_create_vendors_table', 1),
(4, '2019_07_20_073041_create_tags_table', 1),
(5, '2019_07_20_073402_create_taggables_table', 1),
(8, '2020_10_13_044259_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `total_tags` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL DEFAULT '0',
  `notes` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `vendor_id`, `total_tags`, `total_qty`, `notes`, `created_at`, `updated_at`) VALUES
(4, 2, 4, 5, 'Nasi goreng pedes nya sedeng aja', '2020-10-19 16:36:40', '2020-10-19 16:36:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `orders_id`, `tags_id`, `qty`, `created_at`, `updated_at`) VALUES
(13, 4, 13, 1, '2020-10-19 16:36:41', '2020-10-19 16:36:41'),
(14, 4, 2, 1, '2020-10-19 16:36:41', '2020-10-19 16:36:41'),
(15, 4, 1, 1, '2020-10-19 16:36:41', '2020-10-19 16:36:41'),
(16, 4, 3, 2, '2020-10-19 16:36:41', '2020-10-19 16:36:41');

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
-- Struktur dari tabel `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) NOT NULL,
  `taggable_id` bigint(20) NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(13, 1, 'App\\Vendor', NULL, NULL),
(2, 1, 'App\\Vendor', NULL, NULL),
(1, 1, 'App\\Vendor', NULL, NULL),
(3, 1, 'App\\Vendor', NULL, NULL),
(4, 1, 'App\\Vendor', NULL, NULL),
(6, 1, 'App\\Vendor', NULL, NULL),
(9, 1, 'App\\Vendor', NULL, NULL),
(7, 1, 'App\\Vendor', NULL, NULL),
(8, 1, 'App\\Vendor', NULL, NULL),
(10, 1, 'App\\Vendor', NULL, NULL),
(14, 2, 'App\\Vendor', NULL, NULL),
(4, 2, 'App\\Vendor', NULL, NULL),
(3, 2, 'App\\Vendor', NULL, NULL),
(6, 2, 'App\\Vendor', NULL, NULL),
(8, 2, 'App\\Vendor', NULL, NULL),
(7, 2, 'App\\Vendor', NULL, NULL),
(10, 2, 'App\\Vendor', NULL, NULL),
(12, 3, 'App\\Vendor', NULL, NULL),
(2, 3, 'App\\Vendor', NULL, NULL),
(3, 3, 'App\\Vendor', NULL, NULL),
(6, 3, 'App\\Vendor', NULL, NULL),
(9, 3, 'App\\Vendor', NULL, NULL),
(7, 3, 'App\\Vendor', NULL, NULL),
(8, 3, 'App\\Vendor', NULL, NULL),
(10, 3, 'App\\Vendor', NULL, NULL),
(14, 4, 'App\\Vendor', NULL, NULL),
(2, 4, 'App\\Vendor', NULL, NULL),
(3, 4, 'App\\Vendor', NULL, NULL),
(1, 4, 'App\\Vendor', NULL, NULL),
(6, 4, 'App\\Vendor', NULL, NULL),
(8, 4, 'App\\Vendor', NULL, NULL),
(9, 4, 'App\\Vendor', NULL, NULL),
(7, 4, 'App\\Vendor', NULL, NULL),
(10, 4, 'App\\Vendor', NULL, NULL),
(13, 5, 'App\\Vendor', NULL, NULL),
(4, 5, 'App\\Vendor', NULL, NULL),
(6, 5, 'App\\Vendor', NULL, NULL),
(7, 5, 'App\\Vendor', NULL, NULL),
(8, 5, 'App\\Vendor', NULL, NULL),
(11, 5, 'App\\Vendor', NULL, NULL),
(13, 6, 'App\\Vendor', NULL, NULL),
(4, 6, 'App\\Vendor', NULL, NULL),
(6, 6, 'App\\Vendor', NULL, NULL),
(9, 6, 'App\\Vendor', NULL, NULL),
(7, 6, 'App\\Vendor', NULL, NULL),
(8, 6, 'App\\Vendor', NULL, NULL),
(11, 6, 'App\\Vendor', NULL, NULL),
(14, 7, 'App\\Vendor', NULL, NULL),
(4, 7, 'App\\Vendor', NULL, NULL),
(6, 7, 'App\\Vendor', NULL, NULL),
(8, 7, 'App\\Vendor', NULL, NULL),
(9, 7, 'App\\Vendor', NULL, NULL),
(11, 7, 'App\\Vendor', NULL, NULL),
(12, 8, 'App\\Vendor', NULL, NULL),
(1, 8, 'App\\Vendor', NULL, NULL),
(2, 8, 'App\\Vendor', NULL, NULL),
(6, 8, 'App\\Vendor', NULL, NULL),
(8, 8, 'App\\Vendor', NULL, NULL),
(7, 8, 'App\\Vendor', NULL, NULL),
(9, 8, 'App\\Vendor', NULL, NULL),
(11, 8, 'App\\Vendor', NULL, NULL),
(12, 9, 'App\\Vendor', NULL, NULL),
(2, 9, 'App\\Vendor', NULL, NULL),
(1, 9, 'App\\Vendor', NULL, NULL),
(6, 9, 'App\\Vendor', NULL, NULL),
(9, 9, 'App\\Vendor', NULL, NULL),
(11, 9, 'App\\Vendor', NULL, NULL),
(14, 10, 'App\\Vendor', NULL, NULL),
(2, 10, 'App\\Vendor', NULL, NULL),
(6, 10, 'App\\Vendor', NULL, NULL),
(8, 10, 'App\\Vendor', NULL, NULL),
(7, 10, 'App\\Vendor', NULL, NULL),
(9, 10, 'App\\Vendor', NULL, NULL),
(10, 10, 'App\\Vendor', NULL, NULL),
(12, 11, 'App\\Vendor', NULL, NULL),
(2, 11, 'App\\Vendor', NULL, NULL),
(6, 11, 'App\\Vendor', NULL, NULL),
(7, 11, 'App\\Vendor', NULL, NULL),
(8, 11, 'App\\Vendor', NULL, NULL),
(9, 11, 'App\\Vendor', NULL, NULL),
(10, 11, 'App\\Vendor', NULL, NULL),
(12, 12, 'App\\Vendor', NULL, NULL),
(4, 12, 'App\\Vendor', NULL, NULL),
(2, 12, 'App\\Vendor', NULL, NULL),
(1, 12, 'App\\Vendor', NULL, NULL),
(3, 12, 'App\\Vendor', NULL, NULL),
(6, 12, 'App\\Vendor', NULL, NULL),
(8, 12, 'App\\Vendor', NULL, NULL),
(7, 12, 'App\\Vendor', NULL, NULL),
(10, 12, 'App\\Vendor', NULL, NULL),
(13, 13, 'App\\Vendor', NULL, NULL),
(2, 13, 'App\\Vendor', NULL, NULL),
(4, 13, 'App\\Vendor', NULL, NULL),
(3, 13, 'App\\Vendor', NULL, NULL),
(1, 13, 'App\\Vendor', NULL, NULL),
(6, 13, 'App\\Vendor', NULL, NULL),
(7, 13, 'App\\Vendor', NULL, NULL),
(9, 13, 'App\\Vendor', NULL, NULL),
(10, 13, 'App\\Vendor', NULL, NULL),
(13, 14, 'App\\Vendor', NULL, NULL),
(1, 14, 'App\\Vendor', NULL, NULL),
(2, 14, 'App\\Vendor', NULL, NULL),
(3, 14, 'App\\Vendor', NULL, NULL),
(4, 14, 'App\\Vendor', NULL, NULL),
(6, 14, 'App\\Vendor', NULL, NULL),
(8, 14, 'App\\Vendor', NULL, NULL),
(7, 14, 'App\\Vendor', NULL, NULL),
(9, 14, 'App\\Vendor', NULL, NULL),
(10, 14, 'App\\Vendor', NULL, NULL),
(12, 15, 'App\\Vendor', NULL, NULL),
(4, 15, 'App\\Vendor', NULL, NULL),
(1, 15, 'App\\Vendor', NULL, NULL),
(6, 15, 'App\\Vendor', NULL, NULL),
(7, 15, 'App\\Vendor', NULL, NULL),
(9, 15, 'App\\Vendor', NULL, NULL),
(10, 15, 'App\\Vendor', NULL, NULL),
(12, 16, 'App\\Vendor', NULL, NULL),
(2, 16, 'App\\Vendor', NULL, NULL),
(1, 16, 'App\\Vendor', NULL, NULL),
(3, 16, 'App\\Vendor', NULL, NULL),
(4, 16, 'App\\Vendor', NULL, NULL),
(6, 16, 'App\\Vendor', NULL, NULL),
(9, 16, 'App\\Vendor', NULL, NULL),
(8, 16, 'App\\Vendor', NULL, NULL),
(11, 16, 'App\\Vendor', NULL, NULL),
(12, 17, 'App\\Vendor', NULL, NULL),
(1, 17, 'App\\Vendor', NULL, NULL),
(6, 17, 'App\\Vendor', NULL, NULL),
(8, 17, 'App\\Vendor', NULL, NULL),
(7, 17, 'App\\Vendor', NULL, NULL),
(9, 17, 'App\\Vendor', NULL, NULL),
(11, 17, 'App\\Vendor', NULL, NULL),
(14, 18, 'App\\Vendor', NULL, NULL),
(2, 18, 'App\\Vendor', NULL, NULL),
(1, 18, 'App\\Vendor', NULL, NULL),
(3, 18, 'App\\Vendor', NULL, NULL),
(6, 18, 'App\\Vendor', NULL, NULL),
(8, 18, 'App\\Vendor', NULL, NULL),
(7, 18, 'App\\Vendor', NULL, NULL),
(9, 18, 'App\\Vendor', NULL, NULL),
(11, 18, 'App\\Vendor', NULL, NULL),
(12, 19, 'App\\Vendor', NULL, NULL),
(4, 19, 'App\\Vendor', NULL, NULL),
(1, 19, 'App\\Vendor', NULL, NULL),
(3, 19, 'App\\Vendor', NULL, NULL),
(6, 19, 'App\\Vendor', NULL, NULL),
(8, 19, 'App\\Vendor', NULL, NULL),
(7, 19, 'App\\Vendor', NULL, NULL),
(9, 19, 'App\\Vendor', NULL, NULL),
(10, 19, 'App\\Vendor', NULL, NULL),
(13, 20, 'App\\Vendor', NULL, NULL),
(2, 20, 'App\\Vendor', NULL, NULL),
(3, 20, 'App\\Vendor', NULL, NULL),
(6, 20, 'App\\Vendor', NULL, NULL),
(7, 20, 'App\\Vendor', NULL, NULL),
(10, 20, 'App\\Vendor', NULL, NULL),
(14, 21, 'App\\Vendor', NULL, NULL),
(1, 21, 'App\\Vendor', NULL, NULL),
(3, 21, 'App\\Vendor', NULL, NULL),
(2, 21, 'App\\Vendor', NULL, NULL),
(4, 21, 'App\\Vendor', NULL, NULL),
(6, 21, 'App\\Vendor', NULL, NULL),
(7, 21, 'App\\Vendor', NULL, NULL),
(9, 21, 'App\\Vendor', NULL, NULL),
(10, 21, 'App\\Vendor', NULL, NULL),
(14, 22, 'App\\Vendor', NULL, NULL),
(1, 22, 'App\\Vendor', NULL, NULL),
(4, 22, 'App\\Vendor', NULL, NULL),
(2, 22, 'App\\Vendor', NULL, NULL),
(3, 22, 'App\\Vendor', NULL, NULL),
(6, 22, 'App\\Vendor', NULL, NULL),
(7, 22, 'App\\Vendor', NULL, NULL),
(9, 22, 'App\\Vendor', NULL, NULL),
(10, 22, 'App\\Vendor', NULL, NULL),
(14, 23, 'App\\Vendor', NULL, NULL),
(2, 23, 'App\\Vendor', NULL, NULL),
(3, 23, 'App\\Vendor', NULL, NULL),
(6, 23, 'App\\Vendor', NULL, NULL),
(7, 23, 'App\\Vendor', NULL, NULL),
(9, 23, 'App\\Vendor', NULL, NULL),
(11, 23, 'App\\Vendor', NULL, NULL),
(14, 24, 'App\\Vendor', NULL, NULL),
(1, 24, 'App\\Vendor', NULL, NULL),
(6, 24, 'App\\Vendor', NULL, NULL),
(7, 24, 'App\\Vendor', NULL, NULL),
(8, 24, 'App\\Vendor', NULL, NULL),
(9, 24, 'App\\Vendor', NULL, NULL),
(10, 24, 'App\\Vendor', NULL, NULL),
(12, 25, 'App\\Vendor', NULL, NULL),
(4, 25, 'App\\Vendor', NULL, NULL),
(2, 25, 'App\\Vendor', NULL, NULL),
(6, 25, 'App\\Vendor', NULL, NULL),
(9, 25, 'App\\Vendor', NULL, NULL),
(8, 25, 'App\\Vendor', NULL, NULL),
(7, 25, 'App\\Vendor', NULL, NULL),
(10, 25, 'App\\Vendor', NULL, NULL),
(14, 26, 'App\\Vendor', NULL, NULL),
(2, 26, 'App\\Vendor', NULL, NULL),
(6, 26, 'App\\Vendor', NULL, NULL),
(8, 26, 'App\\Vendor', NULL, NULL),
(9, 26, 'App\\Vendor', NULL, NULL),
(11, 26, 'App\\Vendor', NULL, NULL),
(13, 27, 'App\\Vendor', NULL, NULL),
(1, 27, 'App\\Vendor', NULL, NULL),
(4, 27, 'App\\Vendor', NULL, NULL),
(6, 27, 'App\\Vendor', NULL, NULL),
(9, 27, 'App\\Vendor', NULL, NULL),
(7, 27, 'App\\Vendor', NULL, NULL),
(11, 27, 'App\\Vendor', NULL, NULL),
(13, 28, 'App\\Vendor', NULL, NULL),
(4, 28, 'App\\Vendor', NULL, NULL),
(3, 28, 'App\\Vendor', NULL, NULL),
(6, 28, 'App\\Vendor', NULL, NULL),
(8, 28, 'App\\Vendor', NULL, NULL),
(11, 28, 'App\\Vendor', NULL, NULL),
(14, 29, 'App\\Vendor', NULL, NULL),
(2, 29, 'App\\Vendor', NULL, NULL),
(1, 29, 'App\\Vendor', NULL, NULL),
(3, 29, 'App\\Vendor', NULL, NULL),
(6, 29, 'App\\Vendor', NULL, NULL),
(7, 29, 'App\\Vendor', NULL, NULL),
(9, 29, 'App\\Vendor', NULL, NULL),
(8, 29, 'App\\Vendor', NULL, NULL),
(10, 29, 'App\\Vendor', NULL, NULL),
(12, 30, 'App\\Vendor', NULL, NULL),
(4, 30, 'App\\Vendor', NULL, NULL),
(3, 30, 'App\\Vendor', NULL, NULL),
(1, 30, 'App\\Vendor', NULL, NULL),
(6, 30, 'App\\Vendor', NULL, NULL),
(9, 30, 'App\\Vendor', NULL, NULL),
(8, 30, 'App\\Vendor', NULL, NULL),
(11, 30, 'App\\Vendor', NULL, NULL),
(14, 31, 'App\\Vendor', NULL, NULL),
(4, 31, 'App\\Vendor', NULL, NULL),
(6, 31, 'App\\Vendor', NULL, NULL),
(9, 31, 'App\\Vendor', NULL, NULL),
(7, 31, 'App\\Vendor', NULL, NULL),
(11, 31, 'App\\Vendor', NULL, NULL),
(14, 32, 'App\\Vendor', NULL, NULL),
(4, 32, 'App\\Vendor', NULL, NULL),
(6, 32, 'App\\Vendor', NULL, NULL),
(9, 32, 'App\\Vendor', NULL, NULL),
(8, 32, 'App\\Vendor', NULL, NULL),
(7, 32, 'App\\Vendor', NULL, NULL),
(10, 32, 'App\\Vendor', NULL, NULL),
(14, 33, 'App\\Vendor', NULL, NULL),
(3, 33, 'App\\Vendor', NULL, NULL),
(1, 33, 'App\\Vendor', NULL, NULL),
(6, 33, 'App\\Vendor', NULL, NULL),
(7, 33, 'App\\Vendor', NULL, NULL),
(10, 33, 'App\\Vendor', NULL, NULL),
(13, 34, 'App\\Vendor', NULL, NULL),
(1, 34, 'App\\Vendor', NULL, NULL),
(2, 34, 'App\\Vendor', NULL, NULL),
(4, 34, 'App\\Vendor', NULL, NULL),
(3, 34, 'App\\Vendor', NULL, NULL),
(6, 34, 'App\\Vendor', NULL, NULL),
(9, 34, 'App\\Vendor', NULL, NULL),
(7, 34, 'App\\Vendor', NULL, NULL),
(10, 34, 'App\\Vendor', NULL, NULL),
(13, 35, 'App\\Vendor', NULL, NULL),
(1, 35, 'App\\Vendor', NULL, NULL),
(2, 35, 'App\\Vendor', NULL, NULL),
(6, 35, 'App\\Vendor', NULL, NULL),
(9, 35, 'App\\Vendor', NULL, NULL),
(10, 35, 'App\\Vendor', NULL, NULL),
(12, 36, 'App\\Vendor', NULL, NULL),
(3, 36, 'App\\Vendor', NULL, NULL),
(4, 36, 'App\\Vendor', NULL, NULL),
(1, 36, 'App\\Vendor', NULL, NULL),
(2, 36, 'App\\Vendor', NULL, NULL),
(6, 36, 'App\\Vendor', NULL, NULL),
(8, 36, 'App\\Vendor', NULL, NULL),
(9, 36, 'App\\Vendor', NULL, NULL),
(7, 36, 'App\\Vendor', NULL, NULL),
(11, 36, 'App\\Vendor', NULL, NULL),
(14, 37, 'App\\Vendor', NULL, NULL),
(2, 37, 'App\\Vendor', NULL, NULL),
(6, 37, 'App\\Vendor', NULL, NULL),
(9, 37, 'App\\Vendor', NULL, NULL),
(7, 37, 'App\\Vendor', NULL, NULL),
(8, 37, 'App\\Vendor', NULL, NULL),
(10, 37, 'App\\Vendor', NULL, NULL),
(14, 38, 'App\\Vendor', NULL, NULL),
(2, 38, 'App\\Vendor', NULL, NULL),
(4, 38, 'App\\Vendor', NULL, NULL),
(3, 38, 'App\\Vendor', NULL, NULL),
(1, 38, 'App\\Vendor', NULL, NULL),
(6, 38, 'App\\Vendor', NULL, NULL),
(7, 38, 'App\\Vendor', NULL, NULL),
(8, 38, 'App\\Vendor', NULL, NULL),
(11, 38, 'App\\Vendor', NULL, NULL),
(12, 39, 'App\\Vendor', NULL, NULL),
(3, 39, 'App\\Vendor', NULL, NULL),
(6, 39, 'App\\Vendor', NULL, NULL),
(7, 39, 'App\\Vendor', NULL, NULL),
(9, 39, 'App\\Vendor', NULL, NULL),
(11, 39, 'App\\Vendor', NULL, NULL),
(12, 40, 'App\\Vendor', NULL, NULL),
(4, 40, 'App\\Vendor', NULL, NULL),
(6, 40, 'App\\Vendor', NULL, NULL),
(9, 40, 'App\\Vendor', NULL, NULL),
(11, 40, 'App\\Vendor', NULL, NULL),
(14, 41, 'App\\Vendor', NULL, NULL),
(1, 41, 'App\\Vendor', NULL, NULL),
(6, 41, 'App\\Vendor', NULL, NULL),
(8, 41, 'App\\Vendor', NULL, NULL),
(7, 41, 'App\\Vendor', NULL, NULL),
(10, 41, 'App\\Vendor', NULL, NULL),
(13, 42, 'App\\Vendor', NULL, NULL),
(2, 42, 'App\\Vendor', NULL, NULL),
(1, 42, 'App\\Vendor', NULL, NULL),
(4, 42, 'App\\Vendor', NULL, NULL),
(3, 42, 'App\\Vendor', NULL, NULL),
(6, 42, 'App\\Vendor', NULL, NULL),
(7, 42, 'App\\Vendor', NULL, NULL),
(9, 42, 'App\\Vendor', NULL, NULL),
(8, 42, 'App\\Vendor', NULL, NULL),
(10, 42, 'App\\Vendor', NULL, NULL),
(13, 43, 'App\\Vendor', NULL, NULL),
(4, 43, 'App\\Vendor', NULL, NULL),
(6, 43, 'App\\Vendor', NULL, NULL),
(9, 43, 'App\\Vendor', NULL, NULL),
(10, 43, 'App\\Vendor', NULL, NULL),
(13, 44, 'App\\Vendor', NULL, NULL),
(2, 44, 'App\\Vendor', NULL, NULL),
(3, 44, 'App\\Vendor', NULL, NULL),
(4, 44, 'App\\Vendor', NULL, NULL),
(6, 44, 'App\\Vendor', NULL, NULL),
(7, 44, 'App\\Vendor', NULL, NULL),
(10, 44, 'App\\Vendor', NULL, NULL),
(13, 45, 'App\\Vendor', NULL, NULL),
(2, 45, 'App\\Vendor', NULL, NULL),
(1, 45, 'App\\Vendor', NULL, NULL),
(3, 45, 'App\\Vendor', NULL, NULL),
(4, 45, 'App\\Vendor', NULL, NULL),
(6, 45, 'App\\Vendor', NULL, NULL),
(7, 45, 'App\\Vendor', NULL, NULL),
(11, 45, 'App\\Vendor', NULL, NULL),
(12, 46, 'App\\Vendor', NULL, NULL),
(2, 46, 'App\\Vendor', NULL, NULL),
(4, 46, 'App\\Vendor', NULL, NULL),
(1, 46, 'App\\Vendor', NULL, NULL),
(6, 46, 'App\\Vendor', NULL, NULL),
(8, 46, 'App\\Vendor', NULL, NULL),
(11, 46, 'App\\Vendor', NULL, NULL),
(13, 47, 'App\\Vendor', NULL, NULL),
(2, 47, 'App\\Vendor', NULL, NULL),
(4, 47, 'App\\Vendor', NULL, NULL),
(3, 47, 'App\\Vendor', NULL, NULL),
(1, 47, 'App\\Vendor', NULL, NULL),
(6, 47, 'App\\Vendor', NULL, NULL),
(9, 47, 'App\\Vendor', NULL, NULL),
(10, 47, 'App\\Vendor', NULL, NULL),
(13, 48, 'App\\Vendor', NULL, NULL),
(2, 48, 'App\\Vendor', NULL, NULL),
(6, 48, 'App\\Vendor', NULL, NULL),
(8, 48, 'App\\Vendor', NULL, NULL),
(9, 48, 'App\\Vendor', NULL, NULL),
(11, 48, 'App\\Vendor', NULL, NULL),
(14, 49, 'App\\Vendor', NULL, NULL),
(3, 49, 'App\\Vendor', NULL, NULL),
(6, 49, 'App\\Vendor', NULL, NULL),
(8, 49, 'App\\Vendor', NULL, NULL),
(10, 49, 'App\\Vendor', NULL, NULL),
(13, 50, 'App\\Vendor', NULL, NULL),
(2, 50, 'App\\Vendor', NULL, NULL),
(4, 50, 'App\\Vendor', NULL, NULL),
(3, 50, 'App\\Vendor', NULL, NULL),
(1, 50, 'App\\Vendor', NULL, NULL),
(6, 50, 'App\\Vendor', NULL, NULL),
(8, 50, 'App\\Vendor', NULL, NULL),
(10, 50, 'App\\Vendor', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'chinese', '2020-10-11 10:49:48', '2020-10-11 10:49:48'),
(2, 'western', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(3, 'korean', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(4, 'indonesian', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(5, 'beverages', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(6, 'halal', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(7, 'lunch', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(8, 'dinner', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(9, 'breakfast', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(10, 'fish', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(11, 'meat', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(12, 'budget', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(13, 'affordable', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(14, 'expensive', '2020-10-11 10:49:49', '2020-10-11 10:49:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Prohaska, Gutkowski and Kling', 'https://lorempixel.com/640/480/food/?12501', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(2, 'Durgan, Brekke and Jerde', 'https://lorempixel.com/640/480/food/?26258', '2020-10-11 10:49:49', '2020-10-11 10:49:49'),
(3, 'Boyle-Sanford', 'https://lorempixel.com/640/480/food/?12427', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(4, 'Lang, Mayert and Oberbrunner', 'https://lorempixel.com/640/480/food/?68121', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(5, 'Morar-Hills', 'https://lorempixel.com/640/480/food/?62503', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(6, 'Christiansen PLC', 'https://lorempixel.com/640/480/food/?92735', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(7, 'Jacobi Ltd', 'https://lorempixel.com/640/480/food/?87467', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(8, 'Murazik-Luettgen', 'https://lorempixel.com/640/480/food/?45953', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(9, 'Glover and Sons', 'https://lorempixel.com/640/480/food/?32043', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(10, 'Stamm PLC', 'https://lorempixel.com/640/480/food/?47293', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(11, 'Gottlieb-Donnelly', 'https://lorempixel.com/640/480/food/?42430', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(12, 'Paucek and Sons', 'https://lorempixel.com/640/480/food/?43790', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(13, 'Wuckert-Bode', 'https://lorempixel.com/640/480/food/?67143', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(14, 'Gleichner PLC', 'https://lorempixel.com/640/480/food/?57399', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(15, 'Kub-Crist', 'https://lorempixel.com/640/480/food/?39002', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(16, 'Wolff-Feil', 'https://lorempixel.com/640/480/food/?34629', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(17, 'Kris-Schmitt', 'https://lorempixel.com/640/480/food/?33054', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(18, 'Langosh-Halvorson', 'https://lorempixel.com/640/480/food/?43633', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(19, 'Connelly-Dooley', 'https://lorempixel.com/640/480/food/?98430', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(20, 'Ondricka and Sons', 'https://lorempixel.com/640/480/food/?88669', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(21, 'Cummings-Becker', 'https://lorempixel.com/640/480/food/?18993', '2020-10-11 10:49:50', '2020-10-11 10:49:50'),
(22, 'King PLC', 'https://lorempixel.com/640/480/food/?80435', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(23, 'Lang, Auer and Schneider', 'https://lorempixel.com/640/480/food/?53968', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(24, 'Kuhlman Group', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(25, 'Wintheiser-Hodkiewicz', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(26, 'Kessler, Eichmann and Grady', 'https://lorempixel.com/640/480/food/?23099', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(27, 'Altenwerth, Hegmann and Buckridge', 'https://lorempixel.com/640/480/food/?91107', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(28, 'VonRueden-Stracke', 'https://lorempixel.com/640/480/food/?77188', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(29, 'Walker-Brown', 'https://lorempixel.com/640/480/food/?88604', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(30, 'Weber-Hessel', 'https://lorempixel.com/640/480/food/?73747', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(31, 'Ferry, Blanda and Grant', 'https://lorempixel.com/640/480/food/?78214', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(32, 'Abbott, Littel and Mills', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(33, 'Daugherty-Hayes', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(34, 'Kuphal and Sons', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(35, 'Schamberger-Romaguera', 'https://lorempixel.com/640/480/food/?32922', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(36, 'Johns-Auer', 'https://lorempixel.com/640/480/food/?26300', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(37, 'Sporer-Wisoky', 'https://lorempixel.com/640/480/food/?80053', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(38, 'Leffler Inc', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(39, 'Boyer-Jast', 'https://lorempixel.com/640/480/food/?85327', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(40, 'Stokes, Schulist and Lind', 'https://lorempixel.com/640/480/food/?38826', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(41, 'Powlowski-Luettgen', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(42, 'Turcotte-Wyman', 'https://lorempixel.com/640/480/food/?30288', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(43, 'Zieme-Adams', 'https://lorempixel.com/640/480/food/?42703', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(44, 'Schuppe, Collier and Rempel', 'https://lorempixel.com/640/480/food/?61600', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(45, 'Hyatt and Sons', 'https://lorempixel.com/640/480/food/?55117', '2020-10-11 10:49:51', '2020-10-11 10:49:51'),
(46, 'Nienow-Nader', 'https://lorempixel.com/640/480/food/?62479', '2020-10-11 10:49:52', '2020-10-11 10:49:52'),
(47, 'Schmitt, Mosciski and Graham', 'https://lorempixel.com/640/480/food/?78231', '2020-10-11 10:49:52', '2020-10-11 10:49:52'),
(48, 'Lockman-Cartwright', 'https://lorempixel.com/640/480/food/?45931', '2020-10-11 10:49:52', '2020-10-11 10:49:52'),
(49, 'Hermann Ltd', 'https://lorempixel.com/640/480/food/?11289', '2020-10-11 10:49:52', '2020-10-11 10:49:52'),
(50, 'Bogisich Group', 'https://lorempixel.com/640/480/food/?86267', '2020-10-11 10:49:52', '2020-10-11 10:49:52'),
(59, 'Indonesia Restaurant', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '2020-10-19 18:29:41', '2020-10-19 19:02:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
