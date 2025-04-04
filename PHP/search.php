<?php
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
$pseudo = htmlspecialchars($_SESSION['pseudo']);
?>
<!DOCTYPE html>
<html>

<head>
	<title>Recherche avancée - Chris Kindle</title>
	<link href="style/gpt.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset='utf-8'>
</head>

<body>
	<?php include('inc/header.php'); ?>
	<main style="display: flex; flex-direction: row;">
		<section style="display: flex; flex-direction: column;">
			<input class="searchInput" data-table-id="tab" type="search" placeholder="Rechercher" aria-label="Search" aria-target="tab">
			<table id='tab'>
				<tr>
					<th>Requête</th>
				</tr>
				<tr>
					<td><a href="search.php?id=1">Noms portés par plusieurs elfes</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=2">Elfes qui ont pour spécialité A ou B</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=3">Elfes qui ont pour spécialité A et B</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=4">Elfes ayant plus de n spécialités</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=5">La somme des volumes des traineaux par couleur</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=6">La capacité de chaque traineau</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=7">Quels jouets sont demandés par tous les enfants ?</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=8">Les remplaçants de l'elfe E</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=9">Les elfes remplacés par l'elfe E ?</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=10">Les jouets demandés par les enfants qui ont moins de x ans.</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=11">Quels sont les jouets produits par les ateliers qui ont fabriqué le jouet J ?</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=12">Calculer la charge réelle de chaque traineau en service</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=13">Trouver le jouet plus produit (avec les ex-aequo)</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=14">Quels sont les jouets pouvant substituer le jouet J ?</a></td>
				</tr>
				<tr>
					<td><a href="search.php?id=15">Qui sont les elfes qui entretiennent le traineau T ?</a></td>
				</tr>
			</table>
		</section>
		<?php
		// après avoir cliqué sur une question
		if (isset($_GET['id'])) {
			$id = filterString($_GET['id']);
		?>

			<form method="POST" action="" id="searchform">
				<fieldset>
					<input type="hidden" name='id' value="<?php echo $id ?>">
					<?php
					switch ($id) {
						case 1: // questions sans précision supplémentaire
						case 5:
						case 6:
						case 7:
						case 12:
						case 13:
							break;


						case 2:
						case 3:
							echo '<p>Ecrire le nom complet correctement.<br> <i>ex : Couture</i></p>';
							echo '<input type="text" name="speA" placeholder="Spécialité A" required>';
							$s = ($id == 2) ? 'ou' : 'et';
							echo "<p>$s</p>";
							echo '<input type="text" name="speB" placeholder="Spécialité B" required>';
							break;
						case 4:
							echo '<input type="number" name="nbSpe" placeholder="Nombre de spécialités" required>';
							break;

						case 8:
						case 9:
							echo '<input type="number" name="idElfe" placeholder="Identifiant de l\'elfe" required>';
							break;
						case 10:
							echo '<input type="number" name="age" placeholder="Age" required>';
							break;
						case 11:
						case 14:
							$requete = 'SELECT nom_jouet FROM Jouet ORDER BY nom_jouet';
							$stid = oci_requete($idcom, $requete);
							if ($stid) {
								echo '<label>Nom du jouet : </label>';
								echo '<select name="jouet">'; // liste des jouets
								while ($row = oci_fetch_array($stid, OCI_NUM)) {
									echo '<option>' . $row[0] . '</option>';
								}
								echo '</select>';
							}
							break;

						case 15:
							$requete = 'SELECT id_tr FROM Traineau ORDER BY id_tr';
							$stid = oci_requete($idcom, $requete);
							if ($stid) {
								echo '<label>ID Traineau : </label>';
								echo '<select name="id_tr">'; // liste des traineaux
								while ($row = oci_fetch_array($stid, OCI_NUM)) {
									echo '<option>' . $row[0] . '</option>';
								}
								echo '</select>';
							}
							break;
						default:
							break;
					}
					?>
					<input type="submit" name="submit" value="Rechercher">
				</fieldset>
			</form>

		<?php }
		// formulaire soumis
		if (isset($_POST['id'])) {
			$arr = filterArray($_POST);
			// préparation de la requête
			switch ($id) {
				case 1:
					$requete = 'SELECT DISTINCT nom_elfe AS NOM FROM Elfe e1 WHERE nom_elfe IN (SELECT nom_elfe FROM Elfe e2 WHERE e1.id_elfe <> e2.id_elfe)';
					break;
				case 2:
					$speA = strtolower($arr['speA']);
					$speB = strtolower($arr['speB']);
					$requete = "SELECT DISTINCT e.id_elfe, nom_elfe, nom_spe from Elfe e, Elfe_Spe es, Specialite s WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND (lower(nom_spe) = '" . $speA . "' OR lower(nom_spe) = '" . $speB . "') ORDER BY e.id_elfe";
					break;
				case 3:
					$speA = strtolower($arr['speA']);
					$speB = strtolower($arr['speB']);
					$requete = "SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND LOWER(nom_spe) = '" . $speA . "' INTERSECT (SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND LOWER(nom_spe) = '" . $speB . "')";

					break;
				case 4:
					$nbSpe = (is_numeric($arr['nbSpe'])) ? $arr['nbSpe'] : false;
					if (!$nbSpe) $requete = false;
					else $requete = "SELECT es.id_elfe AS ID, nom_elfe AS NOM, COUNT(id_spe) AS \"Nombre de spe\" FROM Elfe_Spe es, Elfe e WHERE es.id_elfe = e.id_elfe GROUP BY es.id_elfe, nom_elfe HAVING(COUNT(id_spe)) > " . $nbSpe;
					break;
				case 5:
					$requete = "SELECT couleur_tr, SUM(volume_tr) AS SOMME_VOLUME FROM Traineau GROUP BY couleur_tr";
					break;
				case 6:
					$requete = "SELECT t.id_tr, SUM(capac_renne) AS CAPACITE FROM Traineau t, Renne r WHERE t.id_tr = r.id_tr GROUP BY t.id_tr ORDER BY t.id_tr";
					break;
				case 7:
					$requete = "SELECT DISTINCT d1.id_jouet, nom_jouet FROM Demande d1, Jouet j WHERE d1.id_jouet = j.id_jouet AND NOT EXISTS ( SELECT id_enfant FROM Enfant e MINUS ( SELECT id_enfant FROM Demande d2 WHERE d2.id_jouet = d1.id_jouet))";
					break;
				case 8:
					$idElfe = (is_numeric($arr['idElfe'])) ? $arr['idElfe'] : false;
					if (!$idElfe) $requete = false;
					else $requete = "SELECT id_remplacant, nom_elfe FROM Elfe_Remplace, Elfe e WHERE id_absent = " . $idElfe . " AND id_remplacant = id_elfe ORDER BY id_remplacant";
					break;
				case 9:
					$idElfe = (is_numeric($arr['idElfe'])) ? $arr['idElfe'] : false;
					if (!$idElfe) $requete = false;
					else $requete = "SELECT id_absent, nom_elfe FROM Elfe_Remplace, Elfe e WHERE id_remplacant = " . $idElfe . " AND id_absent = id_elfe ORDER BY id_remplacant";
					break;
				case 10:
					$age = (is_numeric($arr['age'])) ? $arr['age'] : false;
					if (!$age) $requete = false;
					else $requete = "SELECT DISTINCT d.id_jouet, nom_jouet AS FROM Enfant e, Demande d, Jouet j WHERE e.id_enfant = d.id_enfant AND d.id_jouet = j.id_jouet AND (SYSDATE-date_enfant)/365.25 < " . $age;

					break;
				case 11:
					$requete = "SELECT J1.nom_jouet FROM jouet J1 WHERE J1.id_jouet IN(
SELECT F1.id_jouet FROM Fabrique F1 WHERE F1.id_atelier IN(
SELECT F2.id_atelier FROM Fabrique F2 WHERE F2.id_jouet IN(
SELECT J2.id_jouet FROM Jouet J2 WHERE J2.nom_jouet = '" . $arr['jouet'] . "')))";

					break;
				case 12:
					$requete = "SELECT id_tr, SUM(EC.quantite*ES.quantite) AS CHARGE_REELLE FROM Matiere_premiere MP,Jouet J,Entrepot E,Est_compose EC,Est_stocke ES WHERE MP.id_mat=EC.id_mat AND EC.id_jouet=J.id_jouet AND J.id_jouet=ES.id_jouet AND ES.region=E.region GROUP BY id_tr UNION (SELECT id_tr, 0 FROM Entrepot WHERE region NOT IN
 (SELECT region FROM Est_Stocke))";

					break;
				case 13:
					$requete = "SELECT nom_jouet, SUM(quantite) AS QUANTITE FROM Jouet J,Est_stocke ES WHERE J.id_jouet=ES.id_jouet GROUP BY nom_jouet,J.id_jouet HAVING SUM(quantite)=(SELECT MAX(SUM(quantite)) FROM Jouet J2,Est_stocke ES2 WHERE J2.id_jouet=ES2.id_jouet GROUP BY J2.id_jouet)";
					break;
				case 14:
					$requete = "SELECT J1.nom_jouet FROM Jouet J1,Jouet J2,Substitue S WHERE J1.id_jouet=id_substituant AND J2.id_jouet = id_substitue AND J2.nom_jouet='" . $arr['jouet'] . "'";
					break;
				case 15:
					$requete = "SELECT E.id_elfe, nom_elfe FROM Elfe E,Elfe_equipe EE, Equipe Eq, Entrepot Ent
WHERE E.id_elfe=EE.id_elfe AND EE.id_equipe=Eq.id_equipe AND Eq.region=Ent.region AND id_tr = " . $arr['id_tr'];

					break;
				default:
					echo 'cas par défaut';
					break;
			}
			if ($requete) {
				$stid = oci_requete($idcom, $requete);
				if ($stid) { // affichage du résultat
					oci_fetch_all($stid, $tab, 0, -1, OCI_FETCHSTATEMENT_BY_ROW);
					echo '<div>';
					echoTableFetchAll($tab, 'sortTable', 'recherche');
					echo '</div>';
				}
			}
		} ?>

	</main>

	<?php include_once('inc/footer.php'); ?>
	<script src="scripts/searchTable.js"></script>
	<script src="scripts/sortTable.js"></script>
</body>

</html>