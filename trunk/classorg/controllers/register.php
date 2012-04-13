<?php
require_once 'db_connection.php';


$result = mysql_query("
	INSERT INTO student(name, email, password)
	VALUES(".$_POST['login'].",".$_POST['password']);

if(0==count($result)) die("Não foi encontrado o usuário");
die("here1".print_r($result));

while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
    printf("ID: %s  Name: %s", $row[0], $row[1]);  
}

mysql_free_result($result);
setcookie('name',$_POST['name'],time()+60);

