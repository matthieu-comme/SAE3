<?php
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
$pseudo = htmlspecialchars($_SESSION['pseudo']);

if(isset($_POST['submit'])) {
	if($_POST['submit'] === 'Modifier MDP') {
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
					$msg_mdp = '<p class="error">Le mot de passe saisi n\'est pas correct.</p>';
				else {
			
					if($arr['newmdp1'] !== $arr['newmdp2']) 
						$msg_mdp = '<p class="error">Les deux mots de passe ne correspondent pas.</p>';
					else {
						$newmdp = hash('sha256', $arr['newmdp1']);
						if($newmdp === $oldmdp)
							$msg_mdp = '<p class="error">Vous ne pouvez pas conserver le même mot de passe.</p>';
						else {
							
							$requete = "UPDATE Lutin SET mdp='$newmdp' WHERE pseudo='$pseudo'";
						    	$stid = oci_parse($idcom, $requete);
							if (!$stid) {
							        $msg_mdp = "Erreur lors de la préparation de requête";
							        $e = oci_error();
							        displayError($e);
							}
							$r = oci_execute($stid);
							if (!$r) {
							        $msg .= 'Erreur lors de l\'execution de la requête : ';
							        $e = oci_error($stid);
							        displayError($e);
							}
							else 	$msg_mdp = '<p class="msg">Modification effectuée!</p>';					
						}
					}
				}
			}
		}
	}
	else {
		if($_POST['submit'] === 'Modifier Pseudo') {
			if(isset($_POST['newpseudo'], $_POST['mdp'])) {
				$arr = filterArray($_POST);
				$newpseudo = $arr['newpseudo'];
				$mdp = hash('sha256', $arr['mdp']);
				$requete = "SELECT * FROM Lutin WHERE pseudo='".$_SESSION['pseudo']."' AND mdp='".$mdp."'" ;
				$stid = oci_requete($idcom, $requete);
				if ($stid) {
					oci_fetch_all($stid, $result1);
					if(empty($result1['PSEUDO']) || empty($result1['MDP']))
						$msg_pseudo = '<p class="error">Mot de passe incorrect</p>';
					else {
						$requete = "SELECT * FROM Lutin WHERE pseudo='".$newpseudo."'";
						$stid = oci_requete($idcom, $requete);
						if ($stid) {					
							oci_fetch_all($stid, $result2);
							if($result2['PSEUDO']) $msg_pseudo = '<p class="error">Ce pseudo n\'est pas disponible</p>';
							else {
								$requete = "UPDATE Lutin SET pseudo='".$newpseudo."' WHERE pseudo='".$_SESSION['pseudo']."'";
								$stid = oci_requete($idcom, $requete);
								if ($stid) {
									$_SESSION['pseudo'] = $newpseudo;
									$msg_pseudo = '<p class="msg">Pseudo modifié !</p>';
								}
								
								
								
							}
						}
					
					}
					
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
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <style>
         #profil_forms {
         	display: flex;
         	flex-direction: column;
         	align-items: center;
         	gap: 40px;
         	width: 100%;
         }
         #profil_forms input {
         	margin: 6px;
         }
         </style>
</head>
<body>
	<?php include('inc/header.php'); ?>	
    	<main>
    	<div id="profil_forms">  
    		<p><strong>Pseudo : <?php echo $_SESSION['pseudo']?></strong></p>  	   
	    	<form method="POST" action="">
		<fieldset>
		<legend>Modifier le pseudo</legend>
		<label for="newpseudo">Nouveau pseudo</label>
		<input type="text" name="newpseudo" required>
		<label for="mdp">Mot de passe</label>
		<input type="password" name="mdp" required>
		<input type="submit" name="submit" value="Modifier Pseudo">
		<?php if($msg_pseudo) echo $msg_pseudo;?>
		</fieldset>
		</form>
	      		
		<form method="POST" action="">
		<fieldset>
		<legend>Modifier le mot de passe</legend>

		<label for="oldmdp">Ancien mot de passe</label>
		<input type="password" name="oldmdp" required>
		<label for="newmdp1">Nouveau mot de passe</label>
		<input type="password" name="newmdp1" required>
		<label for="newmdp2">Confirmer le nouveau mot de passe</label>
		<input type="password" name="newmdp2" required>
		<input type="submit" name="submit" value="Modifier MDP">
		<?php if($msg_mdp) echo $msg_mdp;?>
		</fieldset>
		</form>  
	</div>        
   	 </main>
   	 
<?php include_once('inc/footer.php');?>

</body>

</html>
