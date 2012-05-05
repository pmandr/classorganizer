<?php
/**
 * Funções genéricas
 */

require_once('connection.php');

// Ações a serem tomadas nas páginas
define('UPDATE', 0); // Executa uma query UPDATE
define('INSERT', 1); // Executa uma query INSERT
define('EDIT', 2);   // Edita um registro (com form)
define('DELETE', 3); // Executa uma query DELETE
define('SELECT', 4); // Seleciona os registros e um form para adicionar items

/**
 * Define a ação a ser executada de forma genérica (via variáveis GET e POST)
 */
function getAction() {
	$action = SELECT; // Padrão
	if (post('action') == 'new')
		$action = INSERT;
	else if (post('action') == 'edit')
		$action = UPDATE;
	else if (isset($_GET['action'])) {
		if ($_GET['action'] == 'delete')
			$action = DELETE;
		else if ($_GET['action'] == 'edit')
			$action = EDIT;
	}
	return $action;
}

function post($name) {
	if (isset($_POST[$name]))
		return $_POST[$name];
	return '';
}

/**
 * Executa uma query com mysql_query e faz o tratamento de erros, além de guardar num log
 */
function sqlQuery($query){
	$ret = @mysql_query($query);
	file_put_contents('sql.log', strftime('%c').': '.$query . "\n\n", FILE_APPEND);
	if ($ret === false) {
		switch (mysql_errno()) {
			case 1062:
				$error = 'Entrada de valor duplicada!<br />Por favor, verifique os dados e tente novamente.';
				break;
			case 1452:
				$fk_fails = Array(
					'fk_loc' => 'Por favor, defina um local válido!',
					'fk_promotora' => 'Por favor, informe uma promotora'
				);
				$mysql_error = mysql_error();
				$error = false;
				// Pega cada mensagem e chave (chave = nome da foreign key) do array $fk_fails
				foreach ($fk_fails as $key => $msg) {
					// Verifica se a chave $key está na mensagem $mysql_error (o MySQL insere o nome da chave no erro)
					if (strstr($mysql_error, $key)) {
						$error = $msg;
						break;
					}
				}
				if ($error) {
					$error = '<strong>Erro!</strong><br />'.$error;
					break;
				}
			default:
				$error = '<div><em>SQL Error: </em> '.mysql_errno().': '.mysql_error().'</div>';
		}
		die($error.'<br /><a href="javascript:history.go(-1)">Voltar à página anterior</a>');
	}
	return $ret;
}

