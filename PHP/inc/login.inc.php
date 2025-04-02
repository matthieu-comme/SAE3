<?php
session_start();
if(isset($_POST['deco'])) {
	session_unset();
	session_destroy();
}
if(!isset($_SESSION['pseudo']))
	header('Location: login.php');
