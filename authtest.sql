-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 27 Janvier 2017 à 16:40
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `authtest`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'toto tutu titi tata', '2017-01-27 13:17:00', '2017-01-27 13:17:00'),
(2, 'bdjdmldsf fkfdmlkjzarm olkjfdmlf; fmje. dfpjz FFMLj ?', '2017-01-28 15:13:17', '2017-01-28 15:13:17'),
(3, 'fdfsfsdfdsfsd', '2017-01-27 14:29:03', '2017-01-27 14:29:03'),
(4, 'rrtyrtyrtyr', '2017-01-27 15:01:10', '2017-01-27 15:01:10'),
(5, 'fizjp^zgj<^pojga"ger', '2017-01-27 15:01:18', '2017-01-27 15:01:18'),
(6, 'sdfsdfsffartetrtukjghdf', '2017-01-27 15:05:46', '2017-01-27 15:05:46'),
(7, 'kjgfjytrjyctrevibuguh', '2017-01-27 15:09:21', '2017-01-27 15:09:21'),
(26, 'Qfgehr', '2017-01-27 15:12:23', '2017-01-27 15:12:23'),
(40, 'èugfouyf', '2017-01-27 15:14:23', '2017-01-27 15:14:23'),
(41, 'sdofihdsofijsdfs', '2017-01-27 15:15:34', '2017-01-27 15:15:34'),
(42, 'dfgdfgdfg', '2017-01-27 15:22:07', '2017-01-27 15:22:07'),
(43, 'dfgdfgdfg', '2017-01-27 15:22:18', '2017-01-27 15:22:18'),
(44, 'fktiujaGJCHNVB', '2017-01-27 15:22:24', '2017-01-27 15:22:24'),
(45, 'sdfsdfsdf', '2017-01-27 16:24:03', '2017-01-27 16:24:03');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_27_103959_create_messages_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sdfsf', 'sdfsdf@sdf.com', '$2y$10$XvO5mjALtsls0oKG6Bx8j.3wo75LM5jxUDPmAyssT0eMuqBVMgM76', NULL, '2017-01-25 14:46:16', '2017-01-25 14:46:16'),
(2, 'joss', 'jossyeti@gmail.com', '$2y$10$XQY7DYFTH.jqw6Qsuqf/iOw4f4t1q./DG323H4Tm9au4ECL.dxtay', 'rxiCcaYPHgu7eVpqdDxj8BBPYyY35yH5mpSZOexIFxsAXCZvc64P8lOYwojS', '2017-01-27 08:24:51', '2017-01-27 09:38:04');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
