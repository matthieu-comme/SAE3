<?php
if(isset($_POST['submit'])) {
	var_dump($_POST);

}
?>

<html>
<body>
<form method="post" action="">
<input type="text" name="t1" placeholder="test1">
<input type="text" name="t2" placeholder="test2">
<input type="text" name="t3" placeholder="test3">
<input type="text" name="t4" placeholder="test4">
<input type="text" name="t5" value="value5">
<input type="submit" name="submit" value="Envoyer">
</form>
</body>
</html>
