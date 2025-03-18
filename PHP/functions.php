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

function createInput($row) // row = une ligne de cols
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
