<?php

$link = mysql_connect('localhost', 'root', '');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}

$link = mysql_select_db('classorganizer'); 
if (!$link) {
    die('Could not connect to DB: ' . mysql_error());
}

echo 'Connected successfully';

//mysql_close($link);