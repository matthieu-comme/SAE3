<?php
session_start();
if(isset($_POST['deco'])) {
	session_unset();
	session_destroy();
}
if(!isset($_SESSION['user']))
	header('Location: login.php');
else
	echo "PSEUDO : ".$_SESSION['user'];
