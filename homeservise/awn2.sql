-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 26 mai 2022 à 14:38
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `awn2`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `tel` int(13) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `des` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `lastname`, `tel`, `password`, `id_cat`, `des`, `img`) VALUES
(9, 'sidi', 'ahmed', 44222222, '111111', 3, 'BonjourXN', '5eee1a6c-3d02-47f3-afb0-ca754c99db38-1845102077.jpg'),
(10, 'sidi', 'mohamed', 28282828, '111111', 2, '8587878794884', 'bbd0825d-e276-4c9e-b33b-06111f0d2dbd833393257032033798.jpg'),
(11, 'Ablo ', 'sidi', 22228888, '111111', 3, 'Bonjour je suis une pessonne qui travail', 'e6761a40-590e-4383-8a32-833c16ef76e51777002554.jpg'),
(12, 'Behi', 'sisi', 21212121, '111111', 2, 'Bonjour hi pro', 'dd402af8-41eb-4495-9429-9e11c30f20d5-701728457.jpg'),
(13, 'mohamed', 'sidi', 22222441, '111111', 3, 'je suis actuellement the name is a beautiful ???? ', 'a73d0026-5c4d-44ed-996b-5253b48ab57d7762488590936150536.jpg'),
(15, 'الديدين', 'الشيكر', 46666666, '222222', 3, 'أنا اعل\r\n شريكة ياي بوي', 'image_picker953957619807331900.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Plombier'),
(2, 'Electriciens'),
(3, 'Peindre'),
(4, 'Menuiser');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idc` int(11) NOT NULL,
  `Commande` varchar(255) NOT NULL,
  `id_fourniseur` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_de_commande` datetime NOT NULL,
  `location` varchar(100) NOT NULL,
  `stutus` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`idc`, `Commande`, `id_fourniseur`, `id_user`, `date_de_commande`, `location`, `stutus`) VALUES
(9, 'Bonjour mecieur le monsieur le fourniseur ', 12, 13, '2022-05-16 00:00:00', 'TembedraAione', 'En cours'),
(10, 'Bonjour mecieur le monsieur le fourniseur ', 12, 13, '2022-05-16 00:00:00', 'Nouakchott', 'En cours'),
(11, 'Bonjour mecieur le monsieur le fourniseur ', 12, 13, '2022-05-16 00:00:00', 'Nouakchott', 'En etant'),
(18, 'le dey robine 5asre', 9, 23, '2022-05-18 16:22:11', 'NKTT', 'En cours'),
(21, 'bonjou je suis dans le four', 9, 9, '2022-05-19 17:00:08', 'Nema', 'En cours'),
(23, 'jkkjhh', 9, 13, '2022-05-21 09:56:53', 'll', 'En cours');

-- --------------------------------------------------------

--
-- Structure de la table `favorite`
--

CREATE TABLE `favorite` (
  `fa_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `fav` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `favorite`
--

INSERT INTO `favorite` (`fa_id`, `user_id`, `admin_id`, `fav`) VALUES
(16, 8, 11, 1),
(46, 14, 12, 1),
(56, 17, 13, 1),
(57, 17, 13, 1),
(71, 14, 10, 1),
(76, 21, 10, 1),
(79, 21, 11, 1),
(80, 21, 10, 1),
(81, 21, 9, 1),
(82, 21, 10, 1),
(83, 21, 13, 1),
(84, 6, 9, 1),
(86, 22, 10, 1),
(87, 22, 12, 1),
(92, 23, 12, 1),
(93, 24, 10, 1),
(98, 23, 11, 1),
(102, 25, 12, 1),
(103, 23, 10, 1),
(109, 9, 10, 1),
(113, 6, 10, 1),
(118, 13, 10, 1),
(122, 13, 9, 1),
(123, 13, 10, 1),
(124, 13, 15, 1),
(126, 13, 11, 1),
(127, 13, 12, 1),
(128, 13, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(22) DEFAULT NULL,
  `password` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'deidine', '49619609');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `tel` int(13) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `lastname`, `tel`, `password`, `img`) VALUES
(6, 'Cheikh', 'Med', 27272727, '123456', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(8, 'sidi', 'Ahmed', 26272627, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(9, 'SISI', 'Mohamed', 22222222, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(10, 'Sidi ', 'Ablo', 22442244, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(13, 'Med', 'Mmed', 22212222, '111111', '59f60a81-d061-47c5-b5f9-e2e62ca9eb88424118433.jpg'),
(14, 'Cheik', 'Sidi', 3222222, '111111', '11466d1c-ddbf-4758-ba83-89daceb5cd12-356226269.jpg'),
(17, 'Ahmed', 'sidi', 44222222, '111111', '50207c8b-140c-4b86-89de-8b28c3e0bc24162588746.jpg'),
(20, 'Cheikh', 'Muhamed', 43333333, '444444', 'b20fe478-11da-40d1-a2f4-581229dba16a-104112590.jpg'),
(21, 'Ahme', 'barick', 43222223, '444444', 'a8a36f4c-b05d-4a06-a73a-1b971b8e3fd31317680579.jpg'),
(22, 'Sidi', 'Ahmed', 32222222, '111111', '9efaab92-6bac-4398-952d-9291eaf7e0bd-1590645483.jpg'),
(23, 'Muhamed', 'Sidi', 27222222, '111111', 'image_picker1976026987443680699.jpg'),
(24, 'Abhhs', 'ahmed', 49787868, 'Elhach', 'image_picker4750866247429723295.jpg'),
(25, 'idoumu', 'Gegari', 44433344, '111111', 'bd57e6f9-2fa1-4474-b230-caa6b857a3cc589210689.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idc`),
  ADD KEY `id_fourniseur` (`id_fourniseur`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`fa_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_3` FOREIGN KEY (`id_fourniseur`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
