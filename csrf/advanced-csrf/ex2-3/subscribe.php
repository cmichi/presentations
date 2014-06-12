<?php
$request_body = file_get_contents('php://input');
$data = json_decode($request_body);

if ($data == NULL):
	echo 'Ung&uuml;ltiges JSON in Anfrage!';
else:
	echo 'Consider yourself subscribed!';
endif;

