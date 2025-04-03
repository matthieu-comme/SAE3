<?php
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
$pseudo = htmlspecialchars($_SESSION['pseudo']);

if(isset($_POST['oldmdp'], $_POST['newmdp2'], $_POST['newmdp2'] )) {
	$arr = filterArray($_POST);
	$msg = "";
	$requete = "SELECT mdp FROM Lutin WHERE pseudo='$pseudo'";
	$stid = oci_parse($idcom, $requete);
	if (!$stid) {
		$msg .= "Erreur lors de la préparation de requête";
		$e = oci_error();
		displayError($e);
	}
	$r = oci_execute($stid);
	if (!$r) {
		$msg .= 'Erreur lors de l\'execution de la requête : ';
		$e = oci_error($stid);
		displayError($e);
	}
	else {
		$oldmdp = oci_fetch_array($stid);
		$oldmdp = $oldmdp[0];
		if($oldmdp !== hash('sha256', $arr['oldmdp']))
			$msg .= 'Le mot de passe saisi n\'est pas correct.';
		else {
	
			if($arr['newmdp1'] !== $arr['newmdp2']) 
				$msg .= 'Les deux mots de passe ne correspondent pas.';
			else {
				$newmdp = hash('sha256', $arr['newmdp1']);
				if($newmdp === $oldmdp)
					$msg .= 'Vous ne pouvez pas conserver le même mot de passe.';
				else {
					
					$requete = "UPDATE Lutin SET mdp='$newmdp' WHERE pseudo='$pseudo'";
				    	$stid = oci_parse($idcom, $requete);
					if (!$stid) {
					        $msg .= "Erreur lors de la préparation de requête";
					        $e = oci_error();
					        displayError($e);
					}
					$r = oci_execute($stid);
					if (!$r) {
					        $msg .= 'Erreur lors de l\'execution de la requête : ';
					        $e = oci_error($stid);
					        displayError($e);
					}
					else 	$msg .= 'Modification effectuée!';					
				}
			}
		}
	}
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Profil - Chris Kindle</title>
     <link href="style/gpt.css" rel="stylesheet"> 

</head>
<body>
	<?php include('inc/header.php'); ?>	
    	<main>
      		
	<form method="POST" action="">
	<fieldset>
	<legend>Modifier le mot de passe</legend>
	<p><strong>Pseudo : <?php echo $pseudo?></strong></p>
	<label for="oldmdp">Ancien mot de passe</label>
	<input type="password" name="oldmdp" required>
	<label for="newmdp1">Nouveau mot de passe</label>
	<input type="password" name="newmdp1" required>
	<label for="newmdp2">Confirmer le nouveau mot de passe</label>
	<input type="password" name="newmdp2" required>
	<input type="submit" name="submit" value="Modifier">
	<?php if($msg) echo '<p id="msg">'.$msg.'</p>';?>
	</fieldset>
	</form>          
   	 </main>
   	 
   	 <footer>
   	 	<p>footer</p>
   	 <footer>

</body>

</html>
