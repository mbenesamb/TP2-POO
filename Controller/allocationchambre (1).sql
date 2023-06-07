-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 06 mars 2023 à 01:28
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `allocationchambre`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(200) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id`, `matricule`, `nom`, `prenom`, `email`) VALUES
(1, 'A12345', 'Diop', 'Babacar', 'diopbabs1@iamAdmin.com');

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

DROP TABLE IF EXISTS `authentification`;
CREATE TABLE IF NOT EXISTS `authentification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `motDePasse` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
insert into `authentification`

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
CREATE TABLE IF NOT EXISTS `chambre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numeroDeChambre` varchar(50) NOT NULL,
  `contenanceMaximale` int NOT NULL,
  `contenanceActuelle` int NOT NULL,
  `localisation` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`id`, `numeroDeChambre`, `contenanceMaximale`, `contenanceActuelle`, `localisation`) VALUES
(3, 'AB1', 4, 4, 'Batiment Alpha'),
(4, 'B2', 5, 1, 'Batiment Beta');

-- --------------------------------------------------------

--
-- Structure de la table `demandechambre`
--

DROP TABLE IF EXISTS `demandechambre`;
CREATE TABLE IF NOT EXISTS `demandechambre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(200) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `niveauEtude` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `demandechambre`
--

INSERT INTO `demandechambre` (`id`, `matricule`, `nom`, `prenom`, `niveauEtude`) VALUES
(1, '213456', 'Diaby', 'Saliou', '2eme année'),
(2, '213456', 'Diagne', 'Saly', '3eme année'),
(3, '213678', 'Faye', 'Sidi', 'Master 2'),
(4, '213546', 'Samb', 'Khady', '1ere année');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricule` varchar(200) NOT NULL,
  `typeEtudiant` varchar(50) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `Statut` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `matricule`, `typeEtudiant`, `nom`, `prenom`, `Statut`, `email`) VALUES
(1, '213789', 'Boursier', 'Ba', 'Maimouna', 'Logier', 'maimouna10@iam.com'),
(2, '234567', 'Non boursier', 'Fall', 'Ousseynou', 'Logier', 'ouztwin@iam.com'),
(3, '218654', 'Non boursier', 'Diaw', 'Ibou', 'non logier', 'diawibou12@iam.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
