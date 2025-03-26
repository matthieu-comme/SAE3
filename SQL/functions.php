<?php
function echoTable2D($stid) {	
	echo '<table border="1">';
	$nb_col = oci_num_fields($stid);
	echo '<tr>';
	for ($i = 1; $i <= $nb_col; $i++) {
  		$nom = oci_field_name($stid, $i);
        		echo '<th>'. $nom.'</th>';
    	}
    	echo '</tr>';
	while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
		echo "<tr>\n";
		foreach ($row as $item) 
			echo "<td>" . ($item !== null ? htmlentities($item, ENT_QUOTES) : "") . "</td>\n";
		echo "</tr>\n";
	}
	echo '</table>';
}

function getColsInfo($stid) {
	$nbcols = oci_num_fields($stid);
       	for ($i = 0; $i < $nbcols; $i++) {
    		$cols[$i]['name']  = oci_field_name($stid, $i+1);
    		$cols[$i]['type']  = oci_field_type($stid, $i+1);
    		$cols[$i]['size']  = oci_field_size($stid, $i+1);
	}
	return $cols;
}
function foreignKeys($idcom, $table) {
	$requete = "SELECT UCC2.COLUMN_NAME AS FK, UCC.TABLE_NAME, UCC.COLUMN_NAME FROM (SELECT TABLE_NAME, CONSTRAINT_NAME, R_CONSTRAINT_NAME, CONSTRAINT_TYPE FROM USER_CONSTRAINTS) UC,       (SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME FROM USER_CONS_COLUMNS) UCC, (SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME FROM USER_CONS_COLUMNS) UCC2 WHERE UC.R_CONSTRAINT_NAME = UCC.CONSTRAINT_NAME AND UC.CONSTRAINT_NAME = UCC2.CONSTRAINT_NAME AND uc.constraint_type = 'R' AND UC.TABLE_NAME = '$table'";
	$stid = oci_parse($idcom, $requete);
	if (!$stid) {
           		echo "Erreur lors de la préparation de requête";
        	}
        	$r = oci_execute($stid);
        	if (!$r) {
            	echo 'Erreur lors de l\'execution de la requête';
        	}
        	oci_fetch_all($stid, $arr);
        	return $arr;
        		
}

function checkConstraints($idcom, $table) { // sauf not null
	$requete = "SELECT constraint_name, search_condition_vc FROM all_constraints WHERE constraint_type='C' AND search_condition_vc NOT LIKE '% NOT NULL%' AND table_name = '$table'";
	$stid = oci_parse($idcom, $requete);
	if (!$stid) {
	           	echo "Erreur lors de la préparation de requête";
	}
	$r = oci_execute($stid);
	if (!$r) {
		echo 'Erreur lors de l\'execution de la requête';
	}
	oci_fetch_all($stid, $arr);
	return $arr;
}

function isForeignKey($field, $arr) { // $arr = tab de fk
	return in_array($field, $arr['FK']);
}

function createInput($row) // row = une ligne du tableau cols
{
	$name = $row['name'];
	$size = $row['size'];
	echo '<label for="'.$name.'">'.$name.'</label>';
	switch($row['type']) {
		case 'NUMBER':
			echo ' (nombre) <input type="number" name="'.$name.'">';			
			break;
		case 'VARCHAR2':
			echo ' (varchar) <input type="text" name="'.$name.'" pattern=".{0,'.$size.'}">';
			break;
		case 'CHAR':
			echo ' (char) <input type="text" name="'.$name.'" pattern=".{'.$size.'}">';
			break;
		case 'DATE':
			echo ' (date) <input type="date" name="'.$name.'">';
			break;
	}
	echo "<br>";
}

function createFKInput($row, $fkarr, $idcom) {
	$name = $row['name'];
	$size = $row['size'];
	$i = array_search($name, $fkarr['FK']);
	$ref_col = $fkarr['COLUMN_NAME'][$i];
	$ref_table = $fkarr['TABLE_NAME'][$i];
	$requete = "SELECT $ref_col FROM $ref_table ORDER BY $ref_col";
	$stid = oci_parse($idcom, $requete);
        	if (!$stid) {
            	echo "Erreur lors de la préparation de requête";
        	}
        	$r = oci_execute($stid);
        	if (!$r) {
            	echo 'Erreur lors de l\'execution de la requête';
            
        	}
        	echo '<label for="'.$name.'">'.$name.'</label>';
        	echo '<select>';
        	while ($row = oci_fetch_array($stid)) {
		echo '<option>'.$row[0].'</option>';
	}
	echo '</select><br>';
}
function displayError($e) {
	$arr = preg_split('/[:(]/', trim($e['message']));
	echo $arr[1];
}
