<?php
require('../mysql.inc.php');

$request_body = file_get_contents('php://input');
$data = json_decode($request_body);

if ($data == NULL):
	echo 'Ung&uuml;ltiges JSON in Anfrage!';
else:
	if ($data->action == 'reset-voting' && $data->value == 'all') {
		echo "executing reset&hellip;";
		mysql_query("DELETE FROM votes") or die(mysql_error());
	}
endif;
