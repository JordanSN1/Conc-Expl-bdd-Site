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

            <ul class="nav-links">
                <li><a href="index.php">Accueil</a></li>
                <li><a href="produits.php">Produits</a></li>
                <li><a href="a-propos.php">À propos</a></li>
                <li><a href="contact.php">Contact</a></li>
            </ul>

            <div class="user-actions">
                <?php
                session_start();
                if (isset($_SESSION['user_id'])) {
                    echo '<a class="panier" href="panier.php">Panier</a>';
                } else {
                    echo '<a class="connect" href="login.php">Se connecter</a>';
                }
                ?>
            </div>
        </nav>
    </header>

</body>

</html>