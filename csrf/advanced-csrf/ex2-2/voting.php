<?php
session_start();
require_once('../mysql.inc.php');

/* generate token */
$_SESSION['token'] = md5(uniqid(rand(), true));
?>
<!doctype html>
<head>
  <meta charset="utf-8">

  <title>The Fruit Voting</title>

  <link rel="stylesheet" href="./css/style.css">
  <script src="./js/jquery-1.11.1.min.js"></script>
</head>

<body>

  <div id="container">
    <h1>The Fruit Voting</h1>

    <a href="./index.php">Home</a>
    <a href="./voting.php">Voting</a>

    <div id="main" role="main">
	<div class="content">
		<h2>Please vote:</h2>

		<form method="POST" name="frmVote" action="./vote.php">
			<input type="hidden" name="token" value="<?= $_SESSION['token']; ?>" />

			<select name="for">
				<option value="pineapple">Pineapple</option>
				<option value="banana">Banana</option>
			</select>

			<input type="submit" value="Vote!" />
		</form>
	</div>
    </div><!--! end of #main -->

    <footer>

    </footer>
  </div> <!--! end of #container -->
  
</body>
</html>
