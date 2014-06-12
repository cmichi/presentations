<?php
error_reporting(E_ALL);

$token = sha1($_SERVER['HTTP_USER_AGENT']);

if (isset($_POST['token'])) {
	if ($token == $_POST['token']) { ?>
		<h1>Succesful Leak!</h1>
	</php
	<?php } else { ?>
		<h1>Possible CSRF!</h1>
	<?php
	}
} else {
?>
	<h1>Hello Leaker!</h1>

	<form method="POST" action="#">
		<input type="hidden" name="token" value="<?= $token; ?>" />
		<textarea name="msg" cols="15" rows="5"></textarea>

		<input type="submit" value="Leak it!" />
	</form>
<?php
}
