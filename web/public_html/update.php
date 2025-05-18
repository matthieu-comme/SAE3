<?php
require_once('inc/login.inc.php');
require_once('inc/connexoci.inc.php');
require_once('inc/functions.php');
$idcom = connexoci("inc/myparam");

if (isset($_GET['table'])) {
	$arr = filterArray($_GET);
	$table = $arr['table'];
	unset($arr['table']);
	$pkarray = getPrimaryKeys($idcom, $table);
	if (!$pkarray) // si la table n'existe pas
		header('Location: index.php');
	foreach ($pkarray as $key)
		$where[] = "$key='$arr[$key]'";
	$whereString = implode(' AND ', $where);
} else
	header('Location: index.php');
?>

<!DOCTYPE HTML>
<html>

<head>
	<title>Update - Chris Kindle</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="style/gpt.css">
	<meta charset='utf-8'>
</head>

<body>
	<?php include('inc/header.php'); ?>
	<main>
		<div id='update_form'>
			<form method="POST" action="">
				<fieldset>
					<legend>UPDATE</legend>
					<?php
					// update du tuple
					if (isset($_POST['table'])) {
						$_POST = filterArray($_POST);
						$table = $_POST['table'];
						unset($_POST['table']);
						// preparation de la requête
						foreach ($_POST as $key => $value) {
							if ($value) // ignore les champs non modifiés
								$updatearray[] = "$key='$value'";
						}
						$s = implode(', ', $updatearray);
						$requete = 'UPDATE ' . $table . ' SET ' . $s . ' WHERE ' . $whereString;
						$stid = oci_requete($idcom, $requete);
						if ($stid) {
							addHistorique($table, 'Modifier', $s . ' WHERE ' . $whereString);
							echo '<p class="msg">Modification réussie. Redirection en cours...</p>';
							echo "<meta http-equiv='refresh' content='2;url=index.php'>";
						}
					}
					?>
					<input type="hidden" name="table" value="<?php echo $table; ?>">
					<?php
					foreach ($arr as $key => $value) {
						if (in_array($key, $pkarray)) { // clé primaire, non modifiable
							echo "<p><strong>$key : $value</strong></p>";
						} else {
							echo '<label for="' . $key . '">' . $key . ': </label>';
							echo '<input type=text name="' . $key . '" id="' . $key . '" placeholder="' . $value . '"><br>';
						}
					}
					?>
					<input type="submit" name="" value="Modifier">
				</fieldset>
			</form>
		</div>
	</main>
	<?php include_once('inc/footer.php'); ?>
</body>

</html>