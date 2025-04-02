<?php
session_start();
if (isset($_POST['pseudo']) && isset($_POST['mdp'])) {
    if (empty($_POST['pseudo']) || empty($_POST['mdp']))
        $message = "Veuillez remplir tous les champs<br>";
    else {
        require_once('inc/connexoci.inc.php');
        require_once('inc/functions.php');
        $idcom = connexoci("myparam");
        $pseudo = filterString($_POST['pseudo']);
        $mdp = filterString($_POST['mdp']);
        $hashmdp = hash('sha256', $mdp);
        $requete = "SELECT * FROM Lutin WHERE pseudo = '".$pseudo."'";
        $stid = oci_parse($idcom, $requete);
        if(!$stid) echo 'Erreur lors de la préparation de requête';
        $r = oci_execute($stid);
        if(!$r) echo 'Erreur lors de l\'execution de la requête';
            $message = "";
            $result = oci_fetch_array($stid, OCI_ASSOC);
            var_dump($result);
            if ($result['PSEUDO'] !== $pseudo || $result['MDP'] !== $hashmdp) 
            	$message .=  "<strong>Pseudo ou mot de passe incorrect</strong><br>";
            else {
            	$_SESSION['pseudo'] = $pseudo;
            	header('Location: index.php');    
            }
    }
} ?>
 
<html>

<head>
    <title>Connexion - Chris Kindle</title>
</head>

<body>
    <main>
        <h1>Veuillez vous connecter</h1>
        <div id="login" style="border:1px solid black;width:400px">
            <form method="POST" action="">
                <label for="pseudo">Pseudo</label> <input type="text" name="pseudo" pattern=".{1,16}" required></input><br>
                <label for="mdp">Mot de passe</label> <input type="password" name="mdp" required></input><br>
                <input type="submit" name="submit" value="Se connecter">
            </form>
        </div>
        <?php if (!empty($message)) echo $message; ?>
    </main>
</body>

</html>
