<?php
require_once('inc/login.inc.php');
require_once('inc/functions.php');
?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Historique - Chris Kindle</title>
</head>

<body>
	<?php include('inc/header.php'); ?>	
    <main>
	<div>
  <input class="searchInput" data-table-id="historique" type="search" placeholder="Rechercher" aria-label="Search"
    aria-target="historique">
</div>
	<?php 
	if (!file_exists("historique.txt")) {
	echo "Je ne trouve pas l'historique...";
	return;
	}
	$fichier = fopen("historique.txt","r");
	if ($fichier == null) {
		echo "erreur lors de l'ouverture du fichier en mode 'r'";
		return;
	}
	if(!flock($fichier,1)) {
		echo "erreur de verrouillage mode 1";
		return;
	}
	?>
	<table class="sortTable" id="historique" border="1">	
	<thead><tr>
		<th>Date</th>
		<th>Admin</th>
		<th>Requête</th>
	</tr></thead>
	<tbody>
	<?php
	while($line = fgets($fichier)) {
		$temp = explode(';', $line);
		echo '<tr><td>'.$temp[0].'</td><td>'.$temp[1].'</td><td>'.$temp[2]."</td></tr>\n";
		
	}
	echo '</tbody></table>';
	if(!flock($fichier,3)) {
		echo "erreur de deverrouillage";
		return;
	}
	if(!fclose($fichier)) {
		echo "erreur lors de la fermeture du fichier";
		return;
	} ?>
    </main>
    <script src="scripts/sortTable.js"></script>
    <script src="scripts/searchTable.js"></script>
</body>

</html>
