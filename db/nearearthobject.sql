-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 06 2022 г., 14:17
-- Версия сервера: 5.7.29-log
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nearearthobject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hazardous`
--

CREATE TABLE `hazardous` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referenced` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speed` double(8,2) NOT NULL,
  `is_hazardous` tinyint(4) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hazardous`
--

INSERT INTO `hazardous` (`id`, `referenced`, `name`, `speed`, `is_hazardous`, `date`, `created_at`, `updated_at`) VALUES
(1, '2052387', '52387 Huitzilopochtli (1993 OM7)', 1.71, 0, '2022-07-06', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(2, '2504074', '504074 (2006 AD)', 2.69, 0, '2022-07-06', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(3, '3634711', '(2013 GG69)', 1.07, 1, '2022-07-06', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(4, '3776858', '(2017 OA)', 0.59, 1, '2022-07-06', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(5, '2152637', '152637 (1997 NC1)', 1.50, 1, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(6, '3042555', '(2000 LG6)', 0.01, 0, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(7, '3102694', '(2001 XP31)', 0.22, 1, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(8, '3283781', '(2005 NY39)', 0.43, 0, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(9, '54099636', '(2020 XV3)', 0.16, 0, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(10, '54131528', '(2021 EL4)', 0.04, 0, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(11, '54166592', '(2021 NO1)', 0.06, 0, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(12, '54200007', '(2021 SG1)', 0.05, 0, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(13, '54246998', '(2022 CF7)', 0.01, 0, '2022-07-05', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(14, '3378562', '(2007 MH)', 0.38, 0, '2022-07-04', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(15, '3728229', '(2015 SG)', 0.03, 0, '2022-07-04', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(16, '3769438', '(2017 BG136)', 0.04, 0, '2022-07-04', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(17, '2007482', '7482 (1994 PC1)', 2.87, 1, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(18, '2468727', '468727 (2010 JE87)', 0.42, 1, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(19, '2543319', '543319 (2013 YE38)', 0.57, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(20, '3157489', '(2003 OT13)', 0.13, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(21, '3568304', '(2011 ME)', 0.75, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(22, '3836971', '(2018 YY)', 0.21, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(23, '3838243', '(2019 CH4)', 0.05, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(24, '3843138', '(2019 NM2)', 0.05, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(25, '3883096', '(2019 UU7)', 0.04, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(26, '54054611', '(2020 SM4)', 0.02, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(27, '54099616', '(2020 XM3)', 0.17, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(28, '54194357', '(2021 RG6)', 0.01, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34'),
(29, '54244778', '(2022 CA1)', 0.02, 0, '2022-07-03', '2022-07-06 06:21:34', '2022-07-06 06:21:34');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_05_085137_hazardous', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `hazardous`
--
ALTER TABLE `hazardous`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `hazardous`
--
ALTER TABLE `hazardous`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
