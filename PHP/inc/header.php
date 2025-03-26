<header>
    <h1>Chris Kindle</h1>
    <a href="index.php">Accueil</a>
    <a href="login.php">Login</a>
    <a href="page1.php">Page 1</a>
    <a href="page2.php">Page 2</a>
    <?php if (!empty($_SESSION['name'])) echo 'Salut à toi, ' . htmlspecialchars($_SESSION['name']);
    else echo 'Tu es inconnu'; ?>
</header>
