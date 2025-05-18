<?php
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
?>
<!DOCTYPE html>
<html>

<head>
	<title>Accueil - Chris Kindle</title>
	<link href="style/gpt.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset='utf-8'>
</head>

<body>
	<?php include('inc/header.php'); ?>
	<main>
		<nav>
			<ul>
				<?php
				$requete = "SELECT table_name FROM user_tables WHERE UPPER(table_name) <> 'LUTIN' ORDER BY table_name";
				$stid = oci_requete($idcom, $requete);
				if ($stid) {
					// génère la liste des tables avec les liens
					while ($row = oci_fetch_array($stid)) {
						$name = $row[0];
						$tablenames[] = $name; ?>
						<div class="nav_table">
							<li><?php echo $name ?></li>
							<div class="nav_links">
								<ul class="options">
									<li class="nav_insert"><a href="insert.php?table=<?php echo $name ?>">Ajouter</a></li>
									<li class="nav_delete"><a href="delete.php?table=<?php echo $name ?>">Supprimer</a></li>
								</ul>
							</div>
						</div>
					<?php } ?>
			</ul>
		</nav>
		<section>
			<?php // crée un tableau html pour chaque table
					foreach ($tablenames as $table) {
						$requete = "SELECT * FROM $table";
						$stid = oci_requete($idcom, $requete);
						if ($stid) {

							echo '<div class="table" id="' . $table . '">' . "\n";
							echo '<input class="searchInput" data-table-id="' . $table . '" type="search" placeholder="Rechercher" aria-label="Search"  aria-target="' . $table . '">';
							echoTableOCI($stid, $table);
							echo '</div>';
						}
					}
			?>
		</section>

	<?php } ?>

	</main>

	<?php include_once('inc/footer.php'); ?>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="scripts/index.js"></script>
	<script src="scripts/sortTable.js"></script>
	<script src="scripts/searchTable.js"></script>
</body>

</html>