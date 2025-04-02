<?php
// securiser la suppression
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Suppression - Chris Kindle</title>
    
</head>

<body>
	<?php include('inc/header.php'); ?>
    <main>
    <nav>
    <form method="GET" action="">
                <h3>Choix de la table</h3>
                <select name="table">
                <?php
                $requete =
                    "SELECT table_name FROM user_tables WHERE table_name <> 'LUTIN' ORDER BY table_name";
                $stid = oci_parse($idcom, $requete);
                if (!$stid) {
                    echo "Erreur lors de la préparation de requête";
                }
                $r = oci_execute($stid);
                if (!$r) {
                    echo 'Erreur lors de l\'execution de la requête';
                }
                while ($row = oci_fetch_array($stid)) {
                    echo "<option value='" .
                        $row[0] .
                        "'>" .
                        $row[0] .
                        "</option>";
                }
                ?>
                </select>
                <input type="submit" name="submit" value="Choisir">
            </form>
            </nav>
    <?php 
    if(isset($_POST['submit']) && $_POST['submit'] == 'Delete') {
    	var_dump($_POST);
    
	$id = filter_var($value, FILTER_SANITIZE_SPECIAL_CHARS);
	$table = $_POST['table'];
	$pkname = $_POST['pkname'];
	$pkdelete = $_POST['pkdelete'];
    	$requete = 'DELETE FROM '.$table.' WHERE '. $pkname[0] . ' = '."'$pkdelete'" ;
    	echo $requete.'<br>';

    	$stid = oci_parse($idcom, $requete);
                if (!$stid) {
                    echo "Erreur lors de la préparation de requête";
                    $e = oci_error();
                    displayError($e);
                }
                $r = oci_execute($stid);
                if (!$r) {
                    echo 'Erreur lors de l\'execution de la requête : ';
                    $e = oci_error($stid);
                    displayError($e);
                }
                else {
                	echo 'Suppression réussie';
                	addHistorique($requete);
               }
    } 
    
  if (isset($_GET["table"]) && strcasecmp(trim($_GET["table"]), 'lutin')) {
  	$table = $_GET["table"];
        $requete = "SELECT * FROM " . $table;
        $stid = oci_parse($idcom, $requete);
        if (!$stid) {
            echo "Erreur lors de la préparation de requête : ";
        }
        $r = oci_execute($stid);
        if (!$r) {
            echo 'Erreur lors de l\'execution de la requête';
            //return;
        } else {
        	//echoDeleteTable($stid);
        	$pkarr = getPrimaryKeys($idcom, $table);

        	
        	//$cols = getColsInfo($stid);
            //oci_free_statement($stid);
            ?>
	    	<form method="POST" action="" onsubmit="return confirm('Voulez-vous vraiment supprimer ce tuple ?');">
	    	    <h1>Suppression dans <?php echo $_GET["table"]; ?></h1>
	    	    
		 <?php 
		 while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
		 	$label = '';
		 	$pk = ''; 
		 	foreach ($row as $key => $value) {

		 		if (in_array($key, $pkarr)) { // si l'attribut est la clé primaire
		 			$pk = $pk . $value;
		 		}
		 		$label = $label . ' - ' . $value; 
			}
			echo '<input type="radio" name="pkdelete" id="'.$pk.'" value="'.$pk.'"/><label for="'.$pk.'">'.$label.'</label><br>' ;
		}
      		
      	?>               <input type="hidden" name="table" value="<?php echo $table;?>"/>
      		<?php foreach($pkarr as $pkname)
      			echo '<input type="hidden" name="pkname[]" value="'.$pkname.'"/>';
      		?>
      		
		    <input type="submit" name="submit" value="Delete">
		</form>
		<?php
        }
    } ?>     	     		
            
    </main>
</body>

</html>
