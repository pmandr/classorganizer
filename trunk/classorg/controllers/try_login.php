<?php
require_once 'db_connection.php';
//require_once 'header.php';

$result = mysql_query("
	SELECT email, password 
	FROM student 
	WHERE email= ".$_POST['login']." 
	AND password=".$_POST['password']);

if(0==count($result)) die("Não foi encontrado o usuário");
die("here1".print_r($result));

while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
    printf("ID: %s  Name: %s", $row[0], $row[1]);  
}

mysql_free_result($result);

