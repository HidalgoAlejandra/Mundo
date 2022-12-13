-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2022 a las 00:21:50
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basemundo`
--
CREATE DATABASE IF NOT EXISTS `basemundo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `basemundo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calles`
--

CREATE TABLE `calles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calles`
--

INSERT INTO `calles` (`id`, `calle`, `created_at`, `updated_at`) VALUES
(1, 'Carrera', NULL, NULL),
(2, 'Prat', NULL, NULL),
(3, 'Colo colo', NULL, NULL),
(4, 'O.Higgins', NULL, NULL),
(5, 'Freire', NULL, NULL),
(6, 'El Vergel', NULL, NULL),
(7, 'Cahuelmo', NULL, NULL),
(8, 'Lautaro', NULL, NULL),
(9, 'Progreso', NULL, NULL),
(10, 'Carlos Drouget', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudads`
--

CREATE TABLE `ciudads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciudad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_provincia` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudads`
--

INSERT INTO `ciudads` (`id`, `ciudad`, `fk_provincia`, `created_at`, `updated_at`) VALUES
(1, 'Concepción', 1, NULL, NULL),
(3, 'Coronel', 1, NULL, NULL),
(4, 'Chiguayante', 1, NULL, NULL),
(5, 'Florida', 1, NULL, NULL),
(6, 'Hualqui', 1, NULL, NULL),
(7, 'Lota', 1, NULL, NULL),
(8, 'Penco', 1, NULL, NULL),
(9, 'San Pedro de la Paz', 1, NULL, NULL),
(10, 'Santa Juana', 1, NULL, NULL),
(11, 'Talcahuano', 1, NULL, NULL),
(12, 'Tomé', 1, NULL, NULL),
(13, 'Hualpén', 1, NULL, NULL),
(14, 'Lebu', 2, NULL, NULL),
(15, 'Arauco', 2, NULL, NULL),
(16, 'Cañete', 2, NULL, NULL),
(17, 'Contulmo', 2, NULL, NULL),
(18, 'Curanilahue', 2, NULL, NULL),
(19, 'Los Alamos', 2, NULL, NULL),
(20, 'Tirúa', 2, NULL, NULL),
(21, 'Los Angeles', 3, NULL, NULL),
(22, 'Antuco', 3, NULL, NULL),
(23, 'Laja', 3, NULL, NULL),
(24, 'Mulchén', 3, NULL, NULL),
(25, 'Nacimiento', 3, NULL, NULL),
(26, 'Negrete', 3, NULL, NULL),
(27, 'Quilaco', 3, NULL, NULL),
(28, 'Quilleco', 3, NULL, NULL),
(29, 'San Rosendo', 3, NULL, NULL),
(30, 'Santa Bárbara', 3, NULL, NULL),
(31, 'Tucapel', 3, NULL, NULL),
(32, 'Alto Biobío', 3, NULL, NULL),
(33, 'Cabrero', 3, NULL, NULL),
(34, 'Yumbel', 3, NULL, NULL),
(35, 'Angol', 4, NULL, NULL),
(36, 'Collipulli', 4, NULL, NULL),
(37, 'Curacautín', 4, NULL, NULL),
(38, 'Ercilla', 4, NULL, NULL),
(39, 'Lonquimay', 4, NULL, NULL),
(40, 'Los Sauces', 4, NULL, NULL),
(41, 'Lumaco', 4, NULL, NULL),
(42, 'Purén', 4, NULL, NULL),
(43, 'Renaico', 4, NULL, NULL),
(44, 'Traiguén', 4, NULL, NULL),
(45, 'Victoria', 4, NULL, NULL),
(46, 'Gorbea', 5, NULL, NULL),
(47, 'Lautaro', 5, NULL, NULL),
(48, 'Loncoche', 5, NULL, NULL),
(49, 'Melipeuco', 5, NULL, NULL),
(50, 'Nueva Imperial', 5, NULL, NULL),
(51, 'Padre Las Casas', 5, NULL, NULL),
(52, 'Perquenco', 5, NULL, NULL),
(53, 'Pitrufquén', 5, NULL, NULL),
(54, 'Pucón', 5, NULL, NULL),
(55, 'Saavedra', 5, NULL, NULL),
(56, 'Teodoro Schmidt', 5, NULL, NULL),
(57, 'Toltén', 5, NULL, NULL),
(58, 'Vilcún', 5, NULL, NULL),
(59, 'Villarrica', 5, NULL, NULL),
(60, 'Cholchol', 5, NULL, NULL),
(61, 'Temuco', 5, NULL, NULL),
(62, 'Carahue', 5, NULL, NULL),
(63, 'Cunco', 5, NULL, NULL),
(64, 'Curarrehue', 5, NULL, NULL),
(65, 'Freire', 5, NULL, NULL),
(66, 'Galvarino', 5, NULL, NULL),
(67, 'Quirihue', 6, NULL, NULL),
(68, 'Cobquecura', 6, NULL, NULL),
(69, 'Coelemu', 6, NULL, NULL),
(70, 'Ninhue', 6, NULL, NULL),
(71, 'Portezuelo', 6, NULL, NULL),
(72, 'Ránquil', 6, NULL, NULL),
(73, 'Treguaco', 6, NULL, NULL),
(74, 'San Carlos', 7, NULL, NULL),
(75, 'Coihueco', 7, NULL, NULL),
(76, 'Ñiquén', 7, NULL, NULL),
(77, 'San Fabián', 7, NULL, NULL),
(78, 'San Nicolás', 7, NULL, NULL),
(79, 'Chillán', 8, NULL, NULL),
(80, 'Bulnes', 8, NULL, NULL),
(81, 'Chillán Viejo', 8, NULL, NULL),
(82, 'El Carmen', 8, NULL, NULL),
(83, 'Pemuco', 8, NULL, NULL),
(84, 'Pinto', 8, NULL, NULL),
(85, 'Quillón', 8, NULL, NULL),
(86, 'San Ignacio', 8, NULL, NULL),
(87, 'Yungay', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_11_200107_create_regiones_table', 2),
(6, '2022_12_11_233713_create_regions_table', 3),
(7, '2022_12_12_121930_create_provincias_table', 4),
(8, '2022_12_12_122047_create_ciudads_table', 4),
(9, '2022_12_12_123159_create_calles_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provincia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_region` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `provincia`, `fk_region`, `created_at`, `updated_at`) VALUES
(1, 'Concepción', 8, NULL, NULL),
(2, 'Arauco', 8, NULL, NULL),
(3, 'Bio Bio', 8, NULL, NULL),
(4, 'Malleco', 9, NULL, NULL),
(5, 'Cautín', 9, NULL, NULL),
(6, 'Itata', 16, NULL, NULL),
(7, 'Punilla', 16, NULL, NULL),
(8, 'Diguillín', 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`id`, `region`, `created_at`, `updated_at`) VALUES
(1, 'Tarapaca', NULL, NULL),
(2, 'Antofagasta', NULL, NULL),
(3, 'Atacama', NULL, NULL),
(4, 'Coquimbo', NULL, NULL),
(5, 'Valparaiso', NULL, NULL),
(6, 'O.Higgins', NULL, NULL),
(7, 'El Maule', NULL, NULL),
(8, 'El Bio Bio', NULL, NULL),
(9, 'La Araucania', NULL, NULL),
(10, 'Los Lagos', NULL, NULL),
(11, 'Aysén', NULL, NULL),
(12, 'Magallanes y Antártica Chilena', NULL, NULL),
(13, 'Metropolitana de Santiago', NULL, NULL),
(14, 'Los Rios', NULL, NULL),
(15, 'Arica y Parinacota', NULL, NULL),
(16, 'Ñuble', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calles`
--
ALTER TABLE `calles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calles`
--
ALTER TABLE `calles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
