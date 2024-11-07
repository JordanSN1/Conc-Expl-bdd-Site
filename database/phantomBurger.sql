-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 07 nov. 2024 à 08:23
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
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `picture`, `name`, `description`, `price`) VALUES
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
(22, 'burger_marocain.jpg', 'Marocain Burger', 'Burger épicé avec guacamole, salsa et jalapeños.', '0.99');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `produit_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `description` text,
  `quantite_disponible` int NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `date_ajout` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`produit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
