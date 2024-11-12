<header>
        <?php include("../header/header.php"); ?>
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
                        <span>Vous n'avez pas de compte ? <a href="../pages/inscription.php" class="inscr-btn">S'inscrire </a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
<footer>
        <?php include("../footer/footer.php"); ?>
    </footer>

</html>