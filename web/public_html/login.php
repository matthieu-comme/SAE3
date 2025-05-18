<?php
session_start();
if (isset($_POST['pseudo']) && isset($_POST['mdp'])) { // si tentative de connexion
    if (empty($_POST['pseudo']) || empty($_POST['mdp']))
        $message = "Veuillez remplir tous les champs<br>";
    else {
        require_once('inc/connexoci.inc.php');
        require_once('inc/functions.php');
        $idcom = connexoci("myparam");
        $pseudo = filterString($_POST['pseudo']);
        $mdp = filterString($_POST['mdp']);
        $hashmdp = hash('sha256', $mdp);
        $requete = "SELECT * FROM Lutin WHERE pseudo = '" . $pseudo . "'";
        $stid = oci_requete($idcom, $requete);
        if ($stid) {
            $message = "";
            $result = oci_fetch_array($stid, OCI_ASSOC);
            if ($result['PSEUDO'] !== $pseudo || $result['MDP'] !== $hashmdp) // echec de connexion
                $message .=  "<strong>Pseudo ou mot de passe incorrect</strong><br>";
            else { // connexion et redirection
                $_SESSION['pseudo'] = $pseudo;
                header('Location: index.php');
            }
        }
    }
} ?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Connexion - Chris Kindle</title>
    <link rel="stylesheet" href="style/login.css">
    <meta charset='utf-8'>
</head>

<body>
    <main>
        <h1>Chris Kindle</h1>
        <div id="login" style="border:1px solid black;width:400px">
            <form method="POST" action="">
                <label for="pseudo">Pseudo</label> <input type="text" name="pseudo" pattern=".{1,16}" required></input><br>
                <label for="mdp">Mot de passe</label> <input type="password" name="mdp" required></input><br>
                <input type="submit" name="submit" value="Se connecter">
            </form>
            <?php if (!empty($message)) echo '<p id="message">' . $message . '</p>'; ?>
        </div>

    </main>
</body>

</html>