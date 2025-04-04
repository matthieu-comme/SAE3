<?php
session_start();
if (isset($_POST['deco'])) { // si le bouton "déconnecter" a été cliqué
	session_unset();
	session_destroy();
}
if (!isset($_SESSION['pseudo'])) // si non connecté, redirection auto
	header('Location: login.php');
