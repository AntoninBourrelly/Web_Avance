-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 21 Mars 2019 à 11:01
-- Version du serveur :  10.1.23-MariaDB-9+deb9u1
-- Version de PHP :  7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `abourrelly`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `code` char(8) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(512) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `telephone` char(10) DEFAULT NULL,
  `immatriculation` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`code`, `nom`, `prenom`, `adresse`, `ville`, `cp`, `telephone`, `immatriculation`) VALUES
('12131415', 'Parker', 'Peter', '35 boulevard de la chauve souris', 'Chartres', '28000', '0243356337', 'qr-654-st'),
('12345678', 'Bidochon', 'Robert', '5 rue des fleurs', 'Angers', '49000', '0102030405', 'ab-123-cd'),
('19827346', 'Banner', 'Bruce', '8 impasse de la chauve souris', 'Paris', '75018', '0405060708', 'mn-321-op'),
('23456789', 'Banner', 'David', '3 allée du Géant Vert', 'Nantes', '44000', '0304050607', 'ij-789-kl'),
('87654321', 'Galopin', 'Raymonde', '5 rue des fleurs', 'Angers', '49000', '0102030405', 'ab-123-cd'),
('98765432', 'Luke', 'Lucky', '16 rue du cheval blanc', 'Le Mans', '72000', '0203040506', 'ef-456-gh');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `idMarque` int(11) NOT NULL,
  `nomMarque` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `marque`
--

INSERT INTO `marque` (`idMarque`, `nomMarque`) VALUES
(1, 'Audi'),
(2, 'bmw'),
(3, 'citroen'),
(4, 'daewoo'),
(5, 'fiat'),
(6, 'honda'),
(7, 'iveco'),
(8, 'jaguar'),
(9, 'renault'),
(10, 'toyota'),
(11, 'volvo'),
(12, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `immatriculation` char(9) NOT NULL,
  `idMarque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`immatriculation`, `idMarque`) VALUES
('ef-456-gh', 3),
('mn-321-op', 8),
('ab-123-cd', 9),
('ij-789-kl', 12),
('qr-654-st', 12);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`code`),
  ADD KEY `immatriculation` (`immatriculation`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`idMarque`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`immatriculation`),
  ADD KEY `idMarque` (`idMarque`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `idMarque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD CONSTRAINT `adherent_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `vehicule` (`immatriculation`);

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `vehicule_ibfk_1` FOREIGN KEY (`idMarque`) REFERENCES `marque` (`idMarque`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
