<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Connexion - PhantomBurger</title>
</head>

<style>
    body {
        overflow: hidden;
    }
</style>

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
                <li><a href="../produits/produits.php">Produits</a></li>
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
                    echo '<a class="connect" href="login.php">connecter</a>';
                }
                ?>
            </div>
        </nav>
    </header>
    <script src="../src/scripts.js"></script>

    <div class="wrapper">
        <div class="container">
            <div class="form-box">
                <form action="">
                    <h2>Login</h2>
                    <div class="input-box">
                        <input type="text" required>
                        <label>Email</label>
                        <i class='bx bx-envelope'></i>
                    </div>
                    <div class="input-box">
                        <input type="password" required>
                        <label>Password</label>
                        <i class='bx bxs-lock-alt'></i>
                    </div>
                    <div class="forget-section">

                        <p>
                            <input type="checkbox">
                            Remember me
                        </p>
                        <a href="#" class="forg-btn">Mot de passe oublié</a>
                    </div>
                    <button class="btn">Log in</button>
                    <div class="account-creation">
                        <span>Vous n'avez pas de compte ? <a href="#" class="inscr-btn">S'inscrire </a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>