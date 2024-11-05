-- Création de la base de données
CREATE DATABASE phantomBurger;
USE phantomBurger;

-- Table des utilisateurs
CREATE TABLE utilisateurs (
    utilisateur_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL,
    role_id INT DEFAULT 1,
    date_inscription DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- Table des rôles
CREATE TABLE roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    nom_role VARCHAR(50) NOT NULL UNIQUE
);

-- Table des burgers
CREATE TABLE produits (
    produit_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    quantite_disponible INT NOT NULL,
    prix DECIMAL(10,2) NOT NULL,
    date_ajout DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table des commandes
CREATE TABLE commandes (
    commande_id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT,
    burger_id INT,
    quantite INT NOT NULL,
    date_commande DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateurs(utilisateur_id),
    FOREIGN KEY (burger_id) REFERENCES burgers(burger_id)
);


INSERT INTO roles (nom_role) VALUES
    ('Admin'),
    ('Modérateur'),
    ('Utilisateur');

-- Insérer des utilisateurs admin avec noms, prénoms
INSERT INTO utilisateurs (nom, prenom, email, mot_de_passe, role_id) VALUES
('Admin', 'Admin', 'Admin@phantomBurger.com', 'admin', 1),  -- Admin
('Moderateur', 'Moderateur', 'Moderateur@phantomBurger.com', 'Moderateur', 1);  -- Moderateur

-- Création des utilisateurs MySQL
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin_password';
CREATE USER 'moderateur'@'localhost' IDENTIFIED BY 'moderateur_password';

-- Attribution des privilèges à l'utilisateur admin
GRANT ALL PRIVILEGES ON phantomBurger.* TO 'admin'@'localhost';

-- Attribution des privilèges à l'utilisateur moderateur
GRANT INSERT, UPDATE, DELETE ON phantomBurger.* TO 'moderateur'@'localhost';

-- Appliquer les changements
FLUSH PRIVILEGES;