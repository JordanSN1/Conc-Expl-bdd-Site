<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>

<body>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="products.php">Products</a></li>
            <li><a href="about.php">About Us</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="cart.php">Cart</a></li>
        </ul>
    </nav>
</body>

</html>
<?php
include 'scripts/conn.php';


session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST['username'];
    $pass = $_POST['password'];

    $sql = "SELECT id FROM users WHERE username = '$user' AND password = '$pass'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $_SESSION['login_user'] = $user;
        header("location: welcome.php");
    } else {
        $error = "Your Login Name or Password is invalid";
    }
}
?>

<form action="" method="post">
    <label>Username :</label>
    <input type="text" name="username" required>
    <label>Password :</label>
    <input type="password" name="password" required>
    <input type="submit" value="Login">
</form>