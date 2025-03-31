<?php
function connexoci($param)
{
    require($param . ".inc.php");
    $idcom = oci_connect(MYUSER, MYPASS, MYHOST);
    if (!$idcom) {
        echo "<script type=text/javascript>";
        echo "alert('Connexion Impossible à oracle2')</script>";
        echo "connexion impossible à oracle2";
    }
    return $idcom;
}
