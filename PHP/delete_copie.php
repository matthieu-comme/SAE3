<?php
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");
?>
<!DOCTYPE HTML>
<html>

<head>
    <title>Suppression - Chris Kindle</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link href="style/gpt.css" rel="stylesheet"> 
      <style>
      .deletelabel {
      	border: 1px solid black;
      	display: inline;
      }
      </style>
    
</head>

<body>
	<?php include('inc/header.php'); ?>
    <main>
    <div class="flex_column">
    <?php 
    if(isset($_POST['submit']) && $_POST['submit'] == 'Delete') {    
	$table = $_POST['table'];
	$pkname = $_POST['pkname'];
	$pkdelete = $_POST['pkdelete'];
    	$requete = 'DELETE FROM '.$table.' WHERE '. $pkname[0] . ' = '."'$pkdelete'" ;
    	
    	$stid = oci_requete($idcom, $requete);
            if ($stid) {
                	$msg = '<p class="msg">Suppression réussie</p>';
                	addHistorique($table, 'Supprimer', $pkname[0]." = ".$pkdelete);
            }
    } 
    
  if (isset($_GET["table"]) && strcasecmp(trim($_GET["table"]), 'lutin')) {
  	$table = $_GET["table"];
        $requete = "SELECT * FROM " . $table;
        $stid = oci_requete($idcom, $requete);
        if ($stid)  {
        	$pkarr = getPrimaryKeys($idcom, $table);
            ?>	
            	    	    <?php if($msg) echo $msg; ?>
	    	<form method="POST" action="" onsubmit="return confirm('Voulez-vous vraiment supprimer ce tuple ?');">
	    	    <h1>Suppression dans <?php echo $_GET["table"]; ?></h1>

	    	    <fieldset>
		 <?php 
		 while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
		 	$label = '';
		 	$pk = ''; 
		 	foreach ($row as $key => $value) {

		 		if (in_array($key, $pkarr)) { // si l'attribut est la clé primaire
		 			$pk = $pk . $value;
		 		}
		 		$label = $label . ' <div class="deletelabel">- ' . $value.'</div>'; 
			}
			echo '<input type="radio" name="pkdelete" id="'.$pk.'" value="'.$pk.'"/><label for="'.$pk.'">'.$label.'</label><br>' ;
		}
      		
      	?>               <input type="hidden" name="table" value="<?php echo $table;?>"/>
      		<?php foreach($pkarr as $pkname)
      			echo '<input type="hidden" name="pkname[]" value="'.$pkname.'"/>';
      		?>
      		
		    <input type="submit" name="submit" value="Delete">
		    </fieldset>
		</form>
		<?php
        }
    } ?>     	     		
           <section>
         <h3>Supprimer dans une autre table</h3>
    	<?php echoSelectNav($idcom); ?>
    	</section> 
    	</div>  
    </main>
        <?php include_once('inc/footer.php');?>
</body>

</html>
