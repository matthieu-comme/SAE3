<?php
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
$pseudo = htmlspecialchars($_SESSION['pseudo']);

// CSS TABLE TAILLE CONSTANTE

?>
<!DOCTYPE html>
<html>

<head>
    <title>Recherche avancée - Chris Kindle</title>
     <link href="style/gpt.css" rel="stylesheet"> 

</head>
<body>
	<?php include('inc/header.php'); ?>	
    	<main style="display: flex; flex-direction: row;">
    	<section style="display: flex; flex-direction: column;">
		<input class="searchInput" data-table-id="tab" type="search" placeholder="Rechercher" aria-label="Search"   aria-target="tab">
		<table id='tab'>
			<tr><th>Requête</th></tr>
			<tr><td><a href="search.php?id=1">Noms portés par plusieurs elfes</a></td></tr>
			<tr><td><a href="search.php?id=2">Elfes qui ont pour spécialité A ou B</a></td></tr>
			<tr><td><a href="search.php?id=3">Elfes qui ont pour spécialité A et B</a></td></tr>
			<tr><td><a href="search.php?id=4">Elfes ayant plus de n spécialités</a></td></tr>
			<tr><td><a href="search.php?id=5">La somme des volumes des traineaux par couleur</a></a></td></tr>
			<tr><td><a href="search.php?id=6">La capacité de chaque traineau</a></a></td></tr>
			<tr><td><a href="search.php?id=7">Quels jouets sont demandés par tous les enfants ?</a></a></td></tr>
			<tr><td><a href="search.php?id=8">Les remplaçants de l'elfe E</a></a></td></tr>
			<tr><td><a href="search.php?id=9">Les elfes remplacés par l'elfe E ?</a></a></td></tr>
			<tr><td><a href="search.php?id=10">Les jouets demandés par les enfants qui ont moins de 8 ans.</a></a></td></tr>
			<tr><td><a href="search.php?id=11">Quels sont les jouets produits par les ateliers qui ont fabriqué une voiture en bois ?</a></a></td></tr>
			<tr><td><a href="search.php?id=12">Calculer la charge réelle de chaque traineau en service</a></a></td></tr>
			<tr><td><a href="search.php?id=13">Trouver le jouet plus produit (avec les ex-aequo)</a></a></td></tr>
			<tr><td><a href="search.php?id=14">Quels sont les jouets pouvant substituer le camion en plastique ?</a></a></td></tr>
			<tr><td><a href="search.php?id=15">Qui sont les elfes qui entretiennent le traineau 2 ?</a></a></td></tr>	
		</table>   
	</section>
<?php 
if(isset($_GET['id'])) {
	$id = filterString($_GET['id']);
	?>
	<form method="POST" action="">
	<fieldset>
	<input type="hidden" name='id' value="<?php echo $id?>">
	<?php
	switch ($id) {
		case 1: 
			echo '1';
			//$requete = 'SELECT DISTINCT nom_elfe AS NOM FROM Elfe e1 WHERE nom_elfe IN (SELECT nom_elfe FROM Elfe e2 WHERE e1.id_elfe <> e2.id_elfe)';
			break;
		case 2: 
			echo 'Ecrire le nom complet correctement.<br> <i>ex : Couture</i>';
			echo '<input type="text" name="speA" placeholder="Spécialité A" required>';
			echo '<p>ou</p>';
			echo '<input type="text" name="speB" placeholder="Spécialité B" required>';
			break;
		case 3: 
			echo 'Ecrire le nom complet correctement.<br> <i>ex : Couture</i>';
			echo '<input type="text" name="speA" placeholder="Spécialité A" required>';
			echo '<p>et</p>';
			echo '<input type="text" name="speB" placeholder="Spécialité B" required>';
			break;
		case 4: 
			echo '<input type="number" name="nbSpe" placeholder="Nombre de spécialités" required>';
			break;
		case 5: 
			echo '5';
			break;
		case 6: 
			echo '6';
			break;
		case 7: 
			echo '7';
			break;
		case 8: 
			echo '<input type="text" name="idElfe" placeholder="Identifiant de l\'elfe" required>';
			break;
		case 9: 
			echo '<input type="text" name="idElfe" placeholder="Identifiant de l\'elfe" required>';
			break;
		case 10: 
			echo '10';
			break;
		case 11: 
			echo '11';
			break;
		case 12: 
			echo '12';
			break;
		case 13: 
			echo '13';
			break;
		case 14: 
			echo '14';
			break;
		case 15: 
			echo '15';
			break;
		default: 
			echo 'cas par défaut';
			break;
			
		
	}
	?>
	<input type="submit" name="submit" value="Rechercher">
	</fieldset>
	</form>	
	
<?php } 
if(isset($_POST['id'])) {
	$arr = filterArray($_POST);
	//var_dump($arr);
	switch ($id) {
		case 1: 
			echo '1';
			$requete = 'SELECT DISTINCT nom_elfe AS NOM FROM Elfe e1 WHERE nom_elfe IN (SELECT nom_elfe FROM Elfe e2 WHERE e1.id_elfe <> e2.id_elfe)';
			break;
		case 2: 
			$speA = strtolower($arr['speA']);
			$speB = strtolower($arr['speB']);
			$requete = "SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND (lower(nom_spe) = '".$speA."' OR lower(nom_spe) = '".$speB."') ORDER BY e.id_elfe";
			break;
		case 3: 
			$speA = strtolower($arr['speA']);
			$speB = strtolower($arr['speB']);
			$requete = "SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND LOWER(nom_spe) = '".$speA."' INTERSECT (SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND LOWER(nom_spe) = '".$speB."')";

			break;
		case 4: 
			$nbSpe = (is_numeric($arr['nbSpe']))?$arr['nbSpe']:false;
			if(!$nbSpe) $requete = false;
			else $requete = "SELECT es.id_elfe AS ID, nom_elfe AS NOM, COUNT(id_spe) AS \"Nombre de spe\" FROM Elfe_Spe es, Elfe e WHERE es.id_elfe = e.id_elfe GROUP BY es.id_elfe, nom_elfe HAVING(COUNT(id_spe)) > " . $nbSpe;
			break;
		case 5: 
			echo '5';
			break;
		case 6: 
			echo '6';
			break;
		case 7: 
			echo '7';
			break;
		case 8: 
			echo '<input type="text" name="idElfe" placeholder="Identifiant de l\'elfe" required>';
			break;
		case 9: 
			echo '<input type="text" name="idElfe" placeholder="Identifiant de l\'elfe" required>';
			break;
		case 10: 
			echo '10';
			break;
		case 11: 
			echo '11';
			break;
		case 12: 
			echo '12';
			break;
		case 13: 
			echo '13';
			break;
		case 14: 
			echo '14';
			break;
		case 15: 
			echo '15';
			break;
		default: 
			echo 'cas par défaut';
			break;
			
		
	}
	if($requete) {
		$stid = oci_parse($idcom, $requete);
		if(!$stid) echo 'Erreur lors de la préparation de requête';
		//echo $requete;
		$r = oci_execute($stid);
		if(!$r) echo 'Erreur lors de l\'execution de la requête';
		else {
			
			oci_fetch_all($stid, $tab, 0, -1, OCI_FETCHSTATEMENT_BY_ROW);
			echoTableFetchAll($tab, 'sortTable');
		}
	}

}?>
	     
   	 </main>
   	 
   	 <footer>
   	 	<p>footer</p>
   	 <footer>
<script src="scripts/searchTable.js"></script>
<script src="scripts/sortTable.js"></script>
</body>

</html>
