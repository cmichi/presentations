<?php
$dbname = 'advanced-csrf';
$dbuser = 'root';
$dbpass = '';
$dbserver = 'localhost';

mysql_connect($dbserver, $dbuser, $dbpass) or
   die("Could not connect: " . mysql_error());
mysql_select_db($dbname);
