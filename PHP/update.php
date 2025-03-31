<?php
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");

if(isset($_GET['table'])) {
	$arr = filterArray($_GET);
	$table = $arr['table'];
	unset($arr['table']);
	$pkarray = getPrimaryKeys($idcom, $table);
	foreach($pkarray as $key)
		$where[]="$key='$arr[$key]'";
	$whereString = implode(' AND ', $where);
	//echo $whereString;
	//var_dump($pkarray);
}
if(isset($_POST['table'])) {
	$_POST = filterArray($_POST);
	$table = $_POST['table'];
	unset($_POST['table']);

	foreach($_POST as $key => $value) {
		if($value)
			$updatearray[] = "$key='$value'";
	}
	$s = implode(', ', $updatearray);
	$requete = 'UPDATE '.$table.' SET '. $s . ' WHERE '.$whereString ;
	echo $requete;
	var_dump($_POST);
}
?>
 
<html>

<head>
    <title>Update - Chris Kindle</title>
</head>

<body>
	<?php include('inc/header.php'); ?>	
    <main>
	<form method="POST" action="">
	<input type="hidden" name="table" value="<?php echo $table; ?>">
	<?php
	foreach($arr as $key => $value) {		
		if(in_array($key, $pkarray)) {
			echo "<p><strong>$key : $value</strong></p>";
		}
		else {
			echo '<label for="'.$key.'">'.$key.': </label>';
			echo '<input type=text name="'.$key.'"placeholder="'.$value.'"><br>';
		}
	}
	?>
	<input type="submit" name="" value="Modifier">
	</form>
    </main>
</body>

</html>
