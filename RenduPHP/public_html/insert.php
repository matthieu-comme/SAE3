<?php

// fonction connexion et gestion d'erreurs
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
?>
 <!DOCTYPE HTML>
<html>

<head>
    <title>Insertion - Chris Kindle</title>
    <link href="style/gpt.css" rel="stylesheet">
                 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            
 
</head>

<body>
	<?php include('inc/header.php');?>	
    <main>
	<div class="flex_column">
    <?php 
    if(isset($_POST['submit']) && $_POST['submit'] == 'Ajouter') {
    	foreach($_POST as $key => $value) {
	    		$value = filterString($value);
	    		$key = filterString($key);
	    		if($key == 'table') 
	    			$table = $value;
	    		else {
			    	if($key != 'submit') {
			    		$attr = $key;
			    		if(str_contains($key, 'DATE')) // si le champ est une date
			    			$insert["$attr"] = "TO_DATE('$value', 'YYYY-MM-DD')";
			    		else
			    			$insert["$attr"] = "'$value'";	
			    	}
		    	}
	}
    	$attributs =implode(', ', array_keys($insert));
    	$valeurs =  implode(", ", $insert);
    	$requete = 'INSERT INTO '.$table.' ('.$attributs.') VALUES ('.$valeurs.')';
    	$stid = oci_requete($idcom, $requete);
            if ($stid) {
                $msg = '<p class="msg">Insertion réussie</p>';
                addHistorique($table, 'Ajouter', "($attributs) VALUES ($valeurs)");
               }
    } 
    
        if (isset($_GET["table"]) && strcasecmp(trim($_GET["table"]), 'lutin')) {
        $requete = "SELECT * FROM " . $_GET["table"];
        $stid = oci_requete($idcom, $requete);
            if ($stid) {

            $cols = getColsInfo($stid);
            oci_free_statement($stid);
            ?>
            
            <?php if($msg) echo $msg; ?>
            	 <h1>Insérer dans <?php echo $_GET["table"]; ?></h1>
	    	<form method="POST" action="">

	    	    <fieldset>
		 <?php 
		    $fkarr = getForeignKeys($idcom, $_GET['table']);
      		foreach ($cols as $row) {
      			if(isForeignKey($row['name'], $fkarr)) 
      				createFKInput($row, $fkarr, $idcom);
			else 
				createInput($row);
		}
      	?>                <input type="hidden" name="table" value="<?php echo $_GET["table"];?>"/>
		    <input type="submit" name="submit" value="Ajouter">
		    </fieldset>
		</form>
		<?php
        }
    } ?>     	     		
        
         <section>
         <h3>Insérer dans une autre table</h3>
    	<?php echoSelectNav($idcom); ?>
    </section>  
    </div>  
    </main>
    <?php include_once('inc/footer.php');?>
</body>

</html>
