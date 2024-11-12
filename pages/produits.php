<header>
        <?php include("../header/header.php"); ?>
</header>

    <style>
        <?php include("produits.css"); ?>
    </style>

    <div class="product-list">
        <?php
        error_reporting(E_ALL);
        ini_set('display_errors', '1');
        include("../scripts/conn.php");


        $products = $conn->query("SELECT * FROM burgers")->fetchAll();
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

    <script src="../src/scripts.js"></script>
</body>
<footer>
        <?php include("../footer/footer.php"); ?>
    </footer>
</html>