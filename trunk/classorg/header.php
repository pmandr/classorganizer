<?php
/**
 * Cabeçalho da página
 */
header('Content-type:text/html; charset=utf-8');
?>
<html>
<head>
	<title>Class Organizer - Organizador de Grade Horária</title>
	<link rel="stylesheet" href="style.css" media="all" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="general/general.css" >
	<script type="text/javascript" src="general/functions.js"></script>
	
<!--	below : jquery stuff-->
	<link type="text/css" href="js/jquery-ui-1.8.18.custom/css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="Stylesheet" />
	<script type="text/javascript" src="js/jquery-ui-1.8.18.custom/js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.18.custom/js/jquery-ui-1.8.18.custom.min.js"></script>
</head>
<body>
<h1>Class Organizer - Organizador de Aulas</h1>
<iframe src="https://www.facebook.com/plugins/like.php?href=YOUR_URL"
        scrolling="no" frameborder="0"
        style="border:none; width:450px; height:80px">
</iframe>

      
<?php
$_SESSION['user']='Paulo';
if (isset($_SESSION['user'])){
	echo 'Logado como: <em>'.$_SESSION['user'].'</em>, <a href="./login.php?action=logout">logout</a>';
	?>
        
	<div id="menu">
		<ul>
			<li><a href="lutador.php">Lutadores</a></li>
			<li><a href="categoria.php">Categorias</a></li>
			<li><a href="local.php">Locais</a></li>
			<li><a href="organizacao.php">Organizações</a></li>
			<li><a href="patrocinadora.php">Patrocinadoras</a></li>
			<li><a href="evento.php">Eventos</a></li>
			<li><a href="cliente.php">Clientes</a></li>
		</ul>
	</div>
<?php
}
else { // acesso para clientes
	echo '<div>Olá cliente, seja bem-vindo!</div>';
}
?>
