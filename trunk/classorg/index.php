<html>
    <?php require_once('controllers/header.php'); ?>
	
    <body>
		<h1>Class Organizer V0</h1><br/><br/>
		<?php// if (isset($_COOKIE['name'])) echo '<h1>Olá ' . $_COOKIE['name'].'</h1>'; ?>
	<?php // chdir(chdir(realpath(dirname(__FILE__).'/../../../somewhere/')));
			echo (realpath(dirname(__FILE__).'/../')) ;
			die() ;
			?>
		<?php
			if(!isset($_SESSION['login'])) require_once 'controllers/require_login.php';
		?>
    </body>
</html>
