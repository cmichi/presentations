<?php
$pass_curr = "'";

$pass_curr = stripslashes( $pass_curr );
$pass_curr = mysql_real_escape_string( $pass_curr ); 
$pass_curr = md5( $pass_curr ); 

$qry = "SELECT password FROM `users` WHERE user='admin' AND password='$pass_curr';";

echo $qry;
echo "\n";
