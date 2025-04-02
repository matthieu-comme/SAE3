<header>
    <h1>Chris Kindle</h1>
    <a href="index.php">Accueil</a>
    <a href="page1.php">Page 1</a>
    <a href="page2.php">Page 2</a>
    <a href="historique.php">Historique</a>
    <p>Salutations, <?php echo htmlspecialchars($_SESSION['pseudo']); ?></p>    
    <form method="POST" action="" onsubmit="return confirm('Voulez-vous vraiment vous déconnecter ?');">
    <input type="submit" name="deco" value="Déconnexion" >    
    </form>
</header>
<style>
header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background: #34495e;
    padding: 15px 30px;
    color: white;
    font-family: Arial, sans-serif;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    border-radius: 0 0 15px 15px;
}

header h1 {
    font-size: 24px;
    margin: 0;
}

header a {
    color: white;
    text-decoration: none;
    font-weight: bold;
    margin: 0 15px;
    transition: color 0.3s ease-in-out;
}

header a:hover {
    color: #ffeb99;
}

header p {
    margin: 0;
    font-size: 16px;
}

header form {
    margin-left: 20px;
}

header input[type="submit"] {
    background: white;
    border: none;
    color: #34495e;
    padding: 8px 12px;
    font-size: 14px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s, color 0.3s;
}

header input[type="submit"]:hover {
    background: #ffeb99;
    color: #ff7b00;
}

</style>
