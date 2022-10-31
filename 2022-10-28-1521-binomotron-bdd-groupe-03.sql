-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 28 oct. 2022 à 13:21
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `binomotron`
--

-- --------------------------------------------------------

--
-- Structure de la table `niveaux`
--

CREATE TABLE `niveaux` (
  `id_niveau` int NOT NULL,
  `nom_niveau` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `niveaux`
--

INSERT INTO `niveaux` (`id_niveau`, `nom_niveau`) VALUES
(1, 'Débutant'),
(2, 'Intermédiaire'),
(3, 'Expert');

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `id_personne` int NOT NULL,
  `nom_personne` varchar(50) DEFAULT NULL,
  `prenom_personne` varchar(50) DEFAULT NULL,
  `email_personne` varchar(100) DEFAULT NULL,
  `niveau_personne` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`id_personne`, `nom_personne`, `prenom_personne`, `email_personne`, `niveau_personne`) VALUES
(1, 'Le Grand', 'Kevin', 'kevin.le-grand@isen-ouest.yncrea.fr', 1),
(2, 'Petiard', 'Harold', 'harold.petiard@isen-ouest.yncrea.fr', 3),
(3, 'Scanu', 'David', 'david.scanu@isen-ouest.yncrea.fr', 2),
(4, 'Ancelin', 'Antoine', 'antoine.ancelin@isen-ouest.yncrea.fr', 1),
(5, 'Journaux', 'Johann', 'johann.journaux@isen-ouest.yncrea.fr', 1),
(6, 'Lebarbier', 'Charley', 'charley.lebarbier@isen-ouest.yncrea.fr', 2),
(7, 'Diaby', 'Amadou', 'amadou.diaby@isen-ouest.yncrea.fr', 3),
(8, 'Daumer', 'Geoffroy', 'geoffroy.daumer@isen-ouest.yncrea.fr', 3),
(9, 'Jules', 'Dimitri', 'dimitri.jules@isen-ouest.yncrea.fr', 2),
(10, 'Guerin', 'Basile', 'basile.guerin@isen-ouest.yncrea.fr', 1),
(11, 'Oswald', 'Viacheslav', 'viacheslav.oswald@isen-ouest.yncrea.fr', 2),
(12, 'Dussart', 'Ramata Soraya', 'ramata-soraya.dussart@isen-ouest.yncrea.fr', 1),
(13, 'Zouiten', 'Guinel', 'guinel.zouiten@isen-ouest.yncrea.fr', 3);

-- --------------------------------------------------------

--
-- Structure de la table `personnes_groupes`
--

CREATE TABLE `personnes_groupes` (
  `id_personne` int NOT NULL,
  `id_groupe` int NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `personnes_groupes`
--

INSERT INTO `personnes_groupes` (`id_personne`, `id_groupe`, `date`) VALUES
(6, 1, '2022-10-28 10:45:26'),
(5, 1, '2022-10-28 10:45:26'),
(8, 2, '2022-10-28 10:45:26'),
(12, 2, '2022-10-28 10:45:26'),
(9, 3, '2022-10-28 10:45:26'),
(3, 3, '2022-10-28 10:45:26'),
(10, 4, '2022-10-28 10:45:26'),
(2, 4, '2022-10-28 10:45:26'),
(7, 5, '2022-10-28 10:45:26'),
(1, 5, '2022-10-28 10:45:26'),
(4, 6, '2022-10-28 10:45:26'),
(13, 6, '2022-10-28 10:45:26'),
(11, 7, '2022-10-28 10:45:26'),
(2, 1, '2022-10-28 11:24:25'),
(4, 1, '2022-10-28 11:24:25'),
(3, 2, '2022-10-28 11:24:25'),
(1, 2, '2022-10-28 11:24:25'),
(9, 3, '2022-10-28 11:24:25'),
(13, 3, '2022-10-28 11:24:25'),
(11, 4, '2022-10-28 11:24:25'),
(6, 4, '2022-10-28 11:24:25'),
(5, 5, '2022-10-28 11:24:25'),
(12, 5, '2022-10-28 11:24:25'),
(10, 6, '2022-10-28 11:24:25'),
(7, 6, '2022-10-28 11:24:25'),
(8, 7, '2022-10-28 11:24:25'),
(11, 1, '2022-10-28 11:33:37'),
(3, 1, '2022-10-28 11:33:37'),
(8, 2, '2022-10-28 11:33:37'),
(1, 2, '2022-10-28 11:33:37'),
(6, 3, '2022-10-28 11:33:37'),
(4, 3, '2022-10-28 11:33:37'),
(5, 4, '2022-10-28 11:33:37'),
(12, 4, '2022-10-28 11:33:37'),
(2, 5, '2022-10-28 11:33:37'),
(13, 5, '2022-10-28 11:33:37'),
(10, 6, '2022-10-28 11:33:37'),
(9, 6, '2022-10-28 11:33:37'),
(7, 7, '2022-10-28 11:33:37'),
(2, 1, '2022-10-28 12:59:11'),
(8, 1, '2022-10-28 12:59:11'),
(5, 2, '2022-10-28 12:59:11'),
(12, 2, '2022-10-28 12:59:11'),
(7, 3, '2022-10-28 12:59:11'),
(10, 3, '2022-10-28 12:59:11'),
(1, 4, '2022-10-28 12:59:11'),
(11, 4, '2022-10-28 12:59:11'),
(3, 5, '2022-10-28 12:59:11'),
(4, 5, '2022-10-28 12:59:11'),
(6, 6, '2022-10-28 12:59:11'),
(13, 6, '2022-10-28 12:59:11'),
(9, 7, '2022-10-28 12:59:11'),
(6, 1, '2022-10-28 12:59:36'),
(1, 1, '2022-10-28 12:59:36'),
(5, 2, '2022-10-28 12:59:36'),
(8, 2, '2022-10-28 12:59:36'),
(3, 3, '2022-10-28 12:59:36'),
(13, 3, '2022-10-28 12:59:36'),
(7, 4, '2022-10-28 12:59:36'),
(10, 4, '2022-10-28 12:59:36'),
(12, 5, '2022-10-28 12:59:36'),
(2, 5, '2022-10-28 12:59:36'),
(11, 6, '2022-10-28 12:59:36'),
(4, 6, '2022-10-28 12:59:36'),
(9, 7, '2022-10-28 12:59:36'),
(12, 1, '2022-10-28 14:11:58'),
(6, 1, '2022-10-28 14:11:58'),
(13, 2, '2022-10-28 14:11:58'),
(9, 2, '2022-10-28 14:11:58'),
(5, 3, '2022-10-28 14:11:58'),
(2, 3, '2022-10-28 14:11:58'),
(1, 4, '2022-10-28 14:11:58'),
(3, 4, '2022-10-28 14:11:58'),
(8, 5, '2022-10-28 14:11:58'),
(4, 5, '2022-10-28 14:11:58'),
(7, 6, '2022-10-28 14:11:58'),
(10, 6, '2022-10-28 14:11:58'),
(11, 7, '2022-10-28 14:11:58'),
(11, 1, '2022-10-28 14:12:35'),
(9, 1, '2022-10-28 14:12:35'),
(5, 2, '2022-10-28 14:12:35'),
(6, 2, '2022-10-28 14:12:35'),
(7, 3, '2022-10-28 14:12:35'),
(8, 3, '2022-10-28 14:12:35'),
(4, 4, '2022-10-28 14:12:35'),
(2, 4, '2022-10-28 14:12:35'),
(12, 5, '2022-10-28 14:12:35'),
(13, 5, '2022-10-28 14:12:35'),
(10, 6, '2022-10-28 14:12:35'),
(3, 6, '2022-10-28 14:12:35'),
(1, 7, '2022-10-28 14:12:35'),
(4, 1, '2022-10-28 14:32:41'),
(11, 1, '2022-10-28 14:32:41'),
(2, 2, '2022-10-28 14:32:41'),
(8, 2, '2022-10-28 14:32:41'),
(13, 3, '2022-10-28 14:32:41'),
(3, 3, '2022-10-28 14:32:41'),
(5, 4, '2022-10-28 14:32:41'),
(10, 4, '2022-10-28 14:32:41'),
(6, 5, '2022-10-28 14:32:41'),
(7, 5, '2022-10-28 14:32:41'),
(12, 6, '2022-10-28 14:32:41'),
(9, 6, '2022-10-28 14:32:41'),
(1, 7, '2022-10-28 14:32:41'),
(6, 1, '2022-10-28 14:36:39'),
(4, 1, '2022-10-28 14:36:39'),
(13, 2, '2022-10-28 14:36:39'),
(10, 2, '2022-10-28 14:36:39'),
(9, 3, '2022-10-28 14:36:39'),
(5, 3, '2022-10-28 14:36:39'),
(12, 4, '2022-10-28 14:36:39'),
(3, 4, '2022-10-28 14:36:39'),
(7, 5, '2022-10-28 14:36:39'),
(8, 5, '2022-10-28 14:36:39'),
(11, 6, '2022-10-28 14:36:39'),
(1, 6, '2022-10-28 14:36:39'),
(2, 7, '2022-10-28 14:36:39'),
(10, 1, '2022-10-28 14:37:19'),
(5, 1, '2022-10-28 14:37:19'),
(12, 2, '2022-10-28 14:37:19'),
(7, 2, '2022-10-28 14:37:19'),
(6, 3, '2022-10-28 14:37:19'),
(3, 3, '2022-10-28 14:37:19'),
(1, 4, '2022-10-28 14:37:19'),
(2, 4, '2022-10-28 14:37:19'),
(8, 5, '2022-10-28 14:37:19'),
(11, 5, '2022-10-28 14:37:19'),
(13, 6, '2022-10-28 14:37:19'),
(9, 6, '2022-10-28 14:37:19'),
(4, 7, '2022-10-28 14:37:19'),
(4, 1, '2022-10-28 14:37:50'),
(13, 1, '2022-10-28 14:37:50'),
(12, 2, '2022-10-28 14:37:50'),
(10, 2, '2022-10-28 14:37:50'),
(9, 3, '2022-10-28 14:37:50'),
(11, 3, '2022-10-28 14:37:50'),
(6, 4, '2022-10-28 14:37:50'),
(3, 4, '2022-10-28 14:37:50'),
(8, 5, '2022-10-28 14:37:50'),
(5, 5, '2022-10-28 14:37:50'),
(1, 6, '2022-10-28 14:37:50'),
(7, 6, '2022-10-28 14:37:50'),
(2, 7, '2022-10-28 14:37:50'),
(13, 1, '2022-10-28 14:38:22'),
(4, 1, '2022-10-28 14:38:22'),
(9, 2, '2022-10-28 14:38:22'),
(8, 2, '2022-10-28 14:38:22'),
(11, 3, '2022-10-28 14:38:22'),
(2, 3, '2022-10-28 14:38:22'),
(12, 4, '2022-10-28 14:38:22'),
(3, 4, '2022-10-28 14:38:22'),
(10, 5, '2022-10-28 14:38:22'),
(6, 5, '2022-10-28 14:38:22'),
(1, 6, '2022-10-28 14:38:22'),
(7, 6, '2022-10-28 14:38:22'),
(5, 7, '2022-10-28 14:38:22'),
(1, 1, '2022-10-28 14:39:27'),
(12, 1, '2022-10-28 14:39:27'),
(3, 2, '2022-10-28 14:39:27'),
(7, 2, '2022-10-28 14:39:27'),
(9, 3, '2022-10-28 14:39:27'),
(10, 3, '2022-10-28 14:39:27'),
(8, 4, '2022-10-28 14:39:27'),
(13, 4, '2022-10-28 14:39:27'),
(6, 5, '2022-10-28 14:39:27'),
(11, 5, '2022-10-28 14:39:27'),
(2, 6, '2022-10-28 14:39:27'),
(4, 6, '2022-10-28 14:39:27'),
(5, 7, '2022-10-28 14:39:27'),
(10, 1, '2022-10-28 14:39:32'),
(8, 1, '2022-10-28 14:39:32'),
(1, 2, '2022-10-28 14:39:32'),
(7, 2, '2022-10-28 14:39:32'),
(6, 3, '2022-10-28 14:39:32'),
(2, 3, '2022-10-28 14:39:32'),
(3, 4, '2022-10-28 14:39:32'),
(11, 4, '2022-10-28 14:39:32'),
(5, 5, '2022-10-28 14:39:32'),
(13, 5, '2022-10-28 14:39:32'),
(9, 6, '2022-10-28 14:39:32'),
(12, 6, '2022-10-28 14:39:32'),
(4, 7, '2022-10-28 14:39:32'),
(8, 1, '2022-10-28 14:39:38'),
(3, 1, '2022-10-28 14:39:38'),
(12, 2, '2022-10-28 14:39:38'),
(5, 2, '2022-10-28 14:39:38'),
(7, 3, '2022-10-28 14:39:38'),
(13, 3, '2022-10-28 14:39:38'),
(4, 4, '2022-10-28 14:39:38'),
(11, 4, '2022-10-28 14:39:38'),
(10, 5, '2022-10-28 14:39:38'),
(6, 5, '2022-10-28 14:39:38'),
(2, 6, '2022-10-28 14:39:38'),
(9, 6, '2022-10-28 14:39:38'),
(1, 7, '2022-10-28 14:39:38'),
(6, 1, '2022-10-28 14:39:40'),
(2, 1, '2022-10-28 14:39:40'),
(1, 2, '2022-10-28 14:39:40'),
(11, 2, '2022-10-28 14:39:40'),
(9, 3, '2022-10-28 14:39:40'),
(7, 3, '2022-10-28 14:39:40'),
(5, 4, '2022-10-28 14:39:40'),
(13, 4, '2022-10-28 14:39:40'),
(8, 5, '2022-10-28 14:39:40'),
(10, 5, '2022-10-28 14:39:40'),
(3, 6, '2022-10-28 14:39:40'),
(4, 6, '2022-10-28 14:39:40'),
(12, 7, '2022-10-28 14:39:40'),
(13, 1, '2022-10-28 14:39:58'),
(9, 1, '2022-10-28 14:39:58'),
(11, 2, '2022-10-28 14:39:58'),
(6, 2, '2022-10-28 14:39:58'),
(1, 3, '2022-10-28 14:39:58'),
(2, 3, '2022-10-28 14:39:58'),
(8, 4, '2022-10-28 14:39:58'),
(3, 4, '2022-10-28 14:39:58'),
(10, 5, '2022-10-28 14:39:58'),
(4, 5, '2022-10-28 14:39:58'),
(12, 6, '2022-10-28 14:39:58'),
(5, 6, '2022-10-28 14:39:58'),
(7, 7, '2022-10-28 14:39:58'),
(2, 1, '2022-10-28 14:40:18'),
(13, 1, '2022-10-28 14:40:18'),
(7, 2, '2022-10-28 14:40:18'),
(12, 2, '2022-10-28 14:40:18'),
(3, 3, '2022-10-28 14:40:18'),
(10, 3, '2022-10-28 14:40:18'),
(4, 4, '2022-10-28 14:40:18'),
(1, 4, '2022-10-28 14:40:18'),
(8, 5, '2022-10-28 14:40:18'),
(5, 5, '2022-10-28 14:40:18'),
(9, 6, '2022-10-28 14:40:18'),
(11, 6, '2022-10-28 14:40:18'),
(6, 7, '2022-10-28 14:40:18'),
(11, 1, '2022-10-28 14:41:23'),
(2, 1, '2022-10-28 14:41:23'),
(5, 2, '2022-10-28 14:41:23'),
(7, 2, '2022-10-28 14:41:23'),
(12, 3, '2022-10-28 14:41:23'),
(13, 3, '2022-10-28 14:41:23'),
(10, 4, '2022-10-28 14:41:23'),
(8, 4, '2022-10-28 14:41:23'),
(4, 5, '2022-10-28 14:41:23'),
(6, 5, '2022-10-28 14:41:23'),
(9, 6, '2022-10-28 14:41:23'),
(3, 6, '2022-10-28 14:41:23'),
(1, 7, '2022-10-28 14:41:23'),
(3, 1, '2022-10-28 14:42:12'),
(5, 1, '2022-10-28 14:42:12'),
(6, 2, '2022-10-28 14:42:12'),
(4, 2, '2022-10-28 14:42:12'),
(7, 3, '2022-10-28 14:42:12'),
(8, 3, '2022-10-28 14:42:12'),
(10, 4, '2022-10-28 14:42:12'),
(9, 4, '2022-10-28 14:42:12'),
(11, 5, '2022-10-28 14:42:12'),
(2, 5, '2022-10-28 14:42:12'),
(13, 6, '2022-10-28 14:42:12'),
(1, 6, '2022-10-28 14:42:12'),
(12, 7, '2022-10-28 14:42:12'),
(10, 1, '2022-10-28 14:42:43'),
(8, 1, '2022-10-28 14:42:43'),
(7, 2, '2022-10-28 14:42:43'),
(5, 2, '2022-10-28 14:42:43'),
(6, 3, '2022-10-28 14:42:43'),
(9, 3, '2022-10-28 14:42:43'),
(11, 4, '2022-10-28 14:42:43'),
(13, 4, '2022-10-28 14:42:43'),
(3, 5, '2022-10-28 14:42:43'),
(1, 5, '2022-10-28 14:42:43'),
(12, 6, '2022-10-28 14:42:43'),
(2, 6, '2022-10-28 14:42:43'),
(4, 7, '2022-10-28 14:42:43'),
(11, 1, '2022-10-28 14:42:54'),
(7, 1, '2022-10-28 14:42:54'),
(12, 2, '2022-10-28 14:42:54'),
(5, 2, '2022-10-28 14:42:54'),
(9, 3, '2022-10-28 14:42:54'),
(13, 3, '2022-10-28 14:42:54'),
(10, 4, '2022-10-28 14:42:54'),
(8, 4, '2022-10-28 14:42:54'),
(1, 5, '2022-10-28 14:42:54'),
(4, 5, '2022-10-28 14:42:54'),
(6, 6, '2022-10-28 14:42:54'),
(3, 6, '2022-10-28 14:42:54'),
(2, 7, '2022-10-28 14:42:54'),
(3, 1, '2022-10-28 14:46:51'),
(1, 1, '2022-10-28 14:46:51'),
(13, 2, '2022-10-28 14:46:51'),
(4, 2, '2022-10-28 14:46:51'),
(8, 3, '2022-10-28 14:46:51'),
(7, 3, '2022-10-28 14:46:51'),
(12, 4, '2022-10-28 14:46:51'),
(10, 4, '2022-10-28 14:46:51'),
(6, 5, '2022-10-28 14:46:51'),
(5, 5, '2022-10-28 14:46:51'),
(11, 6, '2022-10-28 14:46:51'),
(2, 6, '2022-10-28 14:46:51'),
(9, 7, '2022-10-28 14:46:51'),
(3, 1, '2022-10-28 14:47:20'),
(11, 1, '2022-10-28 14:47:20'),
(4, 2, '2022-10-28 14:47:20'),
(6, 2, '2022-10-28 14:47:20'),
(13, 3, '2022-10-28 14:47:20'),
(12, 3, '2022-10-28 14:47:20'),
(8, 4, '2022-10-28 14:47:20'),
(1, 4, '2022-10-28 14:47:20'),
(9, 5, '2022-10-28 14:47:20'),
(5, 5, '2022-10-28 14:47:20'),
(10, 6, '2022-10-28 14:47:20'),
(2, 6, '2022-10-28 14:47:20'),
(7, 7, '2022-10-28 14:47:20'),
(8, 1, '2022-10-28 14:48:02'),
(12, 1, '2022-10-28 14:48:02'),
(11, 2, '2022-10-28 14:48:02'),
(2, 2, '2022-10-28 14:48:02'),
(9, 3, '2022-10-28 14:48:02'),
(3, 3, '2022-10-28 14:48:02'),
(1, 4, '2022-10-28 14:48:02'),
(6, 4, '2022-10-28 14:48:02'),
(10, 5, '2022-10-28 14:48:02'),
(13, 5, '2022-10-28 14:48:02'),
(7, 6, '2022-10-28 14:48:02'),
(4, 6, '2022-10-28 14:48:02'),
(5, 7, '2022-10-28 14:48:02'),
(7, 1, '2022-10-28 14:48:49'),
(4, 1, '2022-10-28 14:48:49'),
(2, 1, '2022-10-28 14:48:49'),
(5, 2, '2022-10-28 14:48:49'),
(11, 2, '2022-10-28 14:48:49'),
(12, 2, '2022-10-28 14:48:49'),
(9, 3, '2022-10-28 14:48:49'),
(13, 3, '2022-10-28 14:48:49'),
(3, 3, '2022-10-28 14:48:49'),
(8, 4, '2022-10-28 14:48:49'),
(1, 4, '2022-10-28 14:48:49'),
(6, 4, '2022-10-28 14:48:49'),
(10, 5, '2022-10-28 14:48:49'),
(4, 1, '2022-10-28 14:49:21'),
(10, 1, '2022-10-28 14:49:21'),
(12, 1, '2022-10-28 14:49:21'),
(6, 1, '2022-10-28 14:49:21'),
(7, 1, '2022-10-28 14:49:21'),
(13, 2, '2022-10-28 14:49:21'),
(8, 2, '2022-10-28 14:49:21'),
(5, 2, '2022-10-28 14:49:21'),
(2, 2, '2022-10-28 14:49:21'),
(9, 2, '2022-10-28 14:49:21'),
(3, 3, '2022-10-28 14:49:21'),
(1, 3, '2022-10-28 14:49:21'),
(11, 3, '2022-10-28 14:49:21'),
(4, 1, '2022-10-28 14:56:24'),
(3, 1, '2022-10-28 14:56:24'),
(13, 1, '2022-10-28 14:56:24'),
(9, 1, '2022-10-28 14:56:24'),
(7, 1, '2022-10-28 14:56:24'),
(8, 2, '2022-10-28 14:56:24'),
(5, 2, '2022-10-28 14:56:24'),
(11, 2, '2022-10-28 14:56:24'),
(2, 2, '2022-10-28 14:56:24'),
(10, 2, '2022-10-28 14:56:24'),
(12, 3, '2022-10-28 14:56:24'),
(1, 3, '2022-10-28 14:56:24'),
(6, 3, '2022-10-28 14:56:24'),
(13, 1, '2022-10-28 14:59:15'),
(1, 1, '2022-10-28 14:59:15'),
(12, 1, '2022-10-28 14:59:15'),
(11, 1, '2022-10-28 14:59:15'),
(6, 1, '2022-10-28 14:59:15'),
(10, 2, '2022-10-28 14:59:15'),
(7, 2, '2022-10-28 14:59:15'),
(2, 2, '2022-10-28 14:59:15'),
(5, 2, '2022-10-28 14:59:15'),
(3, 2, '2022-10-28 14:59:15'),
(8, 3, '2022-10-28 14:59:15'),
(4, 3, '2022-10-28 14:59:15'),
(9, 3, '2022-10-28 14:59:15'),
(2, 1, '2022-10-28 15:00:57'),
(1, 1, '2022-10-28 15:00:57'),
(13, 1, '2022-10-28 15:00:57'),
(8, 1, '2022-10-28 15:00:57'),
(3, 1, '2022-10-28 15:00:57'),
(5, 2, '2022-10-28 15:00:57'),
(4, 2, '2022-10-28 15:00:57'),
(10, 2, '2022-10-28 15:00:57'),
(12, 2, '2022-10-28 15:00:57'),
(9, 2, '2022-10-28 15:00:57'),
(11, 3, '2022-10-28 15:00:57'),
(7, 3, '2022-10-28 15:00:57'),
(6, 3, '2022-10-28 15:00:57'),
(2, 1, '2022-10-28 15:02:25'),
(7, 1, '2022-10-28 15:02:25'),
(5, 1, '2022-10-28 15:02:25'),
(4, 1, '2022-10-28 15:02:25'),
(9, 1, '2022-10-28 15:02:25'),
(13, 2, '2022-10-28 15:02:25'),
(1, 2, '2022-10-28 15:02:25'),
(10, 2, '2022-10-28 15:02:25'),
(3, 2, '2022-10-28 15:02:25'),
(12, 2, '2022-10-28 15:02:25'),
(11, 3, '2022-10-28 15:02:25'),
(8, 3, '2022-10-28 15:02:25'),
(6, 3, '2022-10-28 15:02:25'),
(9, 1, '2022-10-28 15:02:49'),
(4, 1, '2022-10-28 15:02:49'),
(10, 1, '2022-10-28 15:02:49'),
(12, 1, '2022-10-28 15:02:49'),
(11, 1, '2022-10-28 15:02:49'),
(13, 2, '2022-10-28 15:02:49'),
(1, 2, '2022-10-28 15:02:49'),
(5, 2, '2022-10-28 15:02:49'),
(2, 2, '2022-10-28 15:02:49'),
(7, 2, '2022-10-28 15:02:49'),
(6, 3, '2022-10-28 15:02:49'),
(3, 3, '2022-10-28 15:02:49'),
(8, 3, '2022-10-28 15:02:49'),
(10, 1, '2022-10-28 15:03:15'),
(13, 1, '2022-10-28 15:03:15'),
(8, 1, '2022-10-28 15:03:15'),
(5, 1, '2022-10-28 15:03:15'),
(3, 1, '2022-10-28 15:03:15'),
(7, 2, '2022-10-28 15:03:15'),
(4, 2, '2022-10-28 15:03:15'),
(1, 2, '2022-10-28 15:03:15'),
(9, 2, '2022-10-28 15:03:15'),
(2, 2, '2022-10-28 15:03:15'),
(11, 3, '2022-10-28 15:03:15'),
(12, 3, '2022-10-28 15:03:15'),
(6, 3, '2022-10-28 15:03:15'),
(12, 1, '2022-10-28 15:03:24'),
(3, 1, '2022-10-28 15:03:24'),
(4, 1, '2022-10-28 15:03:24'),
(1, 1, '2022-10-28 15:03:24'),
(7, 1, '2022-10-28 15:03:24'),
(10, 2, '2022-10-28 15:03:24'),
(6, 2, '2022-10-28 15:03:24'),
(2, 2, '2022-10-28 15:03:24'),
(5, 2, '2022-10-28 15:03:24'),
(13, 2, '2022-10-28 15:03:24'),
(9, 3, '2022-10-28 15:03:24'),
(11, 3, '2022-10-28 15:03:24'),
(8, 3, '2022-10-28 15:03:24'),
(11, 1, '2022-10-28 15:03:49'),
(1, 1, '2022-10-28 15:03:49'),
(2, 1, '2022-10-28 15:03:49'),
(13, 1, '2022-10-28 15:03:49'),
(4, 1, '2022-10-28 15:03:49'),
(10, 2, '2022-10-28 15:03:49'),
(8, 2, '2022-10-28 15:03:49'),
(9, 2, '2022-10-28 15:03:49'),
(3, 2, '2022-10-28 15:03:49'),
(12, 2, '2022-10-28 15:03:49'),
(6, 3, '2022-10-28 15:03:49'),
(7, 3, '2022-10-28 15:03:49'),
(5, 3, '2022-10-28 15:03:49'),
(3, 1, '2022-10-28 15:04:04'),
(12, 1, '2022-10-28 15:04:04'),
(11, 1, '2022-10-28 15:04:04'),
(1, 1, '2022-10-28 15:04:04'),
(13, 1, '2022-10-28 15:04:04'),
(2, 2, '2022-10-28 15:04:04'),
(5, 2, '2022-10-28 15:04:04'),
(9, 2, '2022-10-28 15:04:04'),
(6, 2, '2022-10-28 15:04:04'),
(10, 2, '2022-10-28 15:04:04'),
(4, 3, '2022-10-28 15:04:04'),
(8, 3, '2022-10-28 15:04:04'),
(7, 3, '2022-10-28 15:04:04'),
(12, 1, '2022-10-28 15:04:14'),
(6, 1, '2022-10-28 15:04:14'),
(2, 1, '2022-10-28 15:04:14'),
(9, 1, '2022-10-28 15:04:14'),
(7, 1, '2022-10-28 15:04:14'),
(10, 2, '2022-10-28 15:04:14'),
(3, 2, '2022-10-28 15:04:14'),
(13, 2, '2022-10-28 15:04:14'),
(11, 2, '2022-10-28 15:04:14'),
(1, 2, '2022-10-28 15:04:14'),
(4, 3, '2022-10-28 15:04:14'),
(5, 3, '2022-10-28 15:04:14'),
(8, 3, '2022-10-28 15:04:14'),
(3, 1, '2022-10-28 15:04:24'),
(13, 1, '2022-10-28 15:04:24'),
(10, 1, '2022-10-28 15:04:24'),
(11, 1, '2022-10-28 15:04:24'),
(5, 1, '2022-10-28 15:04:24'),
(6, 2, '2022-10-28 15:04:24'),
(4, 2, '2022-10-28 15:04:24'),
(12, 2, '2022-10-28 15:04:24'),
(1, 2, '2022-10-28 15:04:24'),
(7, 2, '2022-10-28 15:04:24'),
(9, 3, '2022-10-28 15:04:24'),
(2, 3, '2022-10-28 15:04:24'),
(8, 3, '2022-10-28 15:04:24'),
(7, 1, '2022-10-28 15:06:14'),
(6, 1, '2022-10-28 15:06:14'),
(3, 1, '2022-10-28 15:06:14'),
(1, 1, '2022-10-28 15:06:14'),
(12, 1, '2022-10-28 15:06:14'),
(8, 2, '2022-10-28 15:06:14'),
(5, 2, '2022-10-28 15:06:14'),
(4, 2, '2022-10-28 15:06:14'),
(2, 2, '2022-10-28 15:06:14'),
(10, 2, '2022-10-28 15:06:14'),
(9, 3, '2022-10-28 15:06:14'),
(11, 3, '2022-10-28 15:06:14'),
(13, 3, '2022-10-28 15:06:14'),
(1, 1, '2022-10-28 15:06:44'),
(4, 1, '2022-10-28 15:06:44'),
(2, 1, '2022-10-28 15:06:44'),
(9, 1, '2022-10-28 15:06:44'),
(8, 1, '2022-10-28 15:06:44'),
(11, 2, '2022-10-28 15:06:44'),
(10, 2, '2022-10-28 15:06:44'),
(12, 2, '2022-10-28 15:06:44'),
(3, 2, '2022-10-28 15:06:44'),
(5, 2, '2022-10-28 15:06:44'),
(7, 3, '2022-10-28 15:06:44'),
(6, 3, '2022-10-28 15:06:44'),
(13, 3, '2022-10-28 15:06:44'),
(11, 1, '2022-10-28 15:07:05'),
(6, 1, '2022-10-28 15:07:05'),
(2, 1, '2022-10-28 15:07:05'),
(13, 1, '2022-10-28 15:07:05'),
(3, 1, '2022-10-28 15:07:05'),
(7, 2, '2022-10-28 15:07:05'),
(1, 2, '2022-10-28 15:07:05'),
(4, 2, '2022-10-28 15:07:05'),
(9, 2, '2022-10-28 15:07:05'),
(5, 2, '2022-10-28 15:07:05'),
(12, 3, '2022-10-28 15:07:05'),
(10, 3, '2022-10-28 15:07:05'),
(8, 3, '2022-10-28 15:07:05'),
(8, 1, '2022-10-28 15:12:45'),
(5, 1, '2022-10-28 15:12:45'),
(12, 1, '2022-10-28 15:12:45'),
(2, 1, '2022-10-28 15:12:45'),
(9, 1, '2022-10-28 15:12:45'),
(11, 2, '2022-10-28 15:12:45'),
(3, 2, '2022-10-28 15:12:45'),
(13, 2, '2022-10-28 15:12:45'),
(4, 2, '2022-10-28 15:12:45'),
(1, 2, '2022-10-28 15:12:45'),
(6, 3, '2022-10-28 15:12:45'),
(7, 3, '2022-10-28 15:12:45'),
(10, 3, '2022-10-28 15:12:45'),
(9, 1, '2022-10-28 15:15:43'),
(11, 1, '2022-10-28 15:15:43'),
(13, 1, '2022-10-28 15:15:43'),
(8, 1, '2022-10-28 15:15:43'),
(10, 1, '2022-10-28 15:15:43'),
(6, 2, '2022-10-28 15:15:43'),
(5, 2, '2022-10-28 15:15:43'),
(12, 2, '2022-10-28 15:15:43'),
(7, 2, '2022-10-28 15:15:43'),
(2, 2, '2022-10-28 15:15:43'),
(1, 3, '2022-10-28 15:15:43'),
(3, 3, '2022-10-28 15:15:43'),
(4, 3, '2022-10-28 15:15:43'),
(13, 1, '2022-10-28 15:16:26'),
(8, 1, '2022-10-28 15:16:26'),
(2, 2, '2022-10-28 15:16:26'),
(1, 2, '2022-10-28 15:16:26'),
(6, 3, '2022-10-28 15:16:26'),
(4, 3, '2022-10-28 15:16:26'),
(10, 4, '2022-10-28 15:16:26'),
(9, 4, '2022-10-28 15:16:26'),
(3, 5, '2022-10-28 15:16:26'),
(5, 5, '2022-10-28 15:16:26'),
(11, 6, '2022-10-28 15:16:26'),
(7, 6, '2022-10-28 15:16:26'),
(12, 7, '2022-10-28 15:16:26');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `niveaux`
--
ALTER TABLE `niveaux`
  ADD PRIMARY KEY (`id_niveau`);

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`id_personne`),
  ADD KEY `niveau_personne` (`niveau_personne`);

--
-- Index pour la table `personnes_groupes`
--
ALTER TABLE `personnes_groupes`
  ADD KEY `id_personne` (`id_personne`),
  ADD KEY `id_groupe` (`id_groupe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `niveaux`
--
ALTER TABLE `niveaux`
  MODIFY `id_niveau` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `id_personne` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD CONSTRAINT `personnes_ibfk_1` FOREIGN KEY (`niveau_personne`) REFERENCES `niveaux` (`id_niveau`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `personnes_groupes`
--
ALTER TABLE `personnes_groupes`
  ADD CONSTRAINT `personnes_groupes_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personnes` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;