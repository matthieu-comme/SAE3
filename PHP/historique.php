<?php
require_once('inc/login.inc.php');
require_once('inc/functions.php');
?>
<!DOCTYPE HTML>
<html>

<head>
	<title>Historique - Chris Kindle</title>
	<link href="style/gpt.css" rel="stylesheet">
	<meta charset='utf-8'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<?php include('inc/header.php'); ?>
	<main>
		<div>
			<input class="searchInput" data-table-id="historique" type="search" placeholder="Rechercher" aria-label="Search"
				aria-target="historique">

			<?php
			if (!file_exists("historique.txt")) {
				echo '<p class="error">Je ne trouve pas l\'historique...';
				return;
			}
			$fichier = fopen("historique.txt", "r");
			if ($fichier == null) {
				echo "erreur lors de l'ouverture du fichier en mode 'r'";
				return;
			}
			if (!flock($fichier, 1)) {
				echo "erreur de verrouillage mode 1";
				return;
			}
			// préparation du tableau
			$arr[0] = ['Date (UTC)', 'Admin', 'Table', 'Action', 'Détails'];
			while ($line = fgets($fichier))
				$arr[] = explode(';;;', $line);

			if (!flock($fichier, 3)) {
				echo "erreur de deverrouillage";
				return;
			}
			if (!fclose($fichier)) {
				echo "erreur lors de la fermeture du fichier";
				return;
			}
			echoTable($arr, 'sortTable', 'historique');
			?>
		</div>
	</main>
	<?php include_once('inc/footer.php'); ?>
	<script src="scripts/sortTable.js"></script>
	<script src="scripts/searchTable.js"></script>
</body>

</html>