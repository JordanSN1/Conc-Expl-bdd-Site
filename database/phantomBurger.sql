-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 12 nov. 2024 à 09:18
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
-- Base de données : `phantomburger`
--

-- --------------------------------------------------------

--
-- Structure de la table `boissons`
--

DROP TABLE IF EXISTS `boissons`;
CREATE TABLE IF NOT EXISTS `boissons` (
  `boisson_id` int NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `prix` decimal(10,2) NOT NULL,
  PRIMARY KEY (`boisson_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `boissons`
--

INSERT INTO `boissons` (`boisson_id`, `picture`, `name`, `description`, `prix`) VALUES
(1, 'coca.jpg', 'Coca-Cola', 'Boisson gazeuse classique', '2.50'),
(2, 'sprite.jpg', 'Sprite', 'Boisson gazeuse au citron', '2.50'),
(3, 'fanta.jpg', 'Fanta', 'Boisson gazeuse à l\'orange', '2.50'),
(4, 'eau_minerale.jpg', 'Eau Minérale', 'Eau plate, rafraîchissante', '1.50'),
(5, 'ice_tea.jpg', 'Ice Tea', 'Thé glacé sucré', '2.80'),
(6, 'red_bull.jpg', 'Red Bull', 'Boisson énergisante', '3.50'),
(7, 'jus_orange.jpg', 'Jus d\'Orange', 'Jus frais d\'orange', '3.00'),
(8, 'champagne.jpg', 'Champagne', 'Boisson alcoolisée raffinée', '15.00'),
(9, 'eau_gazeuse.jpg', 'Eau Gazeuse', 'Eau avec gaz', '2.00'),
(10, 'limonade.jpg', 'Limonade', 'Boisson douce au citron', '2.20');

-- --------------------------------------------------------

--
-- Structure de la table `burgers`
--

DROP TABLE IF EXISTS `burgers`;
CREATE TABLE IF NOT EXISTS `burgers` (
  `burger_id` int NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `prix` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`burger_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `burgers`
--

INSERT INTO `burgers` (`burger_id`, `picture`, `name`, `description`, `prix`) VALUES
(1, 'burger_classic.jpg', 'Classic Burger', 'Un burger intemporel avec steak juteux, fromage fondant, laitue croquante, tomates fraîches et sauce spéciale.', '8.99'),
(2, 'burger_cheese.jpg', 'Cheeseburger', 'Délicieux cheeseburger avec viande grillée, fromage fondant et légumes frais.', '9.49'),
(3, 'burger_bbq.jpg', 'BBQ Burger', 'Explosion de saveurs avec sauce barbecue, oignons caramélisés et bacon croustillant.', '10.99'),
(4, 'burger_veggie.jpg', 'Veggie Burger', 'Option végétarienne avec steak de légumes grillés, garniture fraîche et sauce crémeuse.', '8.49'),
(5, 'burger_spicy.jpg', 'Spicy Burger', 'Steak épicé avec sauce piquante et jalapeños pour les amateurs de sensations fortes.', '9.99'),
(6, 'burger_double_cheese.jpg', 'Double Cheeseburger', 'Deux steaks juteux avec double fromage, laitue et tomates pour un plaisir maximal.', '11.99'),
(7, 'burger_bacon.jpg', 'Bacon Burger', 'Burger avec steak, bacon croustillant, fromage et sauce onctueuse.', '10.49'),
(8, 'burger_truffle.jpg', 'Truffle Burger', 'Burger gourmet avec huile de truffe, fromage affiné et légumes frais.', '14.99'),
(9, 'burger_chicken.jpg', 'Chicken Burger', 'Burger de poulet tendre avec mayonnaise légère et salade croquante.', '7.99'),
(10, 'burger_fish.jpg', 'Fish Burger', 'Filet de poisson pané, sauce tartare et laitue fraîche.', '8.49'),
(11, 'burger_avocado.jpg', 'Avocado Burger', 'Steak juteux avec avocat crémeux, tomates fraîches et laitue croquante.', '12.49'),
(12, 'burger_mushroom.jpg', 'Mushroom Burger', 'Burger aux champignons grillés, fromage fondu et sauce crémeuse.', '9.99'),
(13, 'burger_hawaiian.jpg', 'Hawaiian Burger', 'Burger sucré-salé avec ananas grillé, fromage et sauce barbecue.', '10.49'),
(14, 'burger_smash.jpg', 'Smash Burger', 'Burger fin et croustillant avec fromage fondu et pickles.', '8.99'),
(15, 'burger_blue_cheese.jpg', 'Blue Cheese Burger', 'Burger au fromage bleu intense, garniture classique et sauce spéciale.', '11.49'),
(16, 'burger_egg.jpg', 'Egg Burger', 'Steak garni d\'un œuf poché, de fromage fondant et de bacon croustillant.', '10.99'),
(17, 'burger_buffalo.jpg', 'Buffalo Burger', 'Burger avec viande de buffle, fromage et légumes frais.', '12.99'),
(18, 'burger_swiss.jpg', 'Swiss Burger', 'Burger classique avec fromage suisse et champignons grillés.', '10.49'),
(19, 'burger_italian.jpg', 'Italian Burger', 'Burger inspiré de l\'Italie avec mozzarella, tomates séchées et pesto.', '11.99'),
(20, 'burger_mexican.jpg', 'Mexican Burger', 'Burger épicé avec guacamole, salsa et jalapeños.', '10.99'),
(21, 'burger_algérien.jpg', 'Algérien Burger', 'Burger épicé avec guacamole, salsa et jalapeños.', '100.99'),
(22, 'burger_marocain.jpg', 'Marocain Burger', 'Burger épicé avec guacamole, salsa et jalapeños.', '0.99'),
(23, 'burger_pedro.jpg', 'pedro pedro ', 'Burger épicé avec guacamole, salsa et jalapeños.', '152500.00');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `commande_id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int DEFAULT NULL,
  `burger_id` int DEFAULT NULL,
  `quantite` int NOT NULL,
  `date_commande` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commande_id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `burger_id` (`burger_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `burger_id` int DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `burger_id` (`burger_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `burger_id`, `username`, `comment_text`, `comment_date`, `rating`) VALUES
(21, 1, 'nabil', 'yum yum', '2024-11-10 12:34:49', 0),
(22, 1, 'nabil.saied', 'hhhhhhh', '2024-11-10 12:46:58', 0),
(23, 1, 'ilyas', 'yum yum c\'est trop bon', '2024-11-10 12:52:37', 5),
(24, 2, 'jordon', 'Leur burger est vraiment décevant.', '2024-11-10 13:02:09', 1),
(25, 3, 'nabil', 'c\'est trop dégeuleuse', '2024-11-12 09:13:28', 1),
(26, 3, 'nabil', 'c\'est pas hallal', '2024-11-12 09:17:59', 1),
(27, 3, 'nabil', 'c\'est du halouf', '2024-11-12 09:18:09', 1);

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(100) NOT NULL,
  `description` text,
  `prix` decimal(10,2) NOT NULL,
  `burger_id` int NOT NULL,
  `boisson_id` int NOT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `fk_burger` (`burger_id`),
  KEY `fk_boisson` (`boisson_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`menu_id`, `nom_menu`, `description`, `prix`, `burger_id`, `boisson_id`) VALUES
(1, 'Menu Classique', 'Un menu avec un burger classique et une boisson gazeuse', '12.99', 1, 1),
(2, 'Menu Cheeseburger', 'Un cheeseburger accompagné d\'une boisson légère', '13.49', 2, 2),
(3, 'Menu BBQ', 'Un burger BBQ avec une boisson sucrée', '14.49', 3, 3),
(4, 'Menu Veggie', 'Un menu végétarien avec un burger veggie et une boisson sans sucre', '13.29', 4, 4),
(5, 'Menu Spicy', 'Burger épicé accompagné d\'une boisson rafraîchissante', '14.99', 5, 5),
(6, 'Menu Double Cheeseburger', 'Double Cheeseburger avec une boisson énergisante', '16.99', 6, 6),
(7, 'Menu Bacon', 'Burger au bacon avec une boisson froide et fruitée', '15.49', 7, 7),
(8, 'Menu Truffle', 'Un burger gourmet avec une boisson raffinée', '19.99', 8, 8),
(9, 'Menu Chicken', 'Burger de poulet et une boisson légère pour un repas sain', '13.99', 9, 9),
(10, 'Menu Fish', 'Burger de poisson accompagné d\'une boisson douce', '12.49', 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `nom_role` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `nom_role` (`nom_role`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`role_id`, `nom_role`) VALUES
(1, 'Admin'),
(2, 'Modérateur'),
(3, 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `utilisateur_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role_id` int DEFAULT '1',
  `date_inscription` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`utilisateur_id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`utilisateur_id`, `nom`, `prenom`, `email`, `mot_de_passe`, `role_id`, `date_inscription`) VALUES
(1, 'Admin', 'Admin', 'Admin@phantomBurger.com', 'admin', 1, '2024-11-05 14:48:01'),
(2, 'Moderateur', 'Moderateur', 'Moderateur@phantomBurger.com', 'Moderateur', 1, '2024-11-05 14:48:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
