<html>
    <?php require_once('controllers/header.php'); ?>
	
    <body>
		<?php
			if(!isset($_SESSION['login'])) require_once 'controllers/require_login.php';
		?>
    </body>
</html>
