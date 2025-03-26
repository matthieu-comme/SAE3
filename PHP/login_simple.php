<?php
session_start();

include('header.php');
if (isset($_POST['connexion'])) {
    var_dump($_POST['connexion']);
    if ($_POST['connexion'] == 'co')
        $_SESSION['name'] = "Patrick";
    else if ($_POST['connexion'] == 'deco') {
        session_unset();
        session_destroy();
    }
    header('Location: /login.php');
}
?>

<form method="POST" action="">
    <input type="submit" name="connexion" value="co">
    <input type="submit" name="connexion" value="deco">
</form>
