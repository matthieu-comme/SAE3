<?php
// les fonctions avec pour paramètre $stid sont à utiliser après $stid = oci_requete(... , ...);
function echoTableOCI($stid, $table = '') // affiche une table sous le bon format pour l'index
{
	echo '<table class="sortTable" id="' . $table . '_table" border="1">' . "\n";
	$nb_col = oci_num_fields($stid);
	echo "<thead>\n<tr>";
	for ($i = 1; $i <= $nb_col; $i++) { // nom des colonnes
		$nom = oci_field_name($stid, $i);
		echo '<th>' . $nom . '</th>';
	}
	echo '<th>Modifier</th>';
	echo "\n</tr>\n</thead>\n<tbody>";
	while ($row = oci_fetch_array($stid, OCI_ASSOC + OCI_RETURN_NULLS)) { // remplit la ligne
		echo "<tr>";
		foreach ($row as $key => $value) {
			echo "<td>" . ($value !== null ? htmlentities($value, ENT_QUOTES) : "") . "</td>";
			$lien[] = "$key=$value";
		}
		$s = implode('&', $lien); // recrée le lien pour modifier le tuple
		unset($lien);
		echo '<td><a href="update.php?table=' . $table . '&' . $s . '"><i class="fa fa-pencil"></i></a></td>';
		echo "</tr>\n";
	}
	echo "</tbody>\n</table>\n";
}
function echoTableFetchAll($arr, $class = '', $id = '') // arr est la sortie d'un oci_fetch_all avec OCI_FETCHSTATEMENT_BY_ROW
{
	echo '<table class="' . $class . '" id="' . $id . '" border="1">';
	$nb_col = count($arr[0]);
	echo "<thead>\n<tr>";
	foreach ($arr[0] as $attr => $k) {
		echo '<th>' . $attr . '</th>';
	}
	foreach ($arr as $attr => $k) {
		echo '<tr>';
		foreach ($k as $value)
			echo "<td>$value</td>";
		echo '</tr>';
	}
	echo "</tbody>\n</table>\n";
}
function echoTable($arr, $class = '', $id = '') // entete du tableau = $arr[0]
{
	echo '<table class="' . $class . '" id="' . $id . '" border="1">';
	$nb_col = count($arr[0]);
	$nb_li = count($arr);
	echo '<thead><tr>';
	for ($i = 0; $i < $nb_col; $i++) {
		$nom = $arr[0][$i];
		echo '<th>' . $nom . '</th>';
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

function echoSelectNav($idcom) // affiche un menu select avec toutes les tables
{
	$requete = "SELECT table_name FROM user_tables WHERE table_name <> 'LUTIN' ORDER BY table_name";
	$stid = oci_requete($idcom, $requete);
	if ($stid) { ?>
		<form method="GET" action="">
			<fieldset>
				<select name="table">
				<?php

				while ($row = oci_fetch_array($stid)) {
					echo "<option value='" . $row[0] . "'>" . $row[0] . "</option>";
				}
			}

				?>
				</select>
				<input type="submit" name="submit" value="Choisir">
			</fieldset>
		</form>
	<?php
}

function getColsInfo($stid) // retourne un tableau contenant les infos pertinentes sur les colonnes d'une table
{
	$nbcols = oci_num_fields($stid);
	for ($i = 0; $i < $nbcols; $i++) {
		$cols[$i]['name']  = oci_field_name($stid, $i + 1);
		$cols[$i]['type']  = oci_field_type($stid, $i + 1);
		$cols[$i]['size']  = oci_field_size($stid, $i + 1);
	}
	return $cols;
}
function getKeys($idcom, $requete) // utilisée par les 2 fonctions suivantes
{
	$stid = oci_requete($idcom, $requete);
	if ($stid) {
		oci_fetch_all($stid, $arr);
		return $arr;
	} else
		return false;
}
function getPrimaryKeys($idcom, $table) // retourne le nom des clés primaires de table
{
	$requete = "SELECT cols.column_name FROM all_constraints cons, all_cons_columns cols WHERE cols.table_name = '" . strtoupper($table) . "' AND cons.constraint_type = 'P' AND cons.constraint_name = cols.constraint_name AND cons.owner = cols.owner ORDER BY cols.table_name, cols.position";
	$arr = getKeys($idcom, $requete);
	return $arr['COLUMN_NAME'];
}

function getForeignKeys($idcom, $table) // pareil pour les fk
{
	$requete = "SELECT UCC2.COLUMN_NAME AS FK, UCC.TABLE_NAME, UCC.COLUMN_NAME FROM (SELECT TABLE_NAME, CONSTRAINT_NAME, R_CONSTRAINT_NAME, CONSTRAINT_TYPE FROM USER_CONSTRAINTS) UC,       (SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME FROM USER_CONS_COLUMNS) UCC, (SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME FROM USER_CONS_COLUMNS) UCC2 WHERE UC.R_CONSTRAINT_NAME = UCC.CONSTRAINT_NAME AND UC.CONSTRAINT_NAME = UCC2.CONSTRAINT_NAME AND uc.constraint_type = 'R' AND UC.TABLE_NAME = '" . strtoupper($table) . "'";
	return getKeys($idcom, $requete);
}

function checkConstraints($idcom, $table) // finalement j'utilise pas cette fonction
{
	$requete = "SELECT constraint_name, search_condition_vc FROM all_constraints WHERE constraint_type='C' AND search_condition_vc NOT LIKE '% NOT NULL%' AND table_name = '$table'";
	return getKeys($idcom, $requete);
}

function isForeignKey($field, $arr) // $arr = tab de fk
{
	return in_array($field, $arr['FK']);
}

function createInput($row) // row = une ligne du tableau cols, crée un input adapté
{
	$name = $row['name'];
	$size = $row['size'];
	$type = $row['type'];
	echo '<div><label for="' . $name . '">' . "$name : " . '</label>';
	switch ($type) {
		case 'NUMBER':
			echo '<input type="number" name="' . $name . '">';
			break;
		case 'VARCHAR2':
			echo '<input type="text" name="' . $name . '" pattern=".{0,' . $size . '}">';
			break;
		case 'CHAR':
			echo '<input type="text" name="' . $name . '" pattern=".{' . $size . '}">';
			break;
		case 'DATE':
			echo '<input type="date" name="' . $name . '">';
			break;
	}
	echo "<br><i>$type";
	if ($type === 'VARCHAR2' || $type === 'CHAR') echo " longueur=$size";
	echo "</i><br></div><br>\n";
}

function createFKInput($row, $fkarr, $idcom) // crée un select pour les fk
{
	$name = $row['name'];
	$i = array_search($name, $fkarr['FK']);
	$ref_col = $fkarr['COLUMN_NAME'][$i]; // colonne de référence
	$ref_table = $fkarr['TABLE_NAME'][$i]; // table de référence
	$requete = "SELECT $ref_col FROM $ref_table ORDER BY $ref_col";
	$stid = oci_requete($idcom, $requete);
	if ($stid) {
		echo '<label for="' . $name . '">' . $name . '</label>';
		echo '<select name="' . $name . '">';
		echo "<option></option>\n";
		while ($row = oci_fetch_array($stid)) {
			echo '<option>' . $row[0] . "</option>\n";
		}
		echo "</select><br>\n";
	}
}
function displayError($e) // affiche message d'erreur
{
	$msg = $e['message'];
	$arr = preg_split('/[:(]/', trim($msg));
	$s = preg_replace('/".*"\./', '', $arr[1]);
	echo $s;
}

function oci_requete($idcom, $requete) // retourne stid si la requête a fonctionné, faux sinon, avec affichage du message d'erreur
{
	$stid = oci_parse($idcom, $requete);
	if (!$stid) {
		echo '<p class="error">Erreur lors de la préparation de requête';
		$e = oci_error();
		displayError($e);
		echo '</p>';
		return false;
	}
	$r = oci_execute($stid);
	if (!$r) {
		echo '<p class="error">Erreur lors de l\'execution de la requête : ';
		$e = oci_error($stid);
		displayError($e);
		echo '</p>';
		return false;
	}
	return $stid;
}

function filterString($s) // retourne la chaine "nettoyée"
{
	$s = trim($s);
	$s = preg_replace("/[;']/", '', $s); // contre injections SQL
	$s = filter_var($s, FILTER_SANITIZE_SPECIAL_CHARS); // et HTML
	return $s;
}
function filterArray($arr) // retourne le tableau "nettoyé"
{
	foreach ($arr as $key => $value) {
		$key = filterString($key);
		$value = filterString($value);
		$res["$key"] = $value;
	}
	return $res;
}
function addHistorique($table, $action, $infos) // ajoute la requete à l'historique
{
	if (!file_exists("historique.txt")) {
		echo "Je ne trouve pas l'historique...";
		return;
	}
	$fichier = fopen("historique.txt", "a");
	if ($fichier == null) {
		echo "erreur lors de l'ouverture du fichier en mode 'a'";
		return;
	}
	if (!flock($fichier, 2)) {
		echo "erreur de verrouillage mode 2";
		return;
	}
	global $_SESSION;
	$ligne = date("Y-m-d H:i:s") . ';;;' . $_SESSION['pseudo'] . ';;;' . $table . ';;;' . $action . ';;;' . $infos . "\n";
	if (!fwrite($fichier, $ligne)) {
		echo "erreur lors de l'ecriture";
		return;
	}

	if (!flock($fichier, 3)) {
		echo "erreur de deverrouillage";
		return;
	}
	if (!fclose($fichier)) {
		echo "erreur lors de la fermeture du fichier";
		return;
	}
}
