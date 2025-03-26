<?php

// fonction connexion et gestion d'erreurs

require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
?>
 
<html>

<head>
    <title>Insertion - Chris Kindle</title>
    <link href="style/insert.css" rel="stylesheet">
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
    if(isset($_POST['submit']) && $_POST['submit'] == 'Insert') {
    	var_dump($_POST);
    	foreach($_POST as $key => $value) {
    		$value = preg_replace("/[;']/",'', $value); // limiter les injections
    		$key = preg_replace("/[;']/",'', $key);
    		if($key == 'table') 
    			$table = filter_var($value, FILTER_SANITIZE_SPECIAL_CHARS);
    		else {
		    	if($key != 'submit') {
		    		$attr = filter_var($key, FILTER_SANITIZE_SPECIAL_CHARS);
		    		$insert["$attr"] = filter_var($value, FILTER_SANITIZE_SPECIAL_CHARS);	
		    	}
	    	}
    	}
    	$attributs =implode(', ', array_keys($insert));
    	$valeurs =  "'" .implode("', '", $insert). "'";
    	$requete = 'INSERT INTO '.$table.' ('.$attributs.') VALUES ('.$valeurs.')';
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
                else echo 'Insertion réussie';
    } 
    
        if (isset($_GET["table"]) && strcasecmp(trim($_GET["table"]), 'lutin')) {
        $requete = "SELECT * FROM " . $_GET["table"];
        $stid = oci_parse($idcom, $requete);
        if (!$stid) {
            echo "Erreur lors de la préparation de requête : ";
        }
        $r = oci_execute($stid);
        if (!$r) {
            echo 'Erreur lors de l\'execution de la requête';
            //return;
        } else {

            $cols = getColsInfo($stid);
            //echoTable2D($stid);
            oci_free_statement($stid);
            ?>
	    	<form method="POST" action="">
	    	    <h1>Insert dans <?php echo $_GET["table"]; ?></h1>
		 <?php 
		    $fkarr = getForeignKeys($idcom, $_GET['table']);
      		foreach ($cols as $row) {
      			if(isForeignKey($row['name'], $fkarr)) 
      				createFKInput($row, $fkarr, $idcom);
			else 
				createInput($row);
		}
      	?>                <input type="hidden" name="table" value="<?php echo $_GET["table"];?>"/>
		    <input type="submit" name="submit" value="Insert">
		</form>
		<?php
        }
    } ?>     	     		
            
    </main>
</body>

</html>
