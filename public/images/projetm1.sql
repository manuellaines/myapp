-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 03 juin 2022 à 16:52
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetm1`
--

-- --------------------------------------------------------

--
-- Structure de la table `composant`
--

CREATE TABLE `composant` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qte` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `composant`
--

INSERT INTO `composant` (`id`, `nom`, `qte`, `code`, `etat`, `description`, `salle_id`) VALUES
(1, 'clim', '100', '45', 'rien', 'ihier', NULL),
(4, 'frytpkj', '12', 'retrypp', 'retryt', 'retryuykl[egh', 1),
(5, 'anpoule', '34', 'am12', 'oprt', 'pgfghpkhpplg', 1),
(6, 'anphi 350', '350', 'A350', 'BIEN', 'NIHIHOE', 1);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `codedepart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createat` date DEFAULT NULL,
  `updateat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `codedepart`, `nom`, `createat`, `updateat`) VALUES
(1, 'INFO', 'INFORMATIQUE', '2021-07-13', '2021-07-13'),
(2, 'CHIMIE', 'DEPARTEMENT CHIMIE', '2021-07-13', '2021-07-13'),
(3, 'info', 'info', '2021-07-16', '2021-07-16'),
(4, 'INFO', 'MON DEPARTEMENT ', NULL, NULL),
(5, 'INFO45', 'MON DEPARTEMENT 23', NULL, NULL),
(6, 'MON DEPARTEMENT 5776', 'MON DEPARTEMENT 5776', NULL, NULL),
(7, '12228', 'retrewrghj', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `filiere_id` int(11) DEFAULT NULL,
  `prof1_id` int(11) DEFAULT NULL,
  `prof2_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `niveau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semestre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  `planingexam_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id`, `filiere_id`, `prof1_id`, `prof2_id`, `nom`, `code`, `descrition`, `niveau`, `semestre`, `credit`, `createat`, `updateat`, `planingexam_id`) VALUES
(1, NULL, 1, 1, 'projet 200', 'info300', 'nofihj', 'm1', '2', 6, '2021-07-18', '2021-07-18', NULL),
(2, 1, 1, 1, 'string', 'string', 'string', 'string', 'string', 0, '2021-07-18', '2021-07-18', NULL),
(3, 1, 1, 1, 'string', 'string', 'string', 'string', 'string', 0, '2021-07-18', '2021-07-18', NULL),
(4, 2, 3, 3, 'rtryt', 'reth', 'rtyguhijk;', 'Niveau 2', 'S2', 12, NULL, NULL, NULL),
(5, 1, 1, 1, NULL, NULL, NULL, NULL, 'S2', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `departement_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matricule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `departement_id`, `nom`, `prenom`, `sexe`, `email`, `matricule`, `grade`, `telephone`, `type`, `password`, `role`) VALUES
(1, 1, 'TALOM ', 'ARNAUD', 'MASCULIN', 'TOOT@GMAIL.COM', '123456UUT', 'PROF', '+24558855848', 'TET', NULL, 'dashboadprof'),
(2, 1, 'TALOM ', 'ARNAUD', 'MASCULIN', 'TOOT@GMAIL.COM', '123456UUT', 'PROF', '+24558855848', 'TET', NULL, 'dashboadprof'),
(3, NULL, 'NGANOU', 'EXPOIR', 'femme', 'mbasonny@gmail.com', 'lnsfodgn', 'Proffeseur', '6556679101002', 'TEST', NULL, 'Enseignant'),
(4, 2, 'tonton expoir ', 'tonton expoir  23', 'homme', 'mbasonny@gmail.com', 'retrytuyityu', 'Docteur', 'rterytjlk0okoo', 'Docteur', NULL, 'Chef de département'),
(5, 4, 'totot', 'totot', 'femme', 'mbasonny@gmail.com', '655667191', 'Docteur', '+237655667191', 'Maitre Conference', NULL, 'Enseignant'),
(6, 4, 'totot', 'totot', 'femme', 'mbasonny@gmail.com', '655667191', 'Docteur', '+237655667191', 'Maitre Conference', NULL, 'Enseignant'),
(7, 2, 'TOTOPROF', 'talomTOTOPROFTOTOPROF', 'femme', 'mbasonnEEy@gmail.com', '655667194', 'Docteur', '+237655667191', NULL, 'b24331b1a138cde62aa1f679164fc62f', 'Enseignant'),
(8, 2, 'TOTOPROFruiyuo', 'talomTOTOPROFTOTOPROFtyrtui', 'femme', 'mbasonnEEy@gmail.com56', '6556671945', 'Docteur', '+237655667191', NULL, 'b8b1aa6ed5ce3eceef0188b03cab240d', 'Enseignant');

-- --------------------------------------------------------

--
-- Structure de la table `planingcour`
--

CREATE TABLE `planingcour` (
  `id` int(11) NOT NULL,
  `matiere_id` int(11) DEFAULT NULL,
  `jour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heuredebut` time DEFAULT NULL,
  `heurefin` time DEFAULT NULL,
  `semestre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sallecour_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planingcour`
--

INSERT INTO `planingcour` (`id`, `matiere_id`, `jour`, `heuredebut`, `heurefin`, `semestre`, `sallecour_id`) VALUES
(4, 1, 'LUNDI', '12:30:00', '14:55:00', 'S2', 1),
(5, 1, 'LUNDI', '20:00:00', '15:55:00', '2', 1),
(6, 4, 'LUNDI', '20:00:00', '15:55:00', 'S2', 1),
(7, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `planingexam`
--

CREATE TABLE `planingexam` (
  `id` int(11) NOT NULL,
  `salle_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heuredebut` time DEFAULT NULL,
  `heurefin` time DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `salle_id` int(11) DEFAULT NULL,
  `heuredebut` time DEFAULT NULL,
  `heurefin` time DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responssable_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `salle_id`, `heuredebut`, `heurefin`, `etat`, `responssable_id`, `date`) VALUES
(1, 1, NULL, NULL, 'ACCEPTER', 7, '2021-07-09'),
(2, 1, '12:22:00', '15:55:00', 'ACCEPTER', 7, '2021-07-10'),
(3, 2, '12:30:00', '15:36:00', 'EN ATTENTE', 7, '2021-07-09');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `updateat` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `planingcour_id` int(11) DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `code`, `nom`, `etat`, `capacite`, `createat`, `updateat`, `description`, `type`, `planingcour_id`, `departement_id`) VALUES
(1, '502', 'anphi 500', 'bien', 502, '2021-07-16', '2021-07-16', 'anphie d nifirindorethihjtrhofjitehipbtu', 'departement ', 6, 2),
(2, '502', 'anphi 500', 'bien', 502, '2021-07-16', '2021-07-16', 'anphie d nifirindorethihjtrhofjitehipbtuwwww', 'departement ', 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `active`, `roles`, `password`) VALUES
(1, 'mbasonny@gmail.com', 0, '[]', '$2y$13$za9dKrd63crnP0Qyif4PUuZyDfZCc7cbzrP8qVC3UqOMflo8.ZilW'),
(2, 'atalom', 0, '[]', '52b4b767676f2c8a511b43e31caad826'),
(4, 'atalom2', 0, '[]', '$2y$13$vLTiXpbtRGCeBVOKxV0aM./qB398hA6BDRC4f5AYmdgWoARrw8Hpi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `composant`
--
ALTER TABLE `composant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EC8486C9DC304035` (`salle_id`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9014574A180AA129` (`filiere_id`),
  ADD KEY `IDX_9014574A8CC2337F` (`prof1_id`),
  ADD KEY `IDX_9014574A9E779C91` (`prof2_id`),
  ADD KEY `IDX_9014574AB75469BF` (`planingexam_id`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A6BCF3DECCF9E01E` (`departement_id`);

--
-- Index pour la table `planingcour`
--
ALTER TABLE `planingcour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_519EA59DF46CD258` (`matiere_id`),
  ADD KEY `IDX_519EA59D7A24147F` (`sallecour_id`);

--
-- Index pour la table `planingexam`
--
ALTER TABLE `planingexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CE3A9514DC304035` (`salle_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_42C84955DC304035` (`salle_id`),
  ADD KEY `IDX_42C8495514374F21` (`responssable_id`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4E977E5C574D182D` (`planingcour_id`),
  ADD KEY `IDX_4E977E5CCCF9E01E` (`departement_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `composant`
--
ALTER TABLE `composant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `planingcour`
--
ALTER TABLE `planingcour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `planingexam`
--
ALTER TABLE `planingexam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `composant`
--
ALTER TABLE `composant`
  ADD CONSTRAINT `FK_EC8486C9DC304035` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`);

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `FK_9014574A180AA129` FOREIGN KEY (`filiere_id`) REFERENCES `departement` (`id`),
  ADD CONSTRAINT `FK_9014574A8CC2337F` FOREIGN KEY (`prof1_id`) REFERENCES `personnel` (`id`),
  ADD CONSTRAINT `FK_9014574A9E779C91` FOREIGN KEY (`prof2_id`) REFERENCES `personnel` (`id`),
  ADD CONSTRAINT `FK_9014574AB75469BF` FOREIGN KEY (`planingexam_id`) REFERENCES `planingexam` (`id`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `FK_A6BCF3DECCF9E01E` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`);

--
-- Contraintes pour la table `planingcour`
--
ALTER TABLE `planingcour`
  ADD CONSTRAINT `FK_519EA59D7A24147F` FOREIGN KEY (`sallecour_id`) REFERENCES `salle` (`id`),
  ADD CONSTRAINT `FK_519EA59DF46CD258` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`);

--
-- Contraintes pour la table `planingexam`
--
ALTER TABLE `planingexam`
  ADD CONSTRAINT `FK_CE3A9514DC304035` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C8495514374F21` FOREIGN KEY (`responssable_id`) REFERENCES `personnel` (`id`),
  ADD CONSTRAINT `FK_42C84955DC304035` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `FK_4E977E5C574D182D` FOREIGN KEY (`planingcour_id`) REFERENCES `planingcour` (`id`),
  ADD CONSTRAINT `FK_4E977E5CCCF9E01E` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
