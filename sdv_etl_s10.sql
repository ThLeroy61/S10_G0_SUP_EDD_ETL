-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 31 oct. 2025 à 16:55
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sdv_etl_s10`
--

-- --------------------------------------------------------

--
-- Structure de la table `crm`
--

DROP TABLE IF EXISTS `crm`;
CREATE TABLE IF NOT EXISTS `crm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date_inscription` date NOT NULL,
  `revenu_annuel` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `crm`
--

INSERT INTO `crm` (`id`, `client_id`, `nom`, `email`, `date_inscription`, `revenu_annuel`) VALUES
(1, 1, 'Client_1', 'client1@gmail.com', '2022-03-06', 0),
(2, 2, 'Client_2', 'client2@gmail.com', '2022-03-15', 35000),
(3, 3, 'Client_3', 'client3@gmail.com', '2023-01-08', 35000),
(4, 4, 'Client_4', 'client4@gmail.com', '2022-04-28', 28000),
(5, 5, 'Client_5', 'client5@gmail.com', '2022-09-25', 42000),
(6, 6, 'Client_6', 'client6@gmail.com', '2023-03-26', 52000),
(7, 7, 'Client_7', 'client7@gmail.com', '2022-10-29', 52000),
(8, 8, 'Client_8', 'client8@gmail.com', '2022-08-22', 52000),
(9, 9, 'Client_9', 'client9@gmail.com', '2022-08-30', 28000),
(10, 10, 'Client_10', 'client10@gmail.com', '2023-04-21', 28000),
(11, 11, 'Client_11', 'client11@gmail.com', '2023-08-17', 42000),
(12, 12, 'Client_12', 'client12@gmail.com', '2022-05-20', 35000),
(13, 13, 'Client_13', 'client13@gmail.com', '2023-03-16', 0),
(14, 14, 'Client_14', 'client14@gmail.com', '2023-02-02', 35000),
(15, 15, 'Client_15', 'client15@gmail.com', '2023-11-08', 52000);

-- --------------------------------------------------------

--
-- Structure de la table `ecommerce`
--

DROP TABLE IF EXISTS `ecommerce`;
CREATE TABLE IF NOT EXISTS `ecommerce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerID` int NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `total_spent` double NOT NULL,
  `newsletter_optin` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ecommerce`
--

INSERT INTO `ecommerce` (`id`, `customerID`, `full_name`, `purchase_date`, `total_spent`, `newsletter_optin`) VALUES
(1, 13, 'Client_11', '2023-10-08', 436.86, 'Yes'),
(2, 10, 'Client_8', '2023-02-24', 238.32, 'No'),
(3, 18, 'Client_18', '2023-01-12', 92.62, 'No'),
(4, 21, 'Client_9', '2023-01-07', 394.42, 'No'),
(5, 9, 'Client_17', '2023-03-22', 184.17, 'Yes'),
(6, 17, 'Client_12', '2023-06-05', 364.92, 'No'),
(7, 12, 'Client_16', '2023-12-16', 169.02, 'No'),
(8, 22, 'Client_14', '2023-08-02', 329.87, 'No'),
(9, 16, 'Client_6', '2023-07-05', 230.15, 'No'),
(10, 14, 'Client_24', '2023-11-11', 497.69, 'No'),
(11, 6, 'Client_21', '2023-12-11', 287.13, 'Yes'),
(12, 24, 'Client_23', '2023-12-10', 136.66, 'No'),
(13, 5, 'Client_19', '2023-12-20', 64.91, 'No'),
(14, 7, 'Client_13', '2023-07-16', 265.94, 'No'),
(15, 8, 'Client_22', '2023-11-01', 176.28, 'No');

-- --------------------------------------------------------

--
-- Structure de la table `erp`
--

DROP TABLE IF EXISTS `erp`;
CREATE TABLE IF NOT EXISTS `erp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `nom_client` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `ville` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `chiffre_affaire` double NOT NULL,
  `date_creation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `erp`
--

INSERT INTO `erp` (`id`, `id_client`, `nom_client`, `ville`, `chiffre_affaire`, `date_creation`) VALUES
(1, 17, 'Client_4', 'Paris', 9547.21, '2023-10-13'),
(2, 15, 'Client_3', 'Marseille', 3022.8, '2021-10-24'),
(3, 5, 'Client_11', 'Paris', 2484.1, '2022-03-20'),
(4, 6, 'Client_18', 'Paris', 7221.65, '2022-06-26'),
(5, 11, 'Client_14', 'Marseille', 6062.34, '2023-09-22'),
(6, 20, 'Client_15', 'Marseille', 2568.62, '2023-08-05'),
(7, 3, 'Client_12', 'Inconnu', 9509.23, '2022-11-30'),
(8, 16, 'Client_5', 'Toulouse', 3714.65, '2022-12-27'),
(9, 8, 'Client_17', 'Toulouse', 2333.85, '2023-05-13'),
(10, 10, 'Client_10', 'Toulouse', 8242.09, '2022-02-22'),
(11, 4, 'Client_6', 'Paris', 2166.76, '2021-07-07'),
(12, 7, 'Client_7', 'Toulouse', 5926, '2022-04-07'),
(13, 19, 'Client_20', 'Inconnu', 5426.38, '2021-08-16'),
(14, 1, 'Client_9', 'Toulouse', 1620.85, '2021-10-26'),
(15, 18, 'Client_8', 'Lyon', 9382.1, '2024-01-08');

-- --------------------------------------------------------

--
-- Structure de la table `infos_client`
--

DROP TABLE IF EXISTS `infos_client`;
CREATE TABLE IF NOT EXISTS `infos_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville` varchar(100) COLLATE utf8mb4_general_ci DEFAULT 'Inconnu',
  `erp_chiffre_affaire` decimal(15,2) DEFAULT NULL,
  `crm_revenu_annuel` decimal(15,2) DEFAULT NULL,
  `ecommerce_total_spent` decimal(15,2) DEFAULT NULL,
  `erp_date_creation` date DEFAULT NULL,
  `crm_date_inscription` date DEFAULT NULL,
  `ecommerce_purchase_date` date DEFAULT NULL,
  `ecommerce_newsletter_optin` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `infos_client`
--

INSERT INTO `infos_client` (`id`, `client_id`, `nom`, `ville`, `erp_chiffre_affaire`, `crm_revenu_annuel`, `ecommerce_total_spent`, `erp_date_creation`, `crm_date_inscription`, `ecommerce_purchase_date`, `ecommerce_newsletter_optin`, `email`) VALUES
(1, '1', 'Client_1', 'Inconnu', 0.00, 0.00, 0.00, '1900-01-01', '2022-03-06', '1900-01-01', 'No', 'client1@gmail.com'),
(2, '10', 'Client_10', 'Toulouse', 8242.09, 28000.00, 0.00, '2022-02-22', '2023-04-21', '1900-01-01', 'No', 'client10@gmail.com'),
(3, '11', 'Client_11', 'Paris', 2484.10, 42000.00, 436.86, '2022-03-20', '2023-08-17', '2023-10-08', 'Yes', 'client11@gmail.com'),
(4, '12', 'Client_12', 'Inconnu', 9509.23, 35000.00, 364.92, '2022-11-30', '2022-05-20', '2023-06-05', 'No', 'client12@gmail.com'),
(5, '13', 'Client_13', 'Inconnu', 0.00, 0.00, 265.94, '1900-01-01', '2023-03-16', '2023-07-16', 'No', 'client13@gmail.com'),
(6, '14', 'Client_14', 'Marseille', 6062.34, 35000.00, 329.87, '2023-09-22', '2023-02-02', '2023-08-02', 'No', 'client14@gmail.com'),
(7, '15', 'Client_15', 'Marseille', 2568.62, 52000.00, 0.00, '2023-08-05', '2023-11-08', '1900-01-01', 'No', 'client15@gmail.com'),
(8, '16', 'Client_16', 'Inconnu', 0.00, 0.00, 169.02, '1900-01-01', '1900-01-01', '2023-12-16', 'No', 'client12@gmail.com'),
(9, '17', 'Client_17', 'Toulouse', 2333.85, 0.00, 184.17, '2023-05-13', '1900-01-01', '2023-03-22', 'Yes', 'client8@gmail.com'),
(10, '18', 'Client_18', 'Paris', 7221.65, 0.00, 92.62, '2022-06-26', '1900-01-01', '2023-01-12', 'No', 'client6@gmail.com'),
(11, '19', 'Client_19', 'Inconnu', 0.00, 0.00, 64.91, '1900-01-01', '1900-01-01', '2023-12-20', 'No', 'client5@gmail.com'),
(12, '2', 'Client_2', 'Inconnu', 0.00, 35000.00, 0.00, '1900-01-01', '2022-03-15', '1900-01-01', 'No', 'client2@gmail.com'),
(13, '20', 'Client_20', 'Inconnu', 5426.38, 0.00, 0.00, '2021-08-16', '1900-01-01', '1900-01-01', 'No', 'client19@gmail.com'),
(14, '21', 'Client_21', 'Inconnu', 0.00, 0.00, 287.13, '1900-01-01', '1900-01-01', '2023-12-11', 'Yes', 'client6@gmail.com'),
(15, '22', 'Client_22', 'Inconnu', 0.00, 0.00, 176.28, '1900-01-01', '1900-01-01', '2023-11-01', 'No', 'client8@gmail.com'),
(16, '23', 'Client_23', 'Inconnu', 0.00, 0.00, 136.66, '1900-01-01', '1900-01-01', '2023-12-10', 'No', 'client24@gmail.com'),
(17, '24', 'Client_24', 'Inconnu', 0.00, 0.00, 497.69, '1900-01-01', '1900-01-01', '2023-11-11', 'No', 'client14@gmail.com'),
(18, '3', 'Client_3', 'Marseille', 3022.80, 35000.00, 0.00, '2021-10-24', '2023-01-08', '1900-01-01', 'No', 'client3@gmail.com'),
(19, '4', 'Client_4', 'Paris', 9547.21, 28000.00, 0.00, '2023-10-13', '2022-04-28', '1900-01-01', 'No', 'client4@gmail.com'),
(20, '5', 'Client_5', 'Toulouse', 3714.65, 42000.00, 0.00, '2022-12-27', '2022-09-25', '1900-01-01', 'No', 'client5@gmail.com'),
(21, '6', 'Client_6', 'Paris', 2166.76, 52000.00, 230.15, '2021-07-07', '2023-03-26', '2023-07-05', 'No', 'client6@gmail.com'),
(22, '7', 'Client_7', 'Toulouse', 5926.00, 52000.00, 0.00, '2022-04-07', '2022-10-29', '1900-01-01', 'No', 'client7@gmail.com'),
(23, '8', 'Client_8', 'Lyon', 9382.10, 52000.00, 238.32, '2024-01-08', '2022-08-22', '2023-02-24', 'No', 'client8@gmail.com'),
(24, '9', 'Client_9', 'Toulouse', 1620.85, 28000.00, 394.42, '2021-10-26', '2022-08-30', '2023-01-07', 'No', 'client9@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
