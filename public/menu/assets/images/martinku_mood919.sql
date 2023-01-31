-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 25 mai 2022 à 13:46
-- Version du serveur :  5.7.38
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `martinku_mood919`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `nom`, `description`) VALUES
(1, '1ere An Info', '												 informatique Niveau 1\r\n											 '),
(2, 'TERMINAL D', '												 TERMINAL D\r\n											 '),
(3, 'TERMINALE C', '												 TERMINALE  C\r\n											 '),
(4, '1ere An chimie', '												1ere année chimie \r\n											 ');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220324155114', '2022-03-24 16:51:37', 674);

-- --------------------------------------------------------

--
-- Structure de la table `epreuve`
--

CREATE TABLE `epreuve` (
  `id` int(11) NOT NULL,
  `matiere_id` int(11) DEFAULT NULL,
  `concepteur_id` int(11) NOT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `heure` int(11) DEFAULT NULL,
  `minute` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `epreuve`
--

INSERT INTO `epreuve` (`id`, `matiere_id`, `concepteur_id`, `grade_id`, `nom`, `description`, `heure`, `minute`) VALUES
(1, 2, 19, 1, 'Session normale I', '<p style=\"padding-left: 60px;\"><em>Sujet&nbsp; semestre 1</em></p>', 1, 0),
(2, 2, 19, 1, 'Session normale I', '<p style=\"padding-left: 60px;\"><em>Sujet&nbsp; semestre 1</em></p>', 1, 0),
(3, 2, 19, 1, 'Session normale I', '<p style=\"padding-left: 60px;\"><em>Sujet&nbsp; semestre 1</em></p>', 1, 0),
(4, 4, 19, 3, 'CONTROL CONTINU', '<p>Aucun document n\'est autoris&eacute;, la qualit&eacute; du raisonnement et&nbsp; la pr&eacute;sentation des r&eacute;sultats seront prises en compte dans la note finale.&nbsp;</p>', 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `epreuve_classe`
--

CREATE TABLE `epreuve_classe` (
  `epreuve_id` int(11) NOT NULL,
  `classe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id`, `nom`, `description`, `question_id`) VALUES
(1, 'Niveau I', '												 bonjour ce grade est pour niveau 1 informatique \r\n											 ', 10),
(2, 'Niveau II ', 'Niveau 2 informatique \r\n											 ', 10),
(3, 'Niveau III', ' Niveau III INFO', 11);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id`, `nom`, `description`) VALUES
(1, 'histoire', 'cour dhistoire'),
(2, 'Géographie ', '												cours géographique \r\n											'),
(3, 'physique', 'les evaluation de physique'),
(4, 'Administration système 1', 'Administration système 3e année Info\r\n											'),
(5, 'Réseaux Informatiques ', 'Réseaux informatiques 2e année \r\n											'),
(6, 'algorithmique', ' niveau I');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `partieepreuve`
--

CREATE TABLE `partieepreuve` (
  `id` int(11) NOT NULL,
  `epreuve_id` int(11) NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `create_by_id` int(11) NOT NULL,
  `enoncer` longtext COLLATE utf8mb4_unicode_ci,
  `reponse` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)',
  `create_at` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matiere_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `create_by_id`, `enoncer`, `reponse`, `create_at`, `type`, `matiere_id`) VALUES
(1, 11, ' ', 'a:2:{i:0;a:2:{s:7:\"reponse\";s:15:\"merci categorie\";s:5:\"juste\";s:3:\"Oui\";}i:1;a:2:{s:7:\"reponse\";s:18:\"merci categorie120\";s:5:\"juste\";s:3:\"Non\";}}', '2022-04-22 18:41:59', 'QCM', 1),
(2, 11, 'Bonjour 1FORMATIK.com, vous aviez préalablement publié le script d\'un panier en JavaScript, avec plusieurs fonctionnalités, dont la gestion de commande par lots, ainsi que la gestion des frais de livraison. La commande était par ailleurs envoyée par mail.', 'a:2:{i:0;a:2:{s:7:\"reponse\";s:4:\"TOTO\";s:5:\"juste\";s:3:\"Oui\";}i:1;a:2:{s:7:\"reponse\";s:8:\"toto 237\";s:5:\"juste\";s:3:\"Non\";}}', '2022-04-22 19:04:05', 'QCM', 1),
(3, 11, ' Ajouter une question de type QCM', 'a:2:{i:0;a:2:{s:7:\"reponse\";s:15:\"merci categorie\";s:5:\"juste\";s:3:\"Oui\";}i:1;a:2:{s:7:\"reponse\";s:15:\"merci categorie\";s:5:\"juste\";s:3:\"Oui\";}}', '2022-04-22 19:55:13', 'QCM', 1),
(4, 11, ' Swal.fire({\n  position: \'top-end\',\n  icon: \'success\',\n  title: \'Your work has been saved\',\n  showConfirmButton: false,\n  timer: 1500\n})\nSwal.fire({\n  position: \'top-end\',\n  icon: \'success\',\n  title: \'Your work has been saved\',\n  showConfirmButton: false,\n  timer: 1500\n})\n', 'a:2:{i:0;a:2:{s:7:\"reponse\";s:15:\"merci categorie\";s:5:\"juste\";s:3:\"Non\";}i:1;a:2:{s:7:\"reponse\";s:15:\"merci categorie\";s:5:\"juste\";s:3:\"Oui\";}}', '2022-04-22 20:25:27', 'QCM', 1),
(5, 11, ' aaaa', 'a:1:{i:0;a:2:{s:7:\"reponse\";s:15:\"merci categorie\";s:5:\"juste\";s:3:\"Oui\";}}', '2022-04-22 20:26:55', 'QCM', 1),
(6, 12, 'Lequel des langages informatiques suivants est utilisé pour l’intelligence artificielle?', 'a:4:{i:0;a:2:{s:7:\"reponse\";s:1:\"C\";s:5:\"juste\";s:3:\"Non\";}i:1;a:2:{s:7:\"reponse\";s:5:\"COBOL\";s:5:\"juste\";s:3:\"Non\";}i:2;a:2:{s:7:\"reponse\";s:6:\"PROLOG\";s:5:\"juste\";s:3:\"Non\";}i:3;a:2:{s:7:\"reponse\";s:7:\"FORTRAN\";s:5:\"juste\";s:3:\"Oui\";}}', '2022-05-03 05:56:02', 'QCM', 3),
(7, 12, '4f16e544a19f305b7b38a109b66144fc.jpg', 'a:2:{i:0;a:2:{s:7:\"reponse\";s:1:\"A\";s:5:\"juste\";s:7:\"voiture\";}i:1;a:2:{s:7:\"reponse\";s:1:\"B\";s:5:\"juste\";s:6:\"bollon\";}}', '2022-05-03 06:00:30', 'ANOTATION', 3),
(8, 19, ' Bonjour est un mot', 'N;', '2022-05-03 08:17:04', 'QCM', 5),
(9, 19, ' Bonjour est un mot', 'N;', '2022-05-03 08:17:08', 'QCM', 5),
(10, 19, ' Bonjour est un mot', 'N;', '2022-05-03 08:17:21', 'QCM', 5),
(11, 19, NULL, 'a:0:{}', '2022-05-03 18:10:24', 'ANOTATION', 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matiere_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datenaissance` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classe_id` int(11) DEFAULT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `matiere_id`, `nom`, `prenom`, `sexe`, `matricule`, `datenaissance`, `description`, `type`, `photo`, `email`, `telephone`, `classe_id`, `poste`) VALUES
(11, 'atalom', '[\"ROLE_ENSEIGNANT\"]', '$2y$13$I6r3v1SXXzgmFKib8Jm2XOQNEcVig/k0I.YXZ13yzuapIDnHU21dC', 1, 'FERNAND WAFO2', '2ARNAUD', 'MASCULIN', '15T26843434', '2022-04-01', ' Depuis 2018, nous vous proposons une large gamme de services les plus variés Pour votre Business afin qu’il se démarque nettement de la concurrence. De la conception des sites internet et applications mobiles aux SMS Marketing, nous vous garantissons un accompagnement fiable et professionnelle ceci, pour la croissance de votre activité\r\nparallèlement, nous garantissons aussi une formation professionnelle de qualité a tout apprenant qui accordera sa confiance. C\'est pour cela que nous avons pour slogan : \'\' le faiseur des génies\" pour parler de la sérieuse et de l\'obligation en notre sein', 'Enseignant', 'da50d3de5019acd177541a4a3be87aea.jpg', NULL, NULL, NULL, NULL),
(12, 'manga', '[\"ROLE_ENSEIGNANT\"]', '$2y$13$Ul0STQ96qB88UrORi0Anr.7M8C28RCo/Xe3ychr30y4b4YK0iYNpi', 3, 'MANGA NANA', 'JEAN', 'MASCULIN', '12887VIOPI', '2022-03-23', 'moi cest manga nana  jean nous vous proposons une large gamme de services les plus variés Pour votre Business afin qu’il se démarque nettement de la concurrence. De la conception des sites internet et applications mobiles aux SMS Marketing, nous vous garantissons un accompagnement fiable et professionnelle ceci, pour la croissance de votre activité parallèlement, nous garantissons aussi une formation professionnelle de qualité a tout apprenant qui accordera sa confiance. C\'est pour cela que nous avons pour slogan : \'\' le faiseur des génies\" pour parler de la sérieuse et de l\'obligation en notre sein', 'Enseignant', 'cc10c29e56713e0a48913ddb44c6eda6.jpg', NULL, NULL, NULL, NULL),
(13, 'tonye', '[\"ROLE_ADMIN\"]', '$2y$13$shzwmRHzyYxpd6iTbNdlD.a/aFvYxegU57rRE1DdthWE/tgoeMmK6', 5, 'DOMGA', 'CHARLE', 'MASCULIN', '15T268434', '1997-06-06', ' Des cursus de classiques de formation aux programmes de certification, en passant par la formation continue,  MIT propose  un pôle d\'enseignement unique avec plus de 23 formations dans tous les grands domaines de l’informatique et du management avec une synergie et une complémentarité des formations déclinées en version initiale, continue et en apprentissage.\r\n', 'Enseignant', '74737a2f62a9ad3f8b02080d41beb0f5.jpg', NULL, NULL, NULL, NULL),
(14, 'gabinose', '[]', 'b4979f854a5f473443d65888327b654e', 2, 'Martin ', 'Kuate', 'MASCULIN', '1245364', '2022-04-07', NULL, 'Enseignant', 'ddde42c5e9a3a937ee54e9d09a4bd5d6.jpg', NULL, NULL, NULL, NULL),
(16, 'ETUFIAN', '[]', '$2y$13$92QijsyuxqIHhuGwDajzB.dKWDgvd5ZrRvhdhDjZgNrp88DDZ4HR.', NULL, 'MOI', 'ETUFIAN', 'MASCULIN', 'ETUFIAN', '2022-04-01', NULL, 'Apprenant', '3e0c9811e5877145f1a06f186f0cfe29.jpg', 'ETUFIAN', '+237655667191', 2, NULL),
(18, 'ADMIN', '[]', '$2y$13$tXQDMLRvR1oWPEZJfGsvx.8rBQzL8QiQg64BoiChms1jVHGJD2t1y', NULL, 'talla', 'ADMIN', 'FEMININ', '15T268434', '2022-04-15', NULL, 'Administrateur', '7dafeb86c1884642d663ea3f256a1faf.png', 'ADMIN', '+237655667191', NULL, 'DG'),
(19, 'bayem', '[\"ROLE_ENSEIGNANT\"]', '$2y$13$OUQqdIlqbDrevEzkZo1YD.7gbGqU5sDs/2dGXFq/x4DJ2vbHBIzRq', 5, 'BAYEM', 'George ', 'MASCULIN', '16T234', '1986-04-09', ' Dr bayem université de Yaoundé I', 'Enseignant', '7bdc7961b56dbf30180999b879e4e22b.jpg', 'BAYEM', '695342376', NULL, NULL),
(20, 'darbie', '[\"ROLE_APPRENANT\"]', '$2y$13$rzZMPJ0hFcrC.TucJ3TECO9aKc7K2wx4fal/BIftQFQjShA5S60C6', NULL, 'TOLQ', 'Darbie', 'FEMININ', '21y654', '2010-04-14', NULL, 'Apprenant', 'e4aa04d84288f97ded574889ecb1c91d.jpg', 'Darbie', '677895423', 1, NULL),
(21, 'wafo', '[\"ROLE_APPRENANT\"]', '$2y$13$RkUMgsOLxw5FXfXUhmPEteL.MoyXVo2t7KPMK7YqdNdvD3RI9wHPu', NULL, 'NANA', 'Dupleix KAMGA', 'MASCULIN', '18C3020', '2022-04-08', NULL, 'Apprenant', NULL, 'wafo', '693874595', 1, NULL),
(24, 'coco', '[\"ROLE_APPRENANT\"]', '$2y$13$kG87h8OW6v0d491o7Dihr.fEpiBnKDgkeHXc1hNkJS2U3DmCMZ1Fu', NULL, 'TQLLQ', 'Coco', 'MASCULIN', '14T344', '2010-05-01', NULL, 'Apprenant', '4d8b1de8c16c828543edbd05ecdc60d7.jpg', 'Coco', '677897654', 4, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `epreuve`
--
ALTER TABLE `epreuve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D6ADE47FF46CD258` (`matiere_id`),
  ADD KEY `IDX_D6ADE47F4D472506` (`concepteur_id`),
  ADD KEY `IDX_D6ADE47FFE19A1A8` (`grade_id`);

--
-- Index pour la table `epreuve_classe`
--
ALTER TABLE `epreuve_classe`
  ADD PRIMARY KEY (`epreuve_id`,`classe_id`),
  ADD KEY `IDX_6AC91C21AB990336` (`epreuve_id`),
  ADD KEY `IDX_6AC91C218F5EA509` (`classe_id`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_595AAE341E27F6BF` (`question_id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `partieepreuve`
--
ALTER TABLE `partieepreuve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C917690AB990336` (`epreuve_id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6F7494E9E085865` (`create_by_id`),
  ADD KEY `IDX_B6F7494EF46CD258` (`matiere_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD KEY `IDX_8D93D649F46CD258` (`matiere_id`),
  ADD KEY `IDX_8D93D6498F5EA509` (`classe_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `epreuve`
--
ALTER TABLE `epreuve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partieepreuve`
--
ALTER TABLE `partieepreuve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `epreuve`
--
ALTER TABLE `epreuve`
  ADD CONSTRAINT `FK_D6ADE47F4D472506` FOREIGN KEY (`concepteur_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_D6ADE47FF46CD258` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`),
  ADD CONSTRAINT `FK_D6ADE47FFE19A1A8` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`);

--
-- Contraintes pour la table `epreuve_classe`
--
ALTER TABLE `epreuve_classe`
  ADD CONSTRAINT `FK_6AC91C218F5EA509` FOREIGN KEY (`classe_id`) REFERENCES `classe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6AC91C21AB990336` FOREIGN KEY (`epreuve_id`) REFERENCES `epreuve` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `FK_595AAE341E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Contraintes pour la table `partieepreuve`
--
ALTER TABLE `partieepreuve`
  ADD CONSTRAINT `FK_7C917690AB990336` FOREIGN KEY (`epreuve_id`) REFERENCES `epreuve` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_B6F7494E9E085865` FOREIGN KEY (`create_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_B6F7494EF46CD258` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6498F5EA509` FOREIGN KEY (`classe_id`) REFERENCES `classe` (`id`),
  ADD CONSTRAINT `FK_8D93D649F46CD258` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
