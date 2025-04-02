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
     <link href="style/index.css" rel="stylesheet"> 
</head>

<body>
	<?php include('inc/header.php'); ?>	
    	<main>
      		<nav>
		<ul>	
       		<?php 
	           	$requete = "SELECT table_name FROM user_tables WHERE UPPER(table_name) <> 'LUTIN' ORDER BY table_name";
		$stid = oci_parse($idcom, $requete);
		if(!$stid) echo 'Erreur lors de la préparation de requête';
		$r = oci_execute($stid);
		if(!$r) echo 'Erreur lors de l\'execution de la requête';
		while ($row = oci_fetch_array($stid)) {
			$name = $row[0];
			$tablenames[] = $name;?>
			<div class="nav_table">
			<li><?php echo $name?></li><ul class="options">
			<li class="nav_insert"><a href="http://10.1.16.112/~matthieu.comme/SAE3/insert.php?table=<?php echo $name?>">Ajouter</a></li>
			<li class="nav_delete"><a href="http://10.1.16.112/~matthieu.comme/SAE3/delete.php?table=<?php echo $name?>">Supprimer</a></li></ul></div>
		<?php } ?>		
       		</ul>
	</nav>  
	<section>
   	 	<?php
   	 	foreach($tablenames as $table) {
   	 		$requete = "SELECT * FROM $table";
			$stid = oci_parse($idcom, $requete);
			if(!$stid) echo 'Erreur lors de la préparation de requête';
			$r = oci_execute($stid);
			if(!$r) echo 'Erreur lors de l\'execution de la requête';
			echo '<div class="table" id="'.$table.'">'."\n";
			echoTable2D($stid, $table);
			echo '</div>';
   	 	}
   	 	?>
   	 </section>           
   	 </main>
   	 
   	 <footer>
   	 	<p>footer</p>
   	 <footer>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="scripts/index.js"></script>  
    <script src="scripts/sorttable.js"></script>
    <script src="scripts/searchTable.js"></script>
</body>

</html>
