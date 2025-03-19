<?php
require_once "connexoci.inc.php";
require_once "functions.php";
$idcom = connexoci("myparam");
?>
 
<html>

<head>
    <title>Insertion - Chris Kindle</title>
    <link href="insert.css" rel="stylesheet">
</head>

<body>
	<?php include('header.php'); ?>
    <main>
    <?php if (isset($_GET["table"])) {
        $requete = "SELECT * FROM " . $_GET["table"];
        $stid = oci_parse($idcom, $requete);
        if (!$stid) {
            echo "Erreur lors de la préparation de requête";
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
	    	<form method="GET" action="">
	    	    <h1>Insert dans <?php echo $_GET["table"]; ?></h1>
		 <?php 
		    $fkarr = foreignKeys($idcom, $_GET['table']);
      		foreach ($cols as $row) {
      			if(isForeignKey($row['name'], $fkarr)) 
      				createFKInput($row, $fkarr, $idcom);
			else 
				createInput($row);
		}
      	?>                
		    <input type="submit" name="submit" value="Insert">
		</form>
		<?php
        }
    } ?>     	     		
            <form method="GET" action="">
                <h3>Choix de la table</h3>
                <select name="table">
                <?php
                $requete =
                    "SELECT table_name FROM user_tables ORDER BY table_name";
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
        </div>
    </main>
</body>

</html>
