<?php
function echoTableOCI($stid, $table='') { 
	echo '<table class=”sortTable” border="1">'."\n";
	$nb_col = oci_num_fields($stid);
	echo "<thead>\n<tr>";
	for ($i = 1; $i <= $nb_col; $i++) {
  		$nom = oci_field_name($stid, $i);
        		echo '<th>'. $nom.'</th>';
    	}
    	echo '<th>Modifier</th>';
    	echo "\n</tr>\n</thead>\n<tbody>";
	while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
		echo "<tr>";
		foreach ($row as $key => $value) {
			echo "<td>" . ($value !== null ? htmlentities($value, ENT_QUOTES) : "") . "</td>";
			$lien[] = "$key=$value";
		}
		$s = implode('&', $lien);
		unset($lien);
		echo '<td><a href="update.php?table='.$table.'&'.$s.'"><i class="fa fa-pencil"></i></a></td>';
		echo "</tr>\n";
	}
	echo "</tbody>\n</table>\n";
}
function echoTableFetchAll($arr, $class = '', $id = '') { // arr est la sortie d'un oci_fetch_all avec OCI_FETCHSTATEMENT_BY_ROW
	echo '<table class="'.$class.'" id="'.$id.'" border="1">';
	$nb_col = count($arr[0]);
	echo "<thead>\n<tr>";
	foreach ($arr[0] as $attr => $k) {
        		echo '<th>'. $attr.'</th>';
    	}
	foreach ($arr as $attr => $k) {
		echo '<tr>';
		foreach($k as $value) 
			echo "<td>$value</td>";
		echo '</tr>';
	}
	echo "</tbody>\n</table>\n";
}
function echoTable($arr, $class = '', $id = '') { // entete du tableau = $arr[0]
	echo '<table class="'.$class.'" id="'.$id.'" border="1">';
	$nb_col = count($arr[0]);
	$nb_li = count($arr);
	echo '<thead><tr>';
	for ($i = 0; $i < $nb_col; $i++) {
  		$nom = $arr[0][$i];
        		echo '<th>'. $nom.'</th>';
    	}
    	echo '</tr></thead><tbody>';
	for ($i = 1; $i < $nb_li; $i++) {
		echo "<tr>\n";
		foreach ($arr[$i] as $value) 
			echo "<td>" . ($value !== null ? htmlentities($value, ENT_QUOTES) : "") . "</td>\n";
		echo "</tr>\n";
	}
	echo '</tbody></table>';
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
function getKeys($idcom, $requete) {
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
function getPrimaryKeys($idcom, $table) { // retourne le nom des clés primaires de table
	$requete = "SELECT cols.column_name FROM all_constraints cons, all_cons_columns cols WHERE cols.table_name = '".strtoupper($table)."' AND cons.constraint_type = 'P' AND cons.constraint_name = cols.constraint_name AND cons.owner = cols.owner ORDER BY cols.table_name, cols.position";
	$arr = getKeys($idcom, $requete);
	return $arr['COLUMN_NAME'];
}

function getForeignKeys($idcom, $table) { // pareil pour les fk
	$requete = "SELECT UCC2.COLUMN_NAME AS FK, UCC.TABLE_NAME, UCC.COLUMN_NAME FROM (SELECT TABLE_NAME, CONSTRAINT_NAME, R_CONSTRAINT_NAME, CONSTRAINT_TYPE FROM USER_CONSTRAINTS) UC,       (SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME FROM USER_CONS_COLUMNS) UCC, (SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME FROM USER_CONS_COLUMNS) UCC2 WHERE UC.R_CONSTRAINT_NAME = UCC.CONSTRAINT_NAME AND UC.CONSTRAINT_NAME = UCC2.CONSTRAINT_NAME AND uc.constraint_type = 'R' AND UC.TABLE_NAME = '".strtoupper($table)."'";
	return getKeys($idcom, $requete);       		
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
	$type = $row['type'];
	echo '<label for="'.$name.'">'."$type longueur=$size $name : ".'</label>';
	switch($type) {
		case 'NUMBER':
			echo '<input type="number" name="'.$name.'">';			
			break;
		case 'VARCHAR2':
			echo '<input type="text" name="'.$name.'" pattern=".{0,'.$size.'}">';
			break;
		case 'CHAR':
			echo '<input type="text" name="'.$name.'" pattern=".{'.$size.'}">';
			break;
		case 'DATE':
			echo '<input type="date" name="'.$name.'">';
			break;
	}
	echo "<br>\n";
}

function createFKInput($row, $fkarr, $idcom) { // cree select pour cle etrangere
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
        	echo '<select name="'.$name.'">';
        	echo "<option></option>\n";
        	while ($row = oci_fetch_array($stid)) {
		echo '<option>'.$row[0]."</option>\n";
	}
	echo "</select><br>\n";
}
function displayError($e) { // affiche message d'erreur
	$msg = $e['message'];
	var_dump($msg);
	$arr = preg_split('/[:(]/', trim($msg));
	$s = preg_replace('/".*"\./','', $arr[1]);
	echo $s;
	
}
function filterString($s) { // retourne la chaine filtrée
	$s = trim($s);
	$s = preg_replace("/[;']/",'', $s);
	$s = filter_var($s, FILTER_SANITIZE_SPECIAL_CHARS);
	return $s;
}
function filterArray($arr) { // retourne le tableau filtré
	foreach($arr as $key => $value) {
		$key = filterString($key);
		$value = filterString($value);
		$res["$key"] = $value;
	}
	return $res;
}
function addHistorique($requete, $pseudo) { // ajoute la requete à l'historique
	if (!file_exists("historique.txt")) {
	echo "Je ne trouve pas l'historique...";
	return;
	}
	$fichier = fopen("historique.txt","a");
	if ($fichier == null) {
		echo "erreur lors de l'ouverture du fichier en mode 'a'";
		return;
	}
	if(!flock($fichier,2)) {
		echo "erreur de verrouillage mode 2";
		return;
	}
	$ligne = date("Y-m-d H:i:s").';;;'.$pseudo.';;;'. $requete."\n";
	if(!fwrite($fichier, $ligne)) {
		echo "erreur lors de l'ecriture";
		return;
	}

	if(!flock($fichier,3)) {
		echo "erreur de deverrouillage";
		return;
	}
	if(!fclose($fichier)) {
		echo "erreur lors de la fermeture du fichier";
		return;
	}
}




