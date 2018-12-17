-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 17 Décembre 2018 à 15:05
-- Version du serveur :  10.3.11-MariaDB-1:10.3.11+maria~bionic-log
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `transfer`
--

-- --------------------------------------------------------

--
-- Structure de la table `destinataire`
--

CREATE TABLE `destinataire` (
  `id` int(11) NOT NULL,
  `mail` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `destinataire`
--

INSERT INTO `destinataire` (`id`, `mail`) VALUES
(34, 'ibrahimsow.sow@gmail.com'),
(35, 'ibrahimsow.sow@gmail.com'),
(36, 'uuuu@mail.com'),
(37, 'ibrahimsow.sow@gmail.com'),
(38, 'b@mail.com'),
(39, 'ibrahimsow.sow@gmail.com'),
(40, 'ibrahimsow.sow@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `destinataire_has_fichier`
--

CREATE TABLE `destinataire_has_fichier` (
  `destinataire_id` int(11) NOT NULL,
  `fichier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `expediteur`
--

CREATE TABLE `expediteur` (
  `id` int(11) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `date_envoi` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `expediteur`
--

INSERT INTO `expediteur` (`id`, `mail`, `date_envoi`) VALUES
(41, 'ibrahimsow.sow@gmail.com', '0000-00-00 00:00:00.000000'),
(42, 'ibrahimsow.sow@gmail.com', '0000-00-00 00:00:00.000000'),
(43, 'yeahh@mail.com', '0000-00-00 00:00:00.000000'),
(44, 'ibrahimsow.sow@gmail.com', '2018-12-17 14:56:40.000000'),
(45, 'b@mail.com', '2018-12-17 14:58:03.000000'),
(46, 'ibrahimsow.sow@gmail.com', '2018-12-17 15:00:27.000000'),
(47, 'ibrahimsow.sow@gmail.com', '2018-12-17 15:01:23.000000');

-- --------------------------------------------------------

--
-- Structure de la table `expediteur_has_fichier`
--

CREATE TABLE `expediteur_has_fichier` (
  `expediteur_id` int(11) NOT NULL,
  `fichier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fichier`
--

CREATE TABLE `fichier` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `expediteur` varchar(45) DEFAULT NULL,
  `taille` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `key` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fichier`
--

INSERT INTO `fichier` (`id`, `nom`, `expediteur`, `taille`, `url`, `key`) VALUES
(27, 'cv.pdf', NULL, NULL, NULL, NULL),
(28, 'cv.pdf', NULL, NULL, NULL, NULL),
(29, 'cv.pdf', NULL, NULL, NULL, NULL),
(30, 'cv_ibrahim (1).pdf', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fichier_has_info`
--

CREATE TABLE `fichier_has_info` (
  `fichier_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `date envoi` date DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date reception` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `info`
--

INSERT INTO `info` (`id`, `date envoi`, `message`, `date reception`) VALUES
(1, NULL, ' ', NULL),
(2, NULL, ' helllo how you ', NULL),
(3, NULL, ' hey', NULL),
(4, NULL, ' salut', NULL),
(5, NULL, ' 24242424', NULL),
(6, NULL, ' dsdsds', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `destinataire`
--
ALTER TABLE `destinataire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `destinataire_has_fichier`
--
ALTER TABLE `destinataire_has_fichier`
  ADD PRIMARY KEY (`destinataire_id`,`fichier_id`),
  ADD KEY `fk_destinataire_has_fichier_fichier1_idx` (`fichier_id`),
  ADD KEY `fk_destinataire_has_fichier_destinataire1_idx` (`destinataire_id`);

--
-- Index pour la table `expediteur`
--
ALTER TABLE `expediteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `expediteur_has_fichier`
--
ALTER TABLE `expediteur_has_fichier`
  ADD PRIMARY KEY (`expediteur_id`,`fichier_id`),
  ADD KEY `fk_expediteur_has_fichier_fichier1_idx` (`fichier_id`),
  ADD KEY `fk_expediteur_has_fichier_expediteur1_idx` (`expediteur_id`);

--
-- Index pour la table `fichier`
--
ALTER TABLE `fichier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fichier_has_info`
--
ALTER TABLE `fichier_has_info`
  ADD PRIMARY KEY (`fichier_id`,`info_id`),
  ADD KEY `fk_fichier_has_info_info1_idx` (`info_id`),
  ADD KEY `fk_fichier_has_info_fichier1_idx` (`fichier_id`);

--
-- Index pour la table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `destinataire`
--
ALTER TABLE `destinataire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `expediteur`
--
ALTER TABLE `expediteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `fichier`
--
ALTER TABLE `fichier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `destinataire_has_fichier`
--
ALTER TABLE `destinataire_has_fichier`
  ADD CONSTRAINT `fk_destinataire_has_fichier_destinataire1` FOREIGN KEY (`destinataire_id`) REFERENCES `destinataire` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_destinataire_has_fichier_fichier1` FOREIGN KEY (`fichier_id`) REFERENCES `fichier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `expediteur_has_fichier`
--
ALTER TABLE `expediteur_has_fichier`
  ADD CONSTRAINT `fk_expediteur_has_fichier_expediteur1` FOREIGN KEY (`expediteur_id`) REFERENCES `expediteur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_expediteur_has_fichier_fichier1` FOREIGN KEY (`fichier_id`) REFERENCES `fichier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `fichier_has_info`
--
ALTER TABLE `fichier_has_info`
  ADD CONSTRAINT `fk_fichier_has_info_fichier1` FOREIGN KEY (`fichier_id`) REFERENCES `fichier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fichier_has_info_info1` FOREIGN KEY (`info_id`) REFERENCES `info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
