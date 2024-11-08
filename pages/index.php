<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/style.css">

    <title>Produits - PhantomBurger</title>
</head>

<body>
    <header>
        <nav>
            <div class="logo">
                <img src="../assets/phantomBurgerlogo.png" alt="PhantomBurger logo">
            </div>

            <!-- Menu burger pour mobile -->
            <div class="menu-toggle" id="menu-toggle">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>

            <!-- Liens de navigation principaux -->
            <ul class="nav-links" id="nav-links">
                <li><a href="index.php">Accueil</a></li>
                <li><a href="produits.php">Produits</a></li>
                <li><a href="a-propos.php">À propos</a></li>
                <li><a href="contact.php">Contact</a></li>
                <!-- Liens utilisateur (se connecter/panier) visibles uniquement en version mobile -->
                <li class="mobile-user-actions"></li>
                </li>
                <?php
                session_start();
                if (isset($_SESSION['user_id'])) {
                    echo '<a class="mobile-panier" href="panier.php">Panier</a>';
                } else {
                    echo '<a class="mobile-connect" href="login.php">Se connecter</a>';
                }
                ?>
                </li>
            </ul>

            <!-- Liens utilisateur (se connecter/panier) visibles uniquement en version desktop -->
            <div class="user-actions">
                <?php

                if (isset($_SESSION['user_id'])) {
                    echo '<a class="panier" href="panier.php">Panier</a>';
                } else {
                    echo '<a class="connect" href="connexion.php">connecter</a>';
                }
                ?>
            </div>
        </nav>
    </header>

    <style>
        <?php include("index.css"); ?>
    </style>

    <div class="product-list">
        <?php
        error_reporting(E_ALL);
        ini_set('display_errors', '1');
        include("../scripts/conn.php");


        $products = $conn->query("SELECT * FROM burgers WHERE burger_id <= 6;");
        foreach ($products as $product) {
            echo "
                <div class='product-card'>
                    <div class='product-image'>
                        <img src='../img/" . htmlspecialchars($product['picture']) . "' alt='" . htmlspecialchars($product['name']) . "'>
                    </div>
                    <h3 class='product-title'>" . htmlspecialchars($product['name']) . "</h3>
                    <p class='prix'>" . htmlspecialchars($product['prix']) . " €</p>
                    <p class='description'>" . htmlspecialchars($product['description']) . "</p>
                </div>
            ";
        }
        ?>
    </div>
    <div id="secondaire" class="secondContainer">
    <h2>Nos autres produits à découvrir</h2>
    <div class="picture1">
        <img src="../img/index3"  alt="">
        
        
    </div>
    <div class="picture1_2">
        <img src="../img/index2"  alt="">
    </div>
    <div class="picture1_3">
        <img src="../img/iStock-1152247466 (1).jpg"  alt="">
    </div>



<section class="cta-section">
    <h1>Repars avec du croustillant plein les poches</h1>
    <p>Cumulez des points pour vous offrir des produits croustillants</p>
    <a href="inscription.php" class="cta-button">Créer un compte</a>
</section>



<section class="carousel-section">
    <div class="carousel">
        <img src="../img/iStock-1152247466 (1).jpg" alt="Colonel Fish">
        <img src="../img/Grilled-Hamburgers-Social.jpg" alt="Boxmaster Veggie">
        <img src="../img/burger_spicy.jpg" alt="Plaisirs Gourmands">
        <img src="../img/Grilled-Hamburgers-Social.jpg" alt="Boxmaster Veggie">
        <img src="../img/iStock-1152247466 (1).jpg" alt="Colonel Fish">
    </div>
</section>
<div class="picture3">
        <img src="../img/INDEX"  alt="">
</div>



    <script src="../src/scripts.js"></script>
</body>

</html>